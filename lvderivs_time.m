function F = lvderivs_time(t, co_ords)
%LVDERIVS_TIME Calculate a vector of the derivate of the two functions in 
%our Lotka-Volterra Dynamical System.
    % Constants
    global a b c d
    a = 1.0;
    b = 0.75;
    c = 1.6;
    d = 0.4;
   
    % Recurring parts 
    xy = co_ords(1)*co_ords(2);
    
    % Calculate derivatives
    dxdt = a*co_ords(1) - b*xy;
    dydt = c*xy - d*co_ords(2);
    
    % Arrange derivatives into a vector
    F = [dxdt; dydt];
end

