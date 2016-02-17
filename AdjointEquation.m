function [solp] = AdjointEquation(p1, x, v,  N, d, n,  h)

solp(n, :, :) = p1;


for k=n:2
    p0 = p1 + h*fp(p1, x, v, N, d);
    p1 = p0;
    solp(k-1, :, :) = p0;
end


end

