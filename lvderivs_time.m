function F = lvderivs_time(t, co_ords)
%LVDERIVS_TIME Calculate a vector of the derivate of the two functions in 
%our Lotka-Volterra Dynamical System.
    if size(co_ords,2) > 1
        co_ords = co_ords';
    end
    F = lvderivs(co_ords);
    F=F';
end

