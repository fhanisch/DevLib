model Wurf
  parameter Real g = 9.81;
  parameter Real v_0 = 30;
  Real x,y;
  Real v_x(start = v_0 * cos(3.14159 / 4));
  Real v_y(start = v_0 * sin(3.14159 / 4));
equation
  der(v_x) = 0;
  der(v_y) = -g;
  der(x) = v_x;
  der(y) = v_y;
end Wurf;
