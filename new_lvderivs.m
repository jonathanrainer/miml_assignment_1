function F = new_lvderivs(co_ords)
%NEW_LVDERIVS Calculate a vector of the derivate of the two functions in 
%our Lotka-Volterra Dynamical System with a change made to allow for 
%non-exponential growth in the prey population.

    % Set up constants and define as global
    a = 1.0;
    b = 0.75;
    c = 0.5;
    d = 0.8;
    K = 2;
   
    % Factor out the recurring product to save space
    xy = co_ords(1)*co_ords(2);
    
    % Calculate derivatives
    dxdt = a*co_ords(1)*(1-co_ords(1)/K) - b*xy;
    dydt = c*xy - d*co_ords(2);
    
    % Arrange derivatives into the output vector
    F = [dxdt, dydt];
end