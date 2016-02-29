p(:, n) = reMtoV(pn);

m = 2*(N+1)*d;

temp = eye(m, m);

for k=n:-1:2
    temp = temp*(eye(m, m) + h*Gf(solx(:, :, k-1), solv(:, :, k-1), N, d)')^(-1);
    norm((eye(m, m) + h*Gf(solx(:, :, k-1), solv(:, :, k-1), N, d)')^(-1));
    norm(Gl1(solx(:, :, k-1), N, d));
    norm(temp);
end


