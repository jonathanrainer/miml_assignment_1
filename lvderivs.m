function F = lvderivs(co_ords)
%LVDERIVS Calculate a vector of the derivate of the two functions in 
%our Lotka-Volterra Dynamical System.

    % Set up constants and define as global
    global a b c d
    a = 1.0;
    b = 0.75;
    c = 0.5;
    d = 0.8;
   
    % Factor out the recurring product to save space
    xy = co_ords(1)*co_ords(2);
    
    % Calculate derivatives
    dxdt = a*co_ords(1) - b*xy;
    dydt = c*xy - d*co_ords(2);
    
    % Arrange derivatives into the output vector
    F = [dxdt, dydt];
end

