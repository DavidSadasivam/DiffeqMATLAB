clear;clc;
f=@(t,x)[0.0325*x(1)-0.8*x(1)*x(2);-0.6*x(2)+0.05*x(1)*x(2)];
[t xsol]=ode45(f,[0 85],[18 .02])
yyaxis left
plot(t,xsol(:,1),'b-o')
yyaxis right
plot(t,xsol(:,2),'r-o')
