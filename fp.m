function res = fp(p, x, v, N, d)

res = - (-Gl1(x, N, d) +  mult(Gf(x, v, N, d), p));
%res = - (                 mult(Gf(x, v, N, d), p));
%res = - (-Gl1(x, N, d)                           );
%res = p;
end

