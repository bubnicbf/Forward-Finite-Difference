# Forward-Finite-Difference
produces a list of numbers which is the n-th order forward difference, given a non-negative integer (specifying the order) and a list of numbers

A finite difference is a mathematical expression of the form $f(x + b) − f(x + a)$. If a finite difference is divided by $b − a$, one gets a difference quotient. The approximation of derivatives by finite differences plays a central role in finite difference methods for the numerical solution of differential equations, especially boundary value problems.

####Forward, backward, and central differences
Three forms are commonly considered: forward, backward, and central differences.

A forward difference is an expression of the form

$$
 \Delta_h[f](x) =  f(x + h) - f(x) 
$$

Depending on the application, the spacing h may be variable or constant. When omitted, $h$ is taken to be 1: $\Delta[f](x) = \Delta_1[f](x)$.

A backward difference uses the function values at $x$ and $x − h$, instead of the values at $x + h$ and $x$:

$$
 \nabla_h[f](x) =  f(x) - f(x-h)
$$

Finally, the central difference is given by

$$
 \delta_h[f](x) =  f(x+\tfrac12h)-f(x-\tfrac12h)
$$
