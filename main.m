clear variables
%% GLOBAL VARIABLES:
globalvariables

%% PARAMETERS:
%number of agents
N=0;
%dimension
d=2;
%final time
T=1;
%mesh length
n=101;
%mesh size
h=T/(n-1);
%mesh
t=0:h:T;

%control with zero initial value
u = zeros(d, n);
%initialize the control on the leader
for k=1:n
    u(:, k) = uleader0(t(k), d);
end

%for one agent
%initial position
x0 = ones(N+1, d);
x0(:,2) = 2*ones(N+1);
%initial velocity
v0 =  0.5*ones(N+1, d);




%% STEEPEST DESCENT
eps = 0.0001;
limit = 1000;
sigma = 0.0001;
[solx, u , K, G] = SteepestDescent(u, eps, x0, v0, N, d, n, h, T, limit, sigma);

 
% %% SOLVE  FORWARD EQUATION
% %solving the equation
% [solx, solv] = ForwardEquation(x0, v0, u, N, d, n,  h);
% 
% 
% 
% 
% %% SOLVE ADJOINT EQUATION
% %initial condition for the adjoint equation
% %pn = [-(solx(:, :, n) - xxdes(T, N, d));  -(solv(:, :, n) - xvdes(T, N, d))];% this is wrong!!!
% %(only the first element is nonzero)
% pn = zeros(2*(N+1), d);
% pn(1,:) = -(solx(1, :, n) - xxdes(T, d));
% %solving the equation
% solp = AdjointEquation(pn, solv, N, d, n,  h);



% 
% %% PLOT GRADIENT DESCENT
% figure
% plot(K, G);


% %% PLOT TRAJECTORIES
% %plot leader's trajectory
% %plot(solx(:,2,1), solx(:,2,2));
% %plot leader's and other's tajectory
% figure
% for i=1:N+1
%     plot(reshape(solx(i,1,:), n, 1), reshape(solx(i,2,:), n, 1));
%     %plot(solx(i,1,:), solx(i,2,:));
%     hold all
% end

% %% PLOT THE CONTROL
% %plot the first dimension of p against time
% figure
% plot(t, reshape(u(1,:), n, 1));
% %plot the second dimension of p against time
% figure
% plot(t, reshape(u(2,:), n, 1));



% %% PLOT SOLUTION OF THE ADJOINT EQUATION
% %plot the first dimension of p against time
% figure
% for i=1:2*(N+1)
%     plot(t, reshape(solp(i,1,:), n, 1));
%     %plot(tt, reshape(solp(i,1,:), nn, 1));
%     %plot(solx(i,1,:), solx(i,2,:));
%     hold all
% end
% %exact solution for on agent - the leader, when alpha=beta=0
% figure
% temp = pn(1,1)*ones(1, length(t));
% plot(t, temp, 'LineWidth', 2);
% hold all
% plot(t, t.*temp - T*pn(1, 1)*ones(1, length(t)), 'LineWidth', 2);
% 
% 
% %plot the second dimension of p against time
% figure
% for i=1:2*(N+1)
%     plot(t, reshape(solp(i,2,:), n, 1));
%     %plot(tt, reshape(solp(i,2,:), nn, 1));
%     %plot(solx(i,1,:), solx(i,2,:));
%     hold all
% end
% %exact solution for on agent - the leader, when alpha=beta=0
% figure
% temp = pn(1,2)*ones(1, length(t));
% plot(t, temp, 'LineWidth', 2);
% hold all
% plot(t, t.*temp - T*pn(1, 2)*ones(1, length(t)), 'LineWidth', 2);