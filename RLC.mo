within DevLib;
model RLC
  parameter Real U_0 = 1;
  parameter Real R = 1;
  parameter Real L = 0.1;
  parameter Real C = 0.01;
  Real i;
  Real u_a;
  Real u_b;
  Real u_c;
equation
  u_a = U_0;
  R*i = u_a - u_b;
  L*der(i) = u_b - u_c;
  i = C*der(u_c);
end RLC;
