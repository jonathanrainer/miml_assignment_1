function equilibria = equilibria_finder(iterations, sim_threshold, ...
round_threshold, rounded_dec_places, rand_min, rand_max)
%EQUILIBRIA_FINDER Will find the fixed points of a given dynamical system.
%   Runs fsolve over a number of iterations to try and discover as 
%   many points of the dynamical system as possible. 

    % Set up a structure to store the output equilibrium
    equilibria = {};
    % Perform fsolve, the specified number of times, checking for
    % duplicates each time.
    for i=1:iterations
        % Turn off display even if a solution is found, we don't care about
        % help dialogs.
        options = optimset('Display','Off');
        % Find a result of the equation
        eq_temp = fsolve(@lvderivs, rand(1,2)*5, options);
        % Check if the fractional part of what's been found is 
        % large enough to merit consideration
        if abs(eq_temp - fix(eq_temp)) < round_threshold
            % If not then round it to the specified number of decimal
            % places
            eq_temp = round(eq_temp, rounded_dec_places);
        end
        % Add in the new solution to the current set of equilibria
        equilibria = duplicate_checker(sim_threshold, equilibria, eq_temp);
    end
end

function equilibria_new = duplicate_checker(sim_threshold, equilibria, ...
candidate)
% DUPLICATE_CHECKER Looks at the given candidate to test if it's already
% present within the set of found equilibria
    % Iterate through the equilibria we already have
    for i=1:size(equilibria, 1)
        % Compare each one to the candidate in turn, and see if it's lower
        % than the similarity threshold (turned into a vector due to
        % MatLab's syntax).
        if abs(equilibria{i, 1} - candidate) < sim_threshold
            % If it is then there is no need to add a new equilibria
            equilibria_new = equilibria;
            return
        end
    end
    % If no similar element is found then add in the candidate.
    equilibria_new = [equilibria ; candidate];
end