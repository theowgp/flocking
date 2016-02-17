function res = dmdx( zx, y, d)

global Ca la Cr lr;

m1 = (Ca/la*exp(-norm(x-y)/la) - Cr/lr*exp(-norm(x-y)/lr));

m2 = (x-y)/norm(x-y); 

dm1dx = (x-y) * (Cr/lr^2*exp(-norm(x-y)/lr) - Ca/la^2*exp(-norm(x-y)/la)) / norm(x-y); 

dm2dx = eye(d)/norm(x-y) - (x- y)'*(x- y)/norm(x-y)^3;

res = m1 * dm2dx   +   m2' * dm1dx;

end

