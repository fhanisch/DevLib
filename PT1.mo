within DevLib;

model PT1
 parameter Real k=1;
 parameter Real T=1;
 Real x;
equation
 der(x)=(k-x)/T;
end PT1;
