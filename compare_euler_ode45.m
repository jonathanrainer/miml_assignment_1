clf
[t,y] = ode45(@lvderivs_time,0:0.0001:50, [d/c,2.5]);
grid_x_size = 5;
for i=1:grid_x_size
    time_steps = linspace(0.1,0.001,grid_x_size);
    subplot(2,grid_x_size,i);
    sols = euler_method(@lvderivs, time_steps(i), 50, 2.5);
    hold on
    plot(t,y(:,1))
    plot(sols(:,1),sols(:,2))
    title(sprintf('x(t) for timestep = %f', time_steps(i)));
    legend('ode45','Euler Method')
    hold off
    subplot(2,grid_x_size,i+grid_x_size)
    hold on
    plot(t,y(:,2))
    plot(sols(:,1),sols(:,3))
    legend('ode45','Euler Method')
    title(sprintf('y(t) for timestep = %f', time_steps(i)));
    hold off
end
