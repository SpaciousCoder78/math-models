% Define parameters
t = 0:0.1:10; % Time vector
n = 1:3; % Mode number

% Initialize solution matrix
sol = zeros(length(n), length(t));

% Calculate solution for each mode
for i = 1:length(n)
    expval = exp(-n(i)^2 * pi^2 * t);
    sinval = sin(n(i) * pi);
    sol(i, :) = 3 * expval * sinval;
end

% Plot the solution
figure;
hold on;
for i = 1:length(n)
    plot(t, sol(i, :), 'DisplayName', ['Mode ' num2str(n(i))]);
end
hold off;
xlabel('Time');
ylabel('Solution');
title('1D Heat Equation Solution');
legend show;
