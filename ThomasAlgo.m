%Thomas Algo
function T=ThomasAlgo(Th)
b=zeros(101,1);
b(1,1)=0;
b(101,1)=1;
 for i=1:101
        if(i>1 && i<101)
            b(i,1)=(b(i,1)-b(i-1,1)*Th(i,i-1))/(Th(i,i)-Th(i,i-1)*Th(i-1,i+1));
            Th(i,i+1)=Th(i,i+1)/(Th(i,i)-Th(i,i-1)*Th(i-1,i+1));
        end  
    end
    T=zeros(101,1);    
    for i=101:-1:1
        if(i==101)
            T(101,1)=b(101,1);
        end
        if(i~=101)
            T(i,1)=b(i)-Th(i,i+1)*T(i+1,1);
        end
    end
end
