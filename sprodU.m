function res = sprodU(sol1, sol2,  T)

[d, n] = size(sol1);

% temp = 0;
% for k = 1:n
%     for j=1:d
%         temp = temp + sol1(j, k)*sol2(j, k); 
%     end
% end

temp = 0;
for k = 1:n
    temp = temp + sol1(:, k)'*sol2(:, k); 
end

res = (T/(n-1))*temp;
%res = (T/n)*temp;


end

