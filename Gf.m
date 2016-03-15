function res = Gf(x, v, N, d)

Gxfx = zeros(d*(N+1), d*(N+1));

Gvfx = eye(d*(N+1), d*(N+1));

Gxfv = GxM(x, N, d) + GxE(x, v, N, d) + GxL(x, N, d);
Gvfv = GvS(v, N, d) + GvE(x, v, N, d);

res = [Gxfx Gvfx; Gxfv Gvfv];


% res = [Gxfx Gvfx; zeros(d*(N+1), d*(N+1)) GvS(v, N, d)];

% for i=1:d*(N+1)
%     for j=1:d*(N+1)
%         temp = GvS(v, N, d);
%         if   Gxfv(i, j) ~= 0 || Gvfv(i, j) ~= temp(i, j);
%             display('pezdec!')
%         end
%     end
% end

end

