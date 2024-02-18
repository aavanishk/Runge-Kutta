% Function to define the derivative
function dydt = derivative_function(t, y)
    % Example: dy/dt = -y (decay)
    dydt = -y;
end

% Function to perform RK4 method
function [time_values, y_values] = runge_kutta_4(derivative, t_initial, y_initial, h, n)
    time_values = zeros(1, n + 1);
    y_values = zeros(1, n + 1);
    
    time_values(1) = t_initial;
    y_values(1) = y_initial;
    
    for i = 1:n
        k1 = h * derivative(time_values(i), y_values(i));
        k2 = h * derivative(time_values(i) + h/2, y_values(i) + k1/2);
        k3 = h * derivative(time_values(i) + h/2, y_values(i) + k2/2);
        k4 = h * derivative(time_values(i) + h, y_values(i) + k3);
        
        y_values(i+1) = y_values(i) + (k1 + 2*k2 + 2*k3 + k4) / 6;
        time_values(i+1) = time_values(i) + h;
    end
end

% User inputs
t_initial = input('Enter initial time (t_initial): ');
y_initial = input('Enter initial value of y (y_initial): ');
h = input('Enter step size (h): ');
n = input('Enter number of steps (n): ');

% Run RK4 method
[time_values_rk4, y_values_rk4] = runge_kutta_4(@derivative_function, t_initial, y_initial, h, n);

% Display results
disp('Results (RK4):');
disp('Time     Value of y');
disp([time_values_rk4', y_values_rk4']);
