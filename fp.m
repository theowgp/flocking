function res = fp(p, x, v, N, d)

res = - (-Gl1(x, N, d) +  mult(Gf(x, v, N, d), p));
%res = - (                myreshape(Gf(x, v, N, d)*myreshapeback(p, 2*(N+1), d), 2*(N+1), d));
%res = - (-Gl1(x, N, d)                                                                      );
%res = p;
end

