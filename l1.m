function res = l1(k, solx, N)

global mu;

temp = 0;

for i=2:N+1
    temp = temp + norm(solx(1, :, k) - solx(i, :, k))^4;
end

%res = 0.5*mu*temp;

%% ACHTUNG
res = 0;


end

