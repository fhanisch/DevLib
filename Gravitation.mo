within DevLib;

package Gravitation
  connector BodyAttachment
    Real r[3];
    flow Real f[3];
    Real m;
  end BodyAttachment;

  model Gravitationskopplung
    BodyAttachment b1,b2;

  protected
    function GravitationForce
      input Real r1[3];
      input Real r2[3];
      input Real m1;
      input Real m2;
      output Real f[3];
    protected
      parameter Real G = 6.67408e-11;
      Real R;
    algorithm
      R:=sqrt((r2[1]-r1[1])^2+(r2[2]-r1[2])^2+(r2[3]-r1[3])^2);
      f:=G*m1*m2*(r2-r1)/R^3;
    end GravitationForce;

  equation
    b1.f = -GravitationForce(b1.r,b2.r,b1.m,b2.m);
    b2.f = -b1.f;
  end Gravitationskopplung;

  model Body
    parameter Real m;
    Real r[3];
    Real v[3];
    Real a[3];
    BodyAttachment b;
  equation
    b.r = r;
    b.m = m;
    der(r) = v;
    der(v) = a;
    m*a = b.f;
  end Body;

  model SpaceStation
    Body earth(m=5.976e24);
    Body spaceStation(m=500e3, r(start={0,6378000+400000,0}), v(start={7650,0,0}));
    Gravitationskopplung kopplung;
  equation
    connect(earth.b, kopplung.b1);
    connect(spaceStation.b, kopplung.b2);
  annotation (experiment(
        StopTime=5400,
        Interval=0.1,
        Tolerance=1e-006));
  end SpaceStation;
end Gravitation;
