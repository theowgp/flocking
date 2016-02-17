function res = dwbardv(x, y, v, z, d)

res = (dgdz(r(x-y, v))*drdv(x-y, v)'*(z-v) - g(r(x-y, v))*eye(d)) * w(x-y);

end

