function [] = phase_portrait(deriv_func, x_range, y_range, num_points)
%PHASE_PORTRAIT Plot the phase portrait for a given derivative function.
    % Generate a mesh grid of points so that we have data to feed into
    % derivative function.
    [x,y] = meshgrid(linspace(x_range(1), x_range(2), num_points), ...
                        linspace(y_range(1), y_range(2), num_points));
    % Preallocate arrays to hold the values of dx/dt and dy/dt resp. at
    % each x,y position.
    u = zeros(size(x));
    v = zeros(size(x));
    for i = 1:numel(x)
        derivs = deriv_func([x(i), y(i)]);
        u(i) = derivs(1);
        v(i) = derivs(2);
    end
    for i = 1:numel(x)
        vec_mod = sqrt(u(i)^2 + v(i)^2);
        u(i) = u(i)/vec_mod;
        v(i) = v(i)/vec_mod;
    end
    quiver(x,y,u,v,'r');
    figure(gcf)
    xlabel('x')
    ylabel('y')
    axis tight equal;
end

