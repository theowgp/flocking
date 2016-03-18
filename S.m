function res = S(v, N, d) 

global alpha beta;

%initialize the result
res = zeros(N+1, d);

for i=1:N+1
    res(i, :) = (alpha - beta*norm(v(i, :))^2) * v(i, :);
end


end