within DevLib;

model Rakete

  parameter Real m_0 = 2.9e6 "Startmasse";
  parameter Real dm = 1.3e4 "Massenstrom";
  Real v;
  Real m(start=m_0);

equation

  der(m) = -dm;
  m*der(v) = v*dm;

  annotation(Documentation(info="
  <html>
    <head>
    
    </head>
    <body>
      <h1>Rakete</h1>
      <p>Test</p>
    </body>
  </html>
  "));
end Rakete;
