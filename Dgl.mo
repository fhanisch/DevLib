within DevLib;

model Dgl
  Real x "Zustandsgröße";
equation
  der(x) = 1 - x;
  annotation(
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.1),
    __OpenModelica_simulationFlags(jacobian = "coloredNumerical", s = "dassl", lv = "LOG_STATS"));
end Dgl;
