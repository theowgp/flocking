function res = matrixnorm( A )

[n, m] = size(A);

temp = 0;
for i=1:n
    for j=1:m
        temp = temp + A(i, j)^2;
    end
end

res = sqrt(temp);

end

