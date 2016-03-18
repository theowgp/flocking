function res = Gf(v, N, d)

Gxfx = zeros(d*(N+1), d*(N+1));

Gvfx = eye(d*(N+1), d*(N+1));

Gxfv = zeros(d*(N+1), d*(N+1));
Gvfv = GvS(v, N, d);

res = [Gxfx Gvfx; Gxfv Gvfv];



end

