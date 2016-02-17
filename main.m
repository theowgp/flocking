
global mu;
global Ca la Cr lr;
global Ca0 la0 Cr0 lr0;
global gamma1 
global gamma sigma;
global alpha beta;
global delta1 delta2;

delta1 = cos(1.047);
delta2 = cos(1.57);

alpha = 0.07;
beta = 0.05;

gamma=1;
sigma=0.5;

gamma1=1;

Ca=20;
la=100;
Cr=50;
lr=2;

Ca0=20;
la0=100;
Cr0=50;
lr0=2;

mu=1;




N=5;
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
    x0(i,1)=5*N*i/(N+1);
end
%initial velocity
v0 =  ones(N+1, d);

solx(1, :, :) = x0;
solv(1, :, :) = v0;

%it does not work with solx(1, :, :) solv(1, :, :) substituted directly in
%f so that's why the variables x1 v1 are introduced
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

%plot leader's tajectory
%plot(solx(:,2,1), solx(:,2,2));
%plot leader's and other's tajectory
for i=1:N+1
    plot(solx(:,i,1), solx(:,i,2));
    hold all
end

