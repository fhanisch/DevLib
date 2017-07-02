within DevLib;
package SIunits
  type Dist = Real (final unit="m", final quantity="Distance");
  type Angle = Real (final unit="rad", final quantity="Angle");
  type Vel = Real (final unit="m/s", final quantity="Velocity");
  type Acc = Real (final unit="m/s2", final quantity="Acceleration");
  type Mass = Real (final unit="kg", final quantity="Mass");
  type MassFlowRate = Real (final unit="kg/s", quantity="MassFlowRate");
end SIunits;

