function res = dwbardy(x, y, v, z)

res = (dwdy(x-y)*g(r(x-y, v)) + w(x-y)*dgdz(r(x-y, v))*drdy(x-y, v))' * (z-v);

end

