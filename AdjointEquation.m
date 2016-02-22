function [solp] = AdjointEquation(pn, solx, solv, N, d, n,  h)

solp(:, :, n) = pn;


for k=n:-1:2
    solp(:, :, k-1) = solp(:, :, k) + h*fp(k, solp(:, :, k), solx, solv, N, d);
end


end

