function res = J(solx, solv, u, N, n,  T)

global mu nu

term1 = 0.5 * matrixnorm([solx(:,:,n); solv(:,:,n)] - [xxdes(T); xvdes(T)])^2;%??????????????????????????????????

term2 = 0;
%dont consider the leader!!!!
for i=2:N+1
    term2 = term2 + intgrlterm2(solx, i, n ,T);
end
term2 = 0.5*mu*term2;



term3 = 0;
% essentially there is only one nontrivial term when i=N+2
for i=1:2*(N+1)
    term3 = term3 + intgrlterm3(u, i, n ,T);
end
term3 = 0.5*nu*term3;

res= term1 + term2 + term3;

end

