function [state, control] = SteepestDescent(u0, eps, x0, v0, N, d, n, h, T)


uk = u0;

%[solv solp] = solve otimality system for u0;
[solx, solp] = SolveOptimalitySystem(x0, v0, u0, N, d, n,  h, T);

dk = -GJr(u0, solp, N);

k1  = 1;
while sqrt(sprodU(dk, dk, T)) > eps && k1 < 10
    display('||dk|| = ');
    sprodU(dk, dk, T)
    s = 1;
    k2 = 1;
    while J(solx, uk + s*dk, N, d, n,  T) > J(solx, uk, N, d, n,  T) - s*abs(sprodU(dk, dk, T))  && k2 < 10
        s = s/2;
        k2 = k2 + 1;
    end
    uk = uk + s*dk;
    %[solv solp] = solve otimality system for uk;
    [solx, solp] = SolveOptimalitySystem(x0, v0, uk, N, d, n,  h, T);
    dk = -GJr(uk, solp, N);
    k1 = k1 + 1;
    
end

state = solx;
control = uk;

end

