clf
suptitle(sprintf('ODE45 Plots for d/c at various starting values\n\n'));
for p = 1:3
    start_val = rand_range(1,3,1);
    for k = 1:3
        subplot(3,3,(p-1)*3 + k)
        [t,y] = ode45(@lvderivs_time, 0:0.1:k*50, [d/c,start_val]);
        plot(t,y)
        legend({'x(t)','y(t)'},'FontSize', 16);
        xlabel('Time', 'FontSize', 16);
        ylabel('Solution Variable', 'FontSize', 16);
        title(sprintf('t = %d, ystart = %d', k*50, start_val), ...
            'FontSize', 16);
    end
end