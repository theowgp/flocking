function res = dwbardx(x, y, v, z)

res = (dwdx(x-y)*g(r(x-y, v)) + w(x-y)*dgdz(r(x-y, v))*drdx(x-y, v))' * (z-v);

end

