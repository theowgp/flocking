clear all
%GLOBAL VARIABLES:
globalvariables

%PARAMETERS:
%number of agents
N=5;
%dimension
d=2;
%final time
T=5;
%mesh size
h=0.1;
%mesh
t=0:h:T;
%mesh length
n=length(t);
%solution
%solx=zeros(n, N+1, d);
%solv=zeros(n, N+1, d);
%control with zero initial value
u = zeros(2*(N+1), d, n);
%initialize the control on the leader
for k=1:n
    u(N+2, :, k) = uleader(t(k), d);
end

%initial position
x0 = zeros(N+1, d);
for i = 1:N+1
    %x0(i,2)=0;
    x0(i,1)=20*N*i/(N+1);
end
%initial velocity
v0 =  ones(N+1, d);



%SOLVE  FORWARD EQUATION
[solx, solv] = ForwardEquation(x0, v0, u, N, d, n,  h, t);

%SOLVE ADJOINT EQUATION
%initial condition for the adjoint equation
%pn = [-(solx(:, :, n) - xxdes(T, N, d));  -(solv(:, :, n) - xvdes(T, N, d))];% this is wrong!!!
%(only the first element is nonzero)
pn = zeros(2*(N+1), d);
pn(1,:) = -(solx(1, :, n) - xxdes(T, d));
%solving the equation
solp = AdjointEquation(pn, solx, solv, N, d, n,  h);

%solp


%PLOT TRAJECTORIES
%plot leader's trajectory
%plot(solx(:,2,1), solx(:,2,2));
%plot leader's and other's tajectory
for i=1:N+1
    plot(reshape(solx(i,1,:), n, 1), reshape(solx(i,2,:), n, 1));
    %plot(solx(i,1,:), solx(i,2,:));
    hold all
end


%PLOT SOLUTION OF THE ADJOINT EQUATION
%plot the first dimension of p against time
figure
for i=1:2*(N+1)
    plot(t, reshape(solp(i,1,:), n, 1));
    %plot(solx(i,1,:), solx(i,2,:));
    hold all
end
%plot the second dimension of p against time
figure
for i=1:2*(N+1)
    plot(t, reshape(solp(i,2,:), n, 1));
    %plot(solx(i,1,:), solx(i,2,:));
    hold all
end