function res = GJr(u, solp, N)

global nu;

% res = - solp(:, :, k);
% res(N+2, :) = res(N+2, :) + nu*u(:, k)';

temp = zeros(length(solp(N+2, :, 1)), length(solp(N+2, 1, :)));
for i=1:length(solp(N+2, :, 1))
    for j=1:length(solp(N+2, 1, :))
        temp(i, j) = solp(N+2, i, j);
    end
end
res = nu*u - temp;


end

