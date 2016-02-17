function res = m0( x, y)

global Ca0 la0 Cr0 lr0;


res = (x-y) * (Ca0/la0*exp(-norm(x-y)/la0) - Cr0/lr0*exp(-norm(x-y)/lr0)) / norm(x-y); 

end

