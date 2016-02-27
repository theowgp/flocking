function res = transp( A )

res = zeros(size(A));
[p, q, n, m] = size(A);

for i = 1:n
    for j = 1:m
        res(:,:,i,j) = A(:,:,i,j)';
    end
end

end

