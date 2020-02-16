function[v]=LUSolve(d,a,e,f)
% --- Forward substitution to solve L*w = d
n=length(d);
%w=zeros(n,1);
%v=zeros(n,1);
w(1) = d(1)/e(1);
for i=2:n
 w(i) = (d(i) - a(i)*w(i-1))/e(i);
end
% --- Backward substitution to solve U*v = w
v(n) = w(n);
for i=n-1:-1:1
v(i) = w(i) - f(i)*w(i+1);
end