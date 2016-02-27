function res = Gl1(x, N, d)

global mu;

Gxl1 = zeros(N+1, d);
Gvl1 = zeros(N+1, d);

temp = zeros(1, d);
for i=2:N+1
    temp = temp + norm(x(1,:)-x(i,:))^2*(x(1,:)-x(i,:));
end
Gxl1(1,:) = 2*mu*temp;

for i=2:N+1
    Gxl1(i,:) = -2*mu*norm(x(1,:)-x(i,:))^2*(x(1,:)-x(i,:));
end

%res = [Gxl1; Gvl1];
res = [reMtoV(Gxl1); reMtoV(Gvl1)];

end

