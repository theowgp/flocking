function res = GxL(x, N, d)

global gamma1

%initialize the result
res = zeros(d, d, N+1, N+1);


for i=1:N+1
    if i==1
        res(:, :, 1, 1)     = zeros(d);
    else
        res(:, :, i, 1)     = - gamma1*dm0dy(x(i,:), x(1,:), d);
    end
    for j=2:N+1
        if i==j
            res(:, :, i, i) = - gamma1*dm0dx(x(i,:), x(1,:), d);
        else
            res(:, :, i, j) = zeros(d);
        end
    end    
end


end

