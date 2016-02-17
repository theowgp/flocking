function res = dsdw( w, d )

global alpha beta;

res = (alpha - beta*norm(w)^2)*eye(d) - 2*beta*(w'*w); 

end

