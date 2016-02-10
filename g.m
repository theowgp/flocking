function res = g( z )

delta1 = cos(1.047);
delta2 = cos(1.57);

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

