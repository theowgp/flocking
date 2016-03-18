function [solp] = AdjointEquation(pn, solv, N, d, n,  h)

solp(:, :, n) = pn;

%solving adjoint equation on the fine grid
%euler method 
for k=n:-1:2
    solp(:, :, k-1) = solp(:, :, k) + h*fp(k, solp(:, :, k), solv, N, d);
end





% %solving adjoint equation on the fine grid 
% %backward euler method 
% p(:, n) = reMtoV(pn);
% 
% m = 2*(N+1)*d;
% 
% 
% for k=n:-1:2
%     p(:, k-1) = (eye(m, m) + h*Gf(solv(:, :, k-1), N, d)')^(-1) * p(:, k);
% end
% 
% solp = zeros(2*(N+1), d, n);
% 
% 
% for k=n:-1:1
%     solp(:,:,k) = reVtoM(p(:,k), d);
% end





% %solving adjoint equation on the coarse grid
% m = 2*(N+1)*d;
% 
% nn = floor(n/2)+1;
% 
% h = 2*h;
% 
% p(:, nn) = reMtoV(pn);
% 
% kk = nn;
% 
% for k=n:-2:3
%     %midpoint RK method
%     p(:, kk-1) = (eye(m, m) + 0.5*h*Gf(solx(:, :, k-1), solv(:, :, k-1), N, d)')^(-1) * ((eye(m, m) - 0.5*h*Gf(solx(:, :, k-1), solv(:, :, k-1), N, d)')*p(:, kk) + h*Gl1(solx(:, :, k-1), N, d));
%     %euler beckwards method
%     %p(:, kk-1) = (eye(m, m) +      h*Gf(solx(:, :,kk-1), solv(:, :,kk-1), N, d)')^(-1) * (p(:,kk) + h*Gl1(solx(:, :,kk-1), N, d)) ;
%     
%     kk=kk-1;
% end
% 
% solp = zeros(2*(N+1), d, nn);
% 
% 
% for k=nn:-1:1
%     solp(:,:,k) = reVtoM(p(:,k), d);
% end






end

