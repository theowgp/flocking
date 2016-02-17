function res = g( z )

global delta1 delta2;


if z <= delta2
    res = 0;
else
    if z <= delta1
        res = 0.5 - 0.5 * tanh( 1/(z-delta2) + 1/(z-delta1) );
    else
        res = 1;
    end
end


end

