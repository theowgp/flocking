
N=10;
d=2;
T=20;
h=0.1;
t=0:h:T;
n=length(t);
solx=zeros(n, N+1, d);
solv=zeros(n, N+1, d);

%initial position
x0 = zeros(N+1, d);
for i = 1:N+1
    %x0(i,2)=0;
    x0(i,1)=N*i/(N+1);
end
%initial velocity
v0 =  ones(N+1, d);

solx(1, :, :) = x0;
solv(1, :, :) = v0;

x1 = zeros(N+1, d);
v1 = zeros(N+1, d);
for k=1:n-1
    %solx(k+1, :, :) = solx(k, :, :) + h*fx(solv(k, :, :));
    %solv(k+1, :, :) = solv(k, :, :) + h*fv(t(k), solx(k, :, :), solv(k, :, :), N, d);
    x1 = x0 + h*fx(v0);
    v1 = v0 + h*fv(t(k), x0, v0, N, d);
    x0=x1;
    v0=v1;
    solx(k+1, :, :) = x1;
    solv(k+1, :, :) = v1;
end


%plot(solx(:,2,1), solx(:,2,2));
for i=1:N+1
    plot(solx(:,i,1), solx(:,i,2));
    hold all
end

