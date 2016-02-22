function res = fp(k, p, solx, solv, N, d)

res = - (-Gl1(solx(:, :, k), N, d) +  mult(Gf(solx(:, :, k), solv(:, :, k), N, d), p));
%res = - (                 mult(Gf(solx(:, :, k), solv(:, :, k), N, d), p));
%res = - (-Gl1(solx(:, :, k), N, d)                           );
%res = p;
end

