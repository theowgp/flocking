function res = S( v, N, d ) %S0: Rd(N+1)  -> Rd(N+1) 

alfa = 0.07;
beta = 0.05;

%initialize the result
res = zeros(N+1, d);

for i=1:N+1
    res(i, :) = (alfa - beta*norm(v(i, :))^2) * v(i, :);
end


end