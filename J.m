function res = J(solx, u, N, d, n,  T)
global nu;



term1 = 0.5 * norm(solx(1, :, n) - xxdes(T, d))^2;


term2 = 0;
for k=1:n
    term2 = term2 + l1(k, solx, N);
end
term2 = (T/(n-1))*term2;


term3 = 0;
for k=1:n
    term3 = term3 + norm(u(:, k))^2;
end
term3 = (T/(n-1))*term3;
term3 = 0.5*nu*term3;




res= term1 + term2 + term3;
end

