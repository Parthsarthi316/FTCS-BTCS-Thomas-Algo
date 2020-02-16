%main
dt=0.001;
dx=0.01;
alpha=0.01;
lambda=(alpha*dt)/(dx^2);
T=zeros(5000,101);
x=linspace(0,1,101);
FTCS(lambda,T);
lambda=(alpha*0.001)/(dx^2);
T=BTCS(alpha,dx,dt,5000);
plot(x,T);
xlabel('x');
ylabel('Temperature');
T=BTCS(alpha,dx,dt,2000);
plot(x,T);
legend('5 Seconds ','2 Seconds ','Location','northwest');