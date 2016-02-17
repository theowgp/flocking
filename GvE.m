function res = GvE(x, v, N, d)

%initialize the result
res = zeros(d*(N+1), d*(N+1));


for i=1:N+1
    for j=1:N+1
        if i~=j
            res((i-1)*d+1:(i-1)*d+d, (j-1)*d+1:(j-1)*d+d) = dwbardz(x(i,:), x(j,:), v(i,:), v(j,:), d)/(N+1);
        else
            temp = zeros(d, d);
            for k=1:N+1
                if k~=i
                    temp = temp + dwbardv(x(i,:), x(k,:), v(i,:), v(k,:), d);
                end
            end
            res((i-1)*d+1:(i-1)*d+d, (i-1)*d+1:(i-1)*d+d) = temp/(N+1);
        end
    end    
end


end

