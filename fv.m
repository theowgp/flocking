function res = fv(k, x, v, u, N, d)% fx:R*Rd(N+1)*Rd(N+1) -> Rd(N+1)

res = S(v, N, d) + M(x, N, d) + E(x, v, N, d) + L(x, N, d) + u(N+2:2*(N+1), :, k);

end