function [solx, solp] = SolveOptimalitySystem(x0, v0, u, N, d, n,  h, T)


%SOLVE  FORWARD EQUATION
%solving the equation
[solx, solv] = ForwardEquation(x0, v0, u, N, d, n,  h);




%SOLVE ADJOINT EQUATION
%initial condition for the adjoint equation
%pn = [-(solx(:, :, n) - xxdes(T, N, d));  -(solv(:, :, n) - xvdes(T, N, d))];% this is wrong!!!
%(only the first element is nonzero)
pn = zeros(2*(N+1), d);
pn(1,:) = -(solx(1, :, n) - xxdes(T, d));
%solving the equation
solp = AdjointEquation(pn, solv, N, d, n,  h);


end

