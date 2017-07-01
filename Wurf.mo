within DevLib;

model Wurf
  parameter Real g = 9.81;
  parameter Real v_0 = 30;
  Real x, y;
  Real v_x(start = v_0 * cos(3.14159 / 4));
  Real v_y(start = v_0 * sin(3.14159 / 4));
equation
  der(v_x) = 0;
  der(v_y) = -g;
  der(x) = v_x;
  der(y) = v_y;
  annotation(
    Documentation(info = "<html>
  <head>
    <title>Wurf</title>
    <meta charset=\"utf-8\">
    <script type=\"text/x-mathjax-config\">
      MathJax.Hub.Config({ TeX: { equationNumbers: {autoNumber: \"AMS\"} } });
    </script>
    <script type=\"text/javascript\" async
      src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML\">
    </script>
    <style>
      main {
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
      h2 {
      font-weight: bold;
      font-size: 25px;
      color: #ffffff;
      background-color: #00cd66;
      padding: .2em .5em;
      margin-top: 1.5em;
      border-top: 2px solid #999999;
      border-bottom: 2px solid #999999;
      }
      #formel {
      font-size: 60px;
      color: #303030;
      }
    </style>
  </head>
  
  <body>
    <header>
      <h1>Schräger Wurf</h1>
    </header>
    <main>
      <h2>Gleichungen</h2>
      <p>Differentialgleichungssytem des schrägen Wurfs.</p>
      <p ID=\"formel\">
        $$\dot{v}_x = 0$$
        $$\dot{v}_y = -g$$
        $$\dot{x} = v_x$$
        $$\dot{y} = v_y$$
      </p>
    </main>
  </body>
</html>"),
    experiment(StartTime = 0, StopTime = 5, Tolerance = 1e-06, Interval = 0.1));
end Wurf;
