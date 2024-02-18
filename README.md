# Discription of Runge Kutta method and it's implementation
<h1>INTRODUCTION</h1>
<p>To work with mathematical problems that either don&#39;t have analytical answers or are too complicated
to be solved through normal methods, numerical methods are essential. These methods involve
approximating solutions and providing numerical responses to mathematical models through the use of
computing algorithms. Numerical methods are essential in scientific and technical contexts for solving a
variety of issues, such as those requiring differential equations, optimization, and simulations in a easy
way than the normal traditional methods. One of such methods to solve Ordinary Differential Equations
is RK-4 method also known as Runge Kutta 4 th order method.
There are two of such methods:
● Runge Kutta Second Order
● Runge Kutta Forth Order</p>

<h2>Theoretical Backgrond</h2>
<p>The approximation of the solution over the specified range is made possible by an iterative process that
splits the solution interval into discrete stages. The basic principle includes:

<h3> Iterative procedure</h3>
Here, the ODE is broken to smaller steps and solved.
<h3>Slope calculation</h3> 
Using the derivative of the ODE, the approach determines the slopes of the solution at various
locations inside each step.
<h3>Weighted Average</h3>
Using the derivative of the ODE, the approach determines the slopes of the solution at various
locations inside each step.
<h3>Midpoint Estimation</h3>
The intervals are calculated at the beginning of the process.
<h3>Refinement of slopes</h3>
The slopes are further calculated at the midpoints.
<h3>Final solution update</h3>
The final solution is calculated by combining the refined steps for more accuracy at end of steps.</p>
<h2>Runge Kutta-2 Overview</h2>

<p>The second-order Runge-Kutta method (RK2), also known as the midpoint method, is a numerical technique for solving ordinary differential equations (ODEs). The RK2 method is simpler than the RK4 method but still provides a reasonable level of accuracy. It uses two evaluations of the derivative function to estimate the solution at the next time step.

For a first-order ordinary differential equation of the form:

dydt=f(t,y)dtdy​=f(t,y)

The RK2 method can be expressed as follows:

k1=h⋅f(tn,yn)k1​=h⋅f(tn​,yn​)
k2=h⋅f(tn+h2,yn+k12)k2​=h⋅f(tn​+2h​,yn​+2k1​​)
yn+1=yn+k2yn+1​=yn​+k2​

Here, hh is the step size, tntn​ and ynyn​ represent the current time and the current value of the dependent variable, and yn+1yn+1​ is the estimate of the dependent variable at the next time step.

<h3>The RK2 method involves two stages:</h3>

    First stage (compute k1k1​):
        Calculate k1k1​ by evaluating the derivative function f(tn,yn)f(tn​,yn​) at the current time and state.
    Second stage (compute k2k2​ and update yn+1yn+1​):
        Use k1k1​ to estimate the state at the midpoint of the interval.
        Calculate k2k2​ by evaluating the derivative function f(tn+h2,yn+k12)f(tn​+2h​,yn​+2k1​​) at the midpoint.
        Update yn+1yn+1​ based on the weighted average of k2k2​.

The RK2 method strikes a balance between simplicity and accuracy and is often used when a moderate level of accuracy is sufficient, and computational efficiency is crucial.</p>

<h2>Runge Kutta-4 Overview</h2>

<p>
One well-known numerical method for solving ordinary differential equations (ODEs) is the fourth-order
Runge-Kutta (RK-4) method. Each iteration of RK-4, which is well-known for its accuracy and efficiency,
follows a four-step procedure.
It starts with a slope evaluation at the starting point, using these slopes to estimate the behavior of the
solution over a short time interval. The solution estimate is then improved by the method&#39;s computation
of a midpoint prediction and subsequent recalculation of slopes at this midpoint. These improved slopes
are used to calculate the final solution update.
RK-4 is a highly favored option in scientific simulations, engineering analysis, and other applications
where accurate approximations of ODE solutions are essential due to its noteworthy fourth-order
precision.
</p>

<h3>Steps for Rk-4 method</h3>
<p font="italic">   
    1. Start

2. Define function f(x,y)

3. Read values of initial condition(x0 and y0),
Number of steps (n) and calculation point (xn)
4. Calculate step size as h
(h) = (xn - x0)/n

5. initialize a variable be i as 0

6. Loop
k1 = h * f(x0, y0)
k2 = h * f(x0+h/2, y0+k1/2)
k3 = h * f(x0+h/2, y0+k2/2)
k4 = h * f(x0+h, y0+k3)
k = (k1+2*k2+2*k3+k4)/6
yn = y0 + k
i = i + 1
x0 = x0 + h
y0 = yn
While i &lt; n

7. yn will be the result

8. Stop
</p>

