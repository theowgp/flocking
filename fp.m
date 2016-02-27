function res = fp(k, p, solx, solv, N, d)

res = - (-Gl1(solx(:, :, k), N, d) +    myreshape(Gf(solx(:, :, k),solv(:, :, k), N, d)'*myreshapeback(p, 2*(N+1), d),    2*(N+1), d)             );

end
