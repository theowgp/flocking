function res = intgrlterm3(u, i, n ,T)


temp = 0;
for k=1:n
    temp = temp + norm(u(i,:,k))^2;
end
res = T/n*temp;

end

