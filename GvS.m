function res = GvS(v, N, d)

%initialize the result
res = zeros(d*(N+1), d*(N+1));


for i=1:N+1
    for j=1:N+1
        if i==j
            res((i-1)*d+1:(i-1)*d+d, (i-1)*d+1:(i-1)*d+d) = dsdw(v(i,:), d);
        else
            res((i-1)*d+1:(i-1)*d+d, (j-1)*d+1:(j-1)*d+d) = zeros(d);
        end
    end    
end


end

