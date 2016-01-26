function [] = phase_portrait_trajectories(deriv_func, ...
    x_range, y_range, num_points, x_vals, y_vals, time_span)
%PHASE_PORTRAIT_TRAJECTORIES Summary of this function goes here
    hold on 
    phase_portrait(deriv_func, x_range, y_range, num_points);
    for i = x_vals
        for j = y_vals
            [~, sols] = ode45(deriv_func,[0,time_span], [i;j]);
            plot(sols(:,1),sols(:,2));
            plot(sols(1,1),sols(1,2),'bo') % starting point
            plot(sols(end,1),sols(end,2),'ks') % ending point
        end
    end
    axis([x_range, y_range]);
    hold off
end

