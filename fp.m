function res = fp(p, x, v, N, d)

res = - (-Gl1(x, N, d) + myreshape(Gf(x, v, N, d)*myreshapeback(p, 2*(N+1), d), 2*(N+1), d));

end

