function sols = euler_method(deriv_function, step_size, time_limit, ...
    y_start)
%EULER_METHOD Uses the Euler method to provide approximate solutions to the
%dynamical system specified in deriv_function.
    global d c;
    iteration_number = ceil(time_limit/step_size);
    sols = zeros(iteration_number,3);
    sols(1,:) = [0,d/c,y_start];
    for i=2:iteration_number
        derivs = deriv_function(sols(i-1,2:3));
        sols(i,:) = [sols(i-1)+step_size, sols(i-1,2) + ...
            step_size*derivs(1), sols(i-1,3) + step_size*derivs(2)];
    end
end

