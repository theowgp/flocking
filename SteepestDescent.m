function [state, control, K, G] = SteepestDescent(u0, eps, x0, v0, N, d, n, h, T, limit, sigma)


uk = u0;

%[solv solp] = solve otimality system for u0;
[solx, solp] = SolveOptimalitySystem(x0, v0, u0, N, d, n,  h, T);

dk = -GJr(u0, solp, N);

k1  = 1;
while sqrt(sprodU(dk, dk, T)) > eps && k1 < limit
    %display('||dk|| = ');
    G(k1) = sprodU(dk, dk, T);
    K(k1) = k1;
    sqrt(sprodU(dk, dk, T));
    k1;
    
    J(solx, uk, N, d, n,  T)
    
    s = 1;
    k2 = 1;
    %[solv solp] = solve the forward equation with updated control for the Armijo rule;
    [solxA, solvA] = ForwardEquation(x0, v0, uk + s*dk, N, d, n,  h);
    while J(solxA, uk + s*dk, N, d, n,  T) > J(solx, uk, N, d, n,  T) - s*sigma*abs(sprodU(dk, dk, T))  && k2 < 5
        s = s/2;
        
        %[solv solp] = solve the forward equation with updated control for the Armijo rule;
        [solxA, solvA] = ForwardEquation(x0, v0, uk + s*dk, N, d, n,  h);
        
        k2 = k2 + 1;
    end
    k2;
    
    uk = uk + s*dk;
    %[solv solp] = solve otimality system with updated control to update the gradient;
    [solx, solp] = SolveOptimalitySystem(x0, v0, uk, N, d, n,  h, T);
    dk = -GJr(uk, solp, N);
    k1 = k1 + 1;
    
end

state = solx;
control = uk;

end

