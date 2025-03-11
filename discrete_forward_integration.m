% Given data points
x = [1, 2, 3];
y = [1, 4, 9];

% First-order forward derivative
dy_dx_1st_order = diff(y) ./ diff(x);

% Second-order forward derivative
d2y_dx2_2nd_order = diff(dy_dx_1st_order) ./ diff(x(1:end-1));

% Display results
disp('First-order forward derivative:');
disp(dy_dx_1st_order);

disp('Second-order forward derivative:');
disp(d2y_dx2_2nd_order);
