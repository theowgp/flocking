function res = w(x)

global gamma sigma;


res = gamma/(1 + norm(x)^2)^sigma;

end

