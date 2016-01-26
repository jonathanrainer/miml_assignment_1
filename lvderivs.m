function F = lvderivs(co_ords)
%LVDERIVS Calculate a vector of the derivates
% of the two functions in our Lotke-Volterra System
    
    % Constants
    global a b c d
    a = 1.0;
    b = 0.75;
    c = 0.5;
    d = 0.8;
   
    % Recurring parts 
    xy = co_ords(1)*co_ords(2);
    
    % Calculate derivatives
    dxdt = a*co_ords(1) - b*xy;
    dydt = c*xy - d*co_ords(2);
    
    % Arrange derivatives into a vector
    F = [dxdt, dydt];
end

