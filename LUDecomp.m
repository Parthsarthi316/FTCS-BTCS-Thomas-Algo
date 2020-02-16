function[e,f]=LUDecomp(a,b,c)
n=length(b);
%e=zeros(n,1);
%f=zeros(n,1);
e(1) = b(1);
f(1) = c(1)/b(1);
for i=2:n
e(i) = b(i) - a(i)*f(i-1);
f(i) = c(i)/e(i);
end
