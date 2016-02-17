function res = GvS(v, N, d)

%initialize the result
res = zeros(d, d, N+1, N+1);


for i=1:N+1
    for j=1:N+1
        if i==j
            res(:, :, i, i) = dsdw(v(i,:), d);
        else
            res(:, :, i, j) = zeros(d);
        end
    end    
end


end

