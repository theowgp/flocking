function [solx, solv] = ForwardEquation( x0, v0, N, d, n,  h, t)

solx(1, :, :) = x0;
solv(1, :, :) = v0;

%it does not work with solx(1, :, :) solv(1, :, :) substituted directly in
%f so that's why the variables x1 v1 are introduced
%x1 = zeros(N+1, d);
%v1 = zeros(N+1, d);
for k=1:n-1
    %solx(k+1, :, :) = solx(k, :, :) + h*fx(solv(k, :, :));
    %solv(k+1, :, :) = solv(k, :, :) + h*fv(t(k), solx(k, :, :), solv(k, :, :), N, d);
    x1 = x0 + h*fx(v0);
    v1 = v0 + h*fv(t(k), x0, v0, N, d);
    x0=x1;
    v0=v1;
    solx(k+1, :, :) = x1;
    solv(k+1, :, :) = v1;
end


end

