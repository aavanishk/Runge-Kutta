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

<h2>Runge Kutta second method</h2>

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
