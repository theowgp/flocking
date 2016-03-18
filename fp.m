function res = fp(k, p, solv, N, d)

term = Gf(solv(:, :, k), N, d)'*reMtoV(p);

res = reVtoM( ( - term ), d);

end
