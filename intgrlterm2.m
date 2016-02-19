function res = intgrlterm2(solx, i, n ,T)
if(i==1)
    disp('ACHTUNG!!!!!!!!!!!!!!!!!!!!!!!!!!!(intgrl, i cannot be 1)');
end
    
temp = 0;
for k=1:n
    temp = temp + norm(solx(1,:,k) - solx(i,:,k))^4;
end
res = T/n*temp;
end

