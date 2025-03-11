% Define symbolic variables
syms x;
y = x^2; % Define the function y = x^2

% First-order derivative
dy_dx = diff(y, x);

% Second-order derivative
d2y_dx2 = diff(y, x, 2);

% Display results
disp('First-order derivative:');
disp(dy_dx);

disp('Second-order derivative:');
disp(d2y_dx2);

% Evaluate the second derivative at a specific point (e.g., x = 1)
x_value = 1;
d2y_dx2_value = double(subs(d2y_dx2, x, x_value));

disp(['Second derivative at x = ', num2str(x_value), ':']);
disp(d2y_dx2_value);

% Check if the second derivative matches the expected value (2)
if d2y_dx2_value == 2
    disp('The second derivative matches the expected value of 2.');
else
    disp('The second derivative does not match the expected value of 2.');
end
