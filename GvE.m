function res = GvE(x, v, N, d)

%initialize the result
res = zeros(d, d, N+1, N+1);


for i=1:N+1
    for j=1:N+1
        if i~=j
            res(:, :, i, j) = dwbardz(x(i,:), x(j,:), v(i,:), v(j,:), d)/(N+1);
        else
            temp = zeros(d, d);
            for k=1:N+1
                if k~=i
                    temp = temp + dwbardv(x(i,:), x(k,:), v(i,:), v(k,:), d);
                end
            end
            res(:, :, i, i) = temp/(N+1);
        end
    end    
end


end

