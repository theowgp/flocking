function res = fxhat(k, solx, u, N)

global nu;

res = l1(solx(:, :, k), N) + 0.5*nu*norm(u(N+2, :, k))^2;



end

