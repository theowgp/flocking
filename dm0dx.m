function res = dm0dx(x, y, d)

global Ca0 la0 Cr0 lr0;

m1 = (Ca0/la0*exp(-norm(x-y)/la0) - Cr0/lr0*exp(-norm(x-y)/lr0));

m2 = (x-y)/norm(x-y); 

dm1dx = (x-y) * (Cr0/lr0^2*exp(-norm(x-y)/lr0) - Ca0/la0^2*exp(-norm(x-y)/la0)) / norm(x-y); 

dm2dx = eye(d)/norm(x-y) - (x- y)'*(x- y)/norm(x-y)^3;

res = m1 * dm2dx   +   m2' * dm1dx;

end

