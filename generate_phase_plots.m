clf
for k = 1:3
    subplot(1,3, k)
    phase_portrait_trajectories(@lvderivs_time, [0,4],[0,4],30, ...
        d/c, 0:0.5:3 ,k*50)
    title(sprintf('t = %d', k*50), 'FontSize', 16);
end