clear all
%GLOBAL VARIABLES:
globalvariables

%PARAMETERS:
%number of agents
N=5;
%dimension
d=2;
%final time
T=20;
%mesh size
h=0.1;
%mesh
t=0:h:T;
%mesh length
n=length(t);
%solution
%solx=zeros(n, N+1, d);
%solv=zeros(n, N+1, d);

%initial position
x0 = zeros(N+1, d);
for i = 1:N+1
    %x0(i,2)=0;
    x0(i,1)=20*N*i/(N+1);
end
%initial velocity
v0 =  ones(N+1, d);



%SOLVE  FORWARD EQUATION
[solx, solv] = ForwardEquation(x0, v0, N, d, n,  h, t);

%SOLVE ADJOINT EQUATION
%initial condition for the adjoint equation
pn = [-(solx(:, :, n) - xxdes(T, N, d));  -(solv(:, :, n) - xvdes(T, N, d))];
%solving the equation
solp = AdjointEquation(pn, solx, solv,  N, d, n,  h);




%PLOT TRAJECTORIES
%plot leader's trajectory
%plot(solx(:,2,1), solx(:,2,2));
%plot leader's and other's tajectory
for i=1:N+1
    plot(reshape(solx(i,1,:), n, 1), reshape(solx(i,2,:), n, 1));
    %plot(solx(i,1,:), solx(i,2,:));
    hold all
end

solp
%PLOT SOLUTION OF THE ADJOINT EQUATION
%figure
%for i=1:N+1
    %plot(solp(:,i,1), solp(:,i,2));
    %hold all
%end
