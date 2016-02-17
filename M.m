function res = M(x, N, d) %M: Rd(N+1)  -> Rd(N+1) 

global Ca la Cr lr;



%initialize the result
res = zeros(N+1, d);



for i=1:N+1
    temp = zeros(1, d);
    for j=1:N+1
        if i~=j
            ro = norm(x(i, :) - x(j, :));
        
            temp = temp +    (x(i, :) - x(j, :)) * (Ca/la*exp(-ro/la) - Cr/lr*exp(-ro/lr)) / ro;
        end
    end
    res(i, :) = - temp/(N+1);
end



end

