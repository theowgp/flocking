function res = K( x, v )% K:Rd*Rd -> R

global gamma sigma;

res = gamma/(1 + norm(x)^2)^sigma * g( x*v' / (norm(x)*norm(v)) );


end

