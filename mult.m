function res = mult(A, p)

res=zeros(size(p));

for i=1:length(p(:,1))
    temp = zeros(1, length(p(1,:)));
    for j=1:length(p(:,1))
        temp = temp + (A(:,:,i,j)*p(j,:)')';
    end
    res(i,:)=temp;
end

end

