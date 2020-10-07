t0 = 0; tf = 10;
x0 = [0 0.25]';  % Initial conditions
[t,x] = ode23(@pendlm,[t0,tf],x0);

Vx=[];
for i=1:length(x(:,1))
    for j=1:length(x(:,2))
        Vx(i,j)=(1/2)*x(j,2)+(1-cos(x(i,1)));
    end
end
size(Vx)

surf(x(:,1),x(:,2),Vx)
%grid on

