function res = fv(t, x, v, N, d)% fx:R*Rd(N+1)*Rd(N+1) -> Rd(N+1)

res = S(v, N, d) + M(x, N, d) + E(x, v, N, d) + L(x, N, d);

res(1,:) = res(1,:) + u(t, d);

end