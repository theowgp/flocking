function res = f(t, x, v, N, d)%f:R*Rd(N+1)*Rd(N+1) -> Rd(N+1)*Rd(N+1)

res = [fx(v); fv(t, x, v, N, d)];

end

