def derivative_function(t, y):
    # Example: dy/dt = -y (decay)
    return -y

def runge_kutta_4(f, t_initial, y_initial, h, n):
    t_values = [t_initial]
    y_values = [y_initial]

    for i in range(1, n + 1):
        k1 = h * f(t_values[i-1], y_values[i-1])
        k2 = h * f(t_values[i-1] + h/2, y_values[i-1] + k1/2)
        k3 = h * f(t_values[i-1] + h/2, y_values[i-1] + k2/2)
        k4 = h * f(t_values[i-1] + h, y_values[i-1] + k3)

        y_i = y_values[i-1] + (k1 + 2*k2 + 2*k3 + k4) / 6
        t_i = t_values[i-1] + h

        y_values.append(y_i)
        t_values.append(t_i)

    return t_values, y_values

# Take user inputs
t_initial = float(input("Enter initial time (t_initial): "))
y_initial = float(input("Enter initial value of y (y_initial): "))
h = float(input("Enter step size (h): "))
n = int(input("Enter number of steps (n): "))

# Run RK4 method
time_values, y_values = runge_kutta_4(derivative_function, t_initial, y_initial, h, n)

# Print results
print("\nResults:")
print("Time\tValue of y")
for t, y in zip(time_values, y_values):
    print(f"{t:.2f}\t{y:.4f}")
