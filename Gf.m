function res = Gf(x, v, N, d)

%initialize the result
%res = zeros(d, d, 2*(N+1), 2*(N+1));

Gxfx = zeros(d, d, N+1, N+1);

Gvfx = zeros(d, d, N+1, N+1);
for i=1:N+1
    Gvfx(:,:,i,i)=eye(d, d);
end

Gxfv = GxM(x, N, d) + GxE(x, v, N, d) + GxL(x, N, d);
Gvfv = GvS(v, N, d) + GvE(x, v, N, d);





%aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdfhsdlkfjhslfjsdfhlkuh
%res = [Gxfx Gvfx; Gxfv Gvfv];
res=zeros(d, d, 2*(N+1), 2*(N+1));

res(:,:, 1:N+1, 1:N+1) = Gxfx;

res(:,:, 1:N+1, N+2:2*(N+1)) = Gvfx;

res(:,:, N+2:2*(N+1), 1:N+1) = Gxfv;

res(:,:, N+2:2*(N+1), N+2:2*(N+1)) = Gvfv;

end

