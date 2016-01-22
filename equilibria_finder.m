function equilibria = equilibria_finder(iterations)
%EQUILIBRIA_FINDER Summary of this function goes here
%   Detailed explanation goes here
    equilibria = zeros(iterations, 2);
    for i=1:iterations
        options = optimset('Display','Off');
        [eq_temp,~,exit,~] = fsolve(@lvderivs, rand(1,2), options);
        if (exit >= 0) && ismember(eq_temp, equilibria, 'rows') == 0
            equilibria(i,:) = eq_temp;
        end
    end
end

