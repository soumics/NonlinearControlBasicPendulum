function xdot = pendlm(t,x)
M=1; R=1; g=1; b=1;
xdot = [x(2); (1/(M*R^2))*(-b*x(2)-M*g*R*sin(x(1)))];
