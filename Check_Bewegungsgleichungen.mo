model Check_Bewegungsgleichungen
  import Modelica.Constants.*;
  parameter Real m = 1750;
  parameter Real J = 1800;
  parameter Real l = 1.4;
  parameter Real delta = pi/4;
  parameter Real f_x = 1500;

  Real x_1,y_1, x_2,y_2, x_3,y_3;
  Real v_x_1, v_y_1, v_x_2,v_y_2,  v_x_2_l,v_y_2_l, v_x_3,v_y_3;
  Real phi,w;
  Real beta;
  Real v1,v2,v3(start=0.0001);

  Real v_x_test,v_y_test;
  Real beta_test, beta_test2;

equation

  der(x_1) = v_x_1;
  der(y_1) = v_y_1;

  der(x_2) = v_x_2;
  der(y_2) = v_y_2;

  der(x_3) = v_x_3;
  der(y_3) = v_y_3;

  der(phi) = w;

  /* Ansatz 1 */
  m*der(v_x_1) = f_x*cos(phi+delta);
  m*der(v_y_1) = f_x*sin(phi+delta);
  v1 = sqrt(v_x_1^2+v_y_1^2);

  /* Ansatz 2 im Beschleunigten Bezugssystem */
  m*(der(v_x_2_l)-v_y_2_l*w) = f_x*cos(delta);
  m*(der(v_y_2_l)+v_x_2_l*w) = f_x*sin(delta);
  v2 = sqrt(v_x_2_l^2+v_y_2_l^2);
  v_x_2 = v_x_2_l*cos(phi)-v_y_2_l*sin(phi);
  v_y_2 = v_x_2_l*sin(phi)+v_y_2_l*cos(phi);

  /* Ansatz 3 im Beschleunigten Bezugssystem oder über Nomal -und Tangentialbeschleunigung */
  m*v3*(der(beta)+w) = f_x*sin(delta-beta);
  m*der(v3) = f_x*cos(delta-beta);
  v_x_3 = v3*cos(phi+beta);
  v_y_3 = v3*sin(phi+beta);

  /* Drallsatz für alle Ansätze */
  J*der(w) = l*f_x*sin(delta);

  /* Test */
  v_x_test = v_x_1*cos(-phi)-v_y_1*sin(-phi);
  v_y_test = v_x_1*sin(-phi)+v_y_1*cos(-phi);
  beta_test = atan(v_y_2_l/ (if v_x_2_l>=0 then max(v_x_2_l,0.001) else min(v_x_2_l,-0.001)));
  beta_test2 = asin(v_y_2_l/max(v2,0.01));//--> Berechnung von beta aus asin ist vorteilhafter

  annotation (experiment(
      StopTime=10,
      Interval=0.01,
      Tolerance=1e-08));
end Check_Bewegungsgleichungen;