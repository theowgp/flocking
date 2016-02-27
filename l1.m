function res = l1(x, N)

global mu;

temp = 0;

for i=2:N+1
    temp = temp + norm(x(1,:)-x(i,:))^4;
end

res = 0.5*mu*temp;

end

