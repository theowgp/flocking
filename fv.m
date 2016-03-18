function res = fv(k, v, u, N, d)% fx:R*Rd(N+1)*Rd(N+1) -> Rd(N+1)

res = S(v, N, d);

res(1, :) = res(1, :) + u(:, k)';

end