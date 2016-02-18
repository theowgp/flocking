function [solx, solv] = ForwardEquation(x0, v0, N, d, n,  h, t)

solx(:, :, 1) = x0;
solv(:, :, 1) = v0;


for k=1:n-1
    solx(:, :, k+1) = solx(:, :, k) + h*fx(solv(:, :, k));
    solv(:, :, k+1) = solv(:, :, k) + h*fv(t(k), solx(:, :, k), solv(:, :, k), N, d);
end


end

