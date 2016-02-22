function res = fx(k, solv, u, N)% fx:Rd(N+1) -> Rd(N+1)

res = solv(:, :, k) + u(1:N+1, :, k);

end

