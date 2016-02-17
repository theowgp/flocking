function res = m( x, y)

global Ca la Cr lr;


res = (x-y) * (Ca/la*exp(-norm(x-y)/la) - Cr/lr*exp(-norm(x-y)/lr)) / norm(x-y); 

end

