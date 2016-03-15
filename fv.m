function res = fv(k, v, solx, u, N, d)% fx:R*Rd(N+1)*Rd(N+1) -> Rd(N+1)

res = S(v, N, d) + M(solx(:, :, k), N, d) + E(solx(:, :, k), v, N, d) + L(solx(:, :, k), N, d);
%res =  M(solx(:, :, k), N, d) + E(solx(:, :, k), v, N, d) + L(solx(:, :, k), N, d);
%norm (res)
res(1, :) = res(1, :) + u(:, k)';

end