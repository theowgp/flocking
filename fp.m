function res = fp(k, p, solx, solv, N, d)

term1 = Gl1(solx(:, :, k), N, d);

term2 = Gf(solx(:, :, k), solv(:, :, k), N, d)'*reMtoV(p);

res = reVtoM( ( term1  - term2 ), d);

end
