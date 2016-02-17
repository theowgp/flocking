function res = GxM(x, N, d)

%initialize the result
res = zeros(d, d, N+1, N+1);


for i=1:N+1
    for j=1:N+1
        if i~=j
            res(:, :, i, j) = - dmdy(x(i,:), x(j,:), d)/(N+1);
        else
            temp = zeros(d, d);
            for k=1:N+1
                if k~=i
                    temp = temp + dmdx(x(i,:), x(k,:), d);
                end
            end
            res(:, :, i, i) = - temp/(N+1);
        end
    end    
end


end

