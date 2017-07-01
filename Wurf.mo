within DevLib;
model Wurf
  import DevLib.SIunits.*;
  constant Real pi = 3.14159 "Kreiszahl pi";
  constant acc g = 9.81 "Fallbeschleunigung";
  parameter vel v_0 = 30 "Startgeschwindigkeit";
  parameter angle phi_0 = pi/4 "Startwinkel";
  dist x "Weg in x-Richtung";
  dist y "Weg in y-Richtung";
  vel v_x(start = v_0 * cos(phi_0)) "Geschwindigkeit in x-Richtung";
  vel v_y(start = v_0 * sin(phi_0)) "Geschwindigkeit in y-Richtung";
equation
  der(v_x) = 0;
  der(v_y) = -g;
  der(x) = v_x;
  der(y) = v_y;
  annotation (
    Documentation(info= "<html>
  <head>
    <title>Wurf</title>
    <meta charset=\"utf-8\">
    <link rel=\"stylesheet\" href=\"style.css\"/>
    <script type=\"text/x-mathjax-config\">
      MathJax.Hub.Config({
  tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}
});
    </script>
    <script type=\"text/javascript\" async
      src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML\">
    </script>

  </head>

  <body>
    <header>
      <h1>Schräger Wurf</h1>
    </header>
    <main>
      <h2 ID=\"h2\">Konstanten</h2>
      <table>
        <tr>
          <td>$g = 9.81 \\frac{m}{s^2}$</td>
          <td>...Fallbeschleunigung</td>
        </tr>
      </table>
      <h2 ID=\"h2\">Parameter</h2>
      <table>
        <tr>
          <td>$v_0$</td>
          <td>$[\\frac{m}{s}]$</td>
          <td>...Startgeschwindigkeit</td>
        </tr>
        <tr>
          <td>$\\phi_0$</td>
          <td>$[rad]$</td>
          <td>...Startwinkel</td>
        </tr>
      </table>
      <h2 ID=\"h2\">Zustandsgrößen</h2>
      <table>
        <tr>
          <td>$x$</td>
          <td>$[m]$</td>
          <td>...Weg in x-Richtung</td>
        </tr>
        <tr>
          <td>$y$</td>
          <td>$[m]$</td>
          <td>...Weg in y-Richtung</td>
        </tr>
        <tr>
          <td>$v_x$</td>
          <td>$[\\frac{m}{s}]$</td>
          <td>...Geschwindigkeit in x-Richtung</td>
        </tr>
        <tr>
          <td>$v_y$</td>
          <td>$[\\frac{m}{s}]$</td>
          <td>...Geschwindigkeit in y-Richtung</td>
        </tr>
      </table>
      <h2 ID=\"h2\">Gleichungen</h2>
      <p>Differentialgleichungssytem des schrägen Wurfs.</p>
      <p ID=\"formel\">
        \\begin{equation}
        \\dot{v}_x = 0 \\\\
        \\dot{v}_y = -g \\\\
        \\dot{x} = v_x \\\\
        \\dot{y} = v_y
        \\end{equation}
      </p>
    </main>
  </body>
</html>"),
    experiment(StartTime = 0, StopTime = 5, Tolerance = 1e-06, Interval = 0.1));
end Wurf;

