function res = drdx(x, v)

res = (v/norm(x) - x*(x*v')/norm(x)^3) / norm(v);

end

