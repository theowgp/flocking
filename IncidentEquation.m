function solxhat =  IncidentEquation(xhat0, solx, u, N, n, h)

solxhat = zeros(n);

solxhat(1) = xhat0;


for k=1:n-1
    solxhat(k+1) = solxhat(k) + h*fxhat(k, solx, u, N);
end


end




