within DevLib;

model Wurf
  constant Real g = 9.81;
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
      MathJax.Hub.Config({
  tex2jax: {inlineMath: [['$','$'], ['\(','\)']]}
});
    </script>
    <script type=\"text/javascript\" async
      src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML\">
    </script>
    <style>
      main,table {
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
      <h2 ID=\"h2\">Konstanten</h2>
      <table>
        <tr>
          <td ID=\"formel\">$g = 9.81 \\frac{m}{s^2}$</td> <td>...Fallbeschleunigung</td>        
        </tr>
      </table>
      <h2 ID=\"h2\">Parameter</h2>
      <table>
        <tr>
          <td ID=\"formel\">$v_0$</td>
          <td ID=\"formel\">$[\\frac{m}{s}]$</td>
          <td>...Startgeschwindigkeit</td>
        </tr>
      </table>
      <h2 ID=\"h2\">Zustandsgrößen</h2>
      <table>
        <tr>
          <td ID=\"formel\">$x$</td>
          <td ID=\"formel\">$[m]$</td>
          <td>...Ortskoordinate in x-Richtung</td>        
        </tr>
        <tr>
          <td ID=\"formel\">$y$</td>
          <td ID=\"formel\">$[m]$</td>
          <td>...Ortskoordinate in y-Richtung</td>
        </tr>
        <tr>
          <td ID=\"formel\">$v_x$</td>
          <td ID=\"formel\">$[\\frac{m}{s}]$</td>
          <td>...Geschwindigkeit in x-Richtung</td>        
        </tr>
        <tr>
          <td ID=\"formel\">$v_y$</td>
          <td ID=\"formel\">$[\\frac{m}{s}]$</td>
          <td>...Geschwindigkeit in y-Richtung</td>
        </tr>
      </table>
      <h2 ID=\"h2\">Gleichungen</h2>
      <p>Differentialgleichungssytem des schrägen Wurfs.</p>
      <p ID=\"formel\">
        \\begin{equation}
        \\dot{v}_x = 0 \\\
        \\dot{v}_y = -g \\\
        \\dot{x} = v_x \\\
        \\dot{y} = v_y
        \\end{equation}
      </p>
    </main>
  </body>
</html>"),
    experiment(StartTime = 0, StopTime = 5, Tolerance = 1e-06, Interval = 0.1));
end Wurf;
