within MyLib;
model Wurf
  parameter Real g = -9.81;
  Real v(start = 30);
  Real phi(start = 3.14159 / 4);
  Real x;
  Real y;
equation
  der(v) = g * sin(phi);
  der(phi) = g / v * cos(phi);
  der(x) = v * cos(phi);
  der(y) = v * sin(phi);
end Wurf;