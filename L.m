function res = L(x, N, d) %E: Rd(N+1)  -> Rd(N+1) 

global Ca0 la0 Cr0 lr0;


global gamma1;



%initialize the result
res = zeros(N+1, d);

res(1,:)=zeros(1, d);%the leader doesn't act on himself

for i=2:N+1% the loop starts from 2 ommiting the leader
    ro = norm(x(i, :) - x(1, :));
    temp =   (x(i, :) - x(1, :)) * (Ca0/la0*exp(-ro/la0) - Cr0/lr0*exp(-ro/lr0)) / ro;
    
    res(i, :) = - temp * gamma1;
end



end

