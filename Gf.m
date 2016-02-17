function res = Gf(x, v, N, d)

Gxfx = zeros(d*(N+1), d*(N+1));

Gvfx = eye(d*(N+1), d*(N+1));

Gxfv = GxM(x, N, d) + GxE(x, v, N, d) + GxL(x, N, d);
Gvfv = GvS(v, N, d) + GvE(x, v, N, d);

res = [Gxfx Gvfx; Gxfv Gvfv];

end

