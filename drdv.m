function res = drdv(x, v)

res = (x/norm(v) - v*(x*v')/norm(v)^3) / norm(x);

end

