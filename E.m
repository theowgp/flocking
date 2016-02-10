function res = E(x, v, N, d)%E: Rd(N+1)*Rd(N+1) -> Rd(N+1) 

%initialize the result
res = zeros(N+1, d);



for i=1:N+1
    temp = zeros(1, d);
    for j=1:N+1
        if i~=j
            temp = temp + K(x(i, :) - x(j,:), v(i, :))*(v(j, :) - v(i, :)); 
        end
    end
    res(i, :) = temp/(N+1);
end


end

