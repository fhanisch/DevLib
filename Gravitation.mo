within DevLib;

package Gravitation
  function GravitationForce
    final constant Real G(final unit="m3/(kg.s2)") = 6.67408e-11;
    input Real r[3];
    input Real m1;
    input Real m2;
    output Real f[3];
  protected
    Real R;
  algorithm
    R:=sqrt(r[1]^2+r[2]^2+r[3]^2);
    f:=G*m1*m2*r/R^3;
  end GravitationForce;

  model Body
    parameter Real m = 500e3;
    Real r[3](start={0,6378000+400000,0});
    Real v[3](start={7650,0,0});
    Real a[3];
  equation
    der(r) = v;
    der(v) = a;
    m*a = -GravitationForce(r,5.976e24,m);
    annotation (experiment(
        StopTime=5400,
        Interval=0.1,
        Tolerance=1e-006));
  end Body;
end Gravitation;
