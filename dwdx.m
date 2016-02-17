function res = dwdx(x)

global gamma sigma;

res = -sigma*gamma*x/(1+norm(x)^2)^(sigma+1);


end

