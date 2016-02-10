function res = K( x, v )% K:Rd*Rd -> R

gamma=1;
sigma=0.5;

res = gamma/(1 + norm(x)^2)^sigma * g( x*v' / (norm(x)*norm(v)) );


end

