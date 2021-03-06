within DevLib;

model PT2
 parameter Real k=1;
 parameter Real c1=0.01;
 parameter Real c2=0.001;
 Real x1,x2;
equation
 der(x1)=x2;
 der(x2)=(k-c1*x2-x1)/c2;
end PT2;
