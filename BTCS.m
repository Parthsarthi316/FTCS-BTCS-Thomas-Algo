%BTCS
function T=BTCS(alpha,dx,dt,t)
Th=zeros(101,101);
Th(1,1)=1;
for k=1:t
    lambda=(alpha*100)/(dx^2);
    for i=2:101
        Th(i,i-1)=-1*lambda;Th(i,i+1)=-1*lambda;
        Th(i,i)=1+2*lambda;
    end
   %----------------------------
   T=ThomasAlgo(Th);
   dt=dt+0.001;
end

        
