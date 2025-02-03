function fval = rodConduc(t, y)

    % Parameters
    Ta = 25;
    alpha = 0.025;
    beta = 0.1;

    % Number of internal nodes
    N = length(y);
    h = 1 / (N + 1); % Assuming the rod has a length of 1

    % Boundary conditions
    T = [100; y; Ta]; % T(1) = 100, T(N+2) = Ta

    % Initialize dTdt
    dTdt = zeros(N, 1);

    % Compute dT/dt for internal nodes
    for i = 2:N+1
        dTdt(i-1) = alpha / h^2 * (T(i+1) - 2*T(i) + T(i-1)) - beta * (T(i) - Ta);
    end

    % Extract fval
    fval = dTdt;

end

% Running transient heat conduction in rod
N = 10; % Number of internal nodes
T0 = [100; 25 * ones(N-1, 1)]; % Initial conditions

% Solving ODE
tSpan = [0 20];
y0 = T0(2:end); % Initial conditions for internal nodes
[tSol, TSol] = ode45(@(t, y) rodConduc(t, y), tSpan, y0);

% Plotting the solution at the midpoint
midpoint = ceil(N / 2);
plot(tSol, TSol(:, midpoint));
xlabel('Time');
ylabel('Temperature');
title('Temperature at Midpoint of the Rod');
grid on;
