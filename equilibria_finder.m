function equilibria = equilibria_finder(iterations)
%EQUILIBRIA_FINDER Will find the fixed points of a given dynamical system.
%   Runs fsolve over a number of iterations to try and discover as 
%   many points of the dynamical system as possible. 

    % Set up a structure to store the output equilibrium
    equilibria = zeros(iterations, 2);
    
%     for i=1:iterations
%         options = optimset('Display','Off');
%         [eq_temp,~,exit,~] = fsolve(@lvderivs, rand(1,2), options);
%         if (exit >= 0) && ismember(eq_temp, equilibria, 'rows') == 0
%             equilibria(i,:) = eq_temp;
%         end
%     end
end

