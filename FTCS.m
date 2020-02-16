%FTCS
function FTCS(lambda,T)
T(:,101)=1;
for j=1:5000
   for i=2:100
       T(j+1,i)=T(j,i)+lambda*(T(j,i+1)-2*T(j,i)+T(j,i-1));
   end
end
x=linspace(0,1,101);
plot(x,T(5000,:));
xlabel('x');
ylabel('Temperature');
hold on;
plot(x,T(2000,:));
legend('5 Seconds','2 Seconds','Location','northwest');
hold off;
end

    

