function res = fx(k, v, u, N)% fx:Rd(N+1) -> Rd(N+1)

res = v + u(1:N+1, :, k);

end

