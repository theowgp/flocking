function res = GxL(x, N, d)

global gamma1

%initialize the result
res = zeros(d*(N+1), d*(N+1));


for i=1:N+1
    if i==1
        res(1:d, 1:d)                                     = zeros(d);
    else
        res((i-1)*d+1:(i-1)*d+d, 1:d)                     = - gamma1*dm0dy(x(i,:), x(1,:), d);
    end
    for j=2:N+1
        if i==j
            res((i-1)*d+1:(i-1)*d+d, (i-1)*d+1:(i-1)*d+d) = - gamma1*dm0dx(x(i,:), x(1,:), d);
        else
            res((i-1)*d+1:(i-1)*d+d, (j-1)*d+1:(j-1)*d+d) = zeros(d);
        end
    end    
end


end

