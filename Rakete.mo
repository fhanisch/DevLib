within DevLib;

model Rakete
  import DevLib.SIunits.*;
  parameter Mass m_0 = 2.9e6 "Startmasse";
  parameter MassFlowRate dm = 1.3e4 "Massenstrom";
  parameter Vel v_e = 2.6e3 "Austrittsgeschwindigkeit Treibstoff";
  Vel v;
  Mass m(start = m_0);
equation
  der(m) = -dm;
  m * der(v) = v_e * dm;
  annotation(
    Documentation(info = "
    <html>
      <head>
        <title>Rakete</title>
        <meta charset=\"utf-8\">
        <script type=\"text/x-mathjax-config\">
          MathJax.Hub.Config({
          tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}
          });
        </script>
        <script type=\"text/javascript\" async
          src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML\">
        </script>
        <style>
          body {
        		font-family: arial;
        		font-weight: bold;
        		font-size: 20px;
        		color: #2e8b57;
        	}
          h1 {
            color: #ffffff;
            background-color: #4169e1;
          	text-align: center;
          	font-size: 50px;
          	border-top: 2px solid #999999;
            border-bottom: 2px solid #999999;
          }
          #h2 {
            font-weight: bold;
          	color: #ffffff;
            background-color: #00cd66;
            padding: .2em .5em;
            margin-top: 1.5em;
            border-top: 2px solid #999999;
            border-bottom: 2px solid #999999;
          }
          #formel {
          	font-size: 22px;
          	color: #303030;
          }
          td {
          	border:1px solid white;
          	vertical-align:middle;
          }
        </style>
      </head>
      <body>
        <header>
          <h1>Rakete</h1>
        </header>
        <main>
          <h2 ID=\"h2\">Ansatz</h2>
          <p>Impuls.</p>
          <p ID=\"formel\">$$p=mv$$</p>
          <p>Die Kraft ist gleich der zeitlichen Änderung des Impulses.</p>
          <p ID=\"formel\">$$F=\\frac{dp}{dt}$$</p>
          <p ID=\"formel\">$$F=\\frac{d(mv)}{dt} = m \\frac{dv}{dt} + v \\frac{dm}{dt}$$</p>
        </main>
      </body>
    </html>"),
    experiment(StartTime = 0, StopTime = 150, Tolerance = 1e-06, Interval = 0.1));
end Rakete;
