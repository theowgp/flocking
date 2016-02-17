function res = dgdz( z )

global delta1 delta2;

if z >= delta2 && z <= delta1
    res = 0.5 * (1 - tanh(1/(z-delta2) + 1/(z-delta1))^2)*(1/(z-delta2)^2 + 1/(z-delta1)^2);
else
    res = 0;
end

end

