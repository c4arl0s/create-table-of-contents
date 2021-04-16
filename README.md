# [go back to Overview](https://github.com/c4arl0s)

# [Create Content Index Script](https://github.com/c4arl0s/CreateContentIndexScript#go-back-to-overview)

It creates a content Index in markdown syntax to inter into any project.

1. [Replace special characters considering markdown rules](https://github.com/c4arl0s/CreateContentIndexScript#1-replace-special-characters-considering-markdown-rules)

# 1. [Replace special characters considering markdown rules](https://github.com/c4arl0s/CreateContentIndexScript#create-content-index-script)

```sh
cat $1 | while read line
do 
    echo "creating content index"
    # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
    processedLine=`echo $line | tr ' ' '-' | tr '[A-Z]' '[a-z]'| tr '.' '-' | tr -d '\47'`
    echo "$processedLine"
done
```

Input:

```txt
Floating point numbers
Absolute and relative errors
Roundoff and truncation errors
The remainder term in Taylor's formula
Lagrange interpolation
Newton interpolation
Hermite interpolation
The error of the Newton interpolation polynomial
Finite differences
Newton interpolation with equidistant points
The Lagrange form of Hermite interpolation
Solution of nonlinear equations
Programs for solving nonlinear equation
Newton's method for polynomial equations
Fixed-point iteration
Aitken's acceleration
The speed of convergence of Newton's method
Numerical differentiation of tables
Numerical differentiation of functions
Simple numerical integration formulas
Composite numerical integration formulas
Adaptive integration
Adaptive integration with Simpson's rule
The Euler-Maclaurin summation formula
Romberg integration
Integrals with singularities
Numerical solution of differential equations
Runge-Kutta methods
Predictor-Corrector methods
Recurrence equations
Numerical instability
Gaussian elimination
The Doolittle and Crout algorithms. Equilibration
Determinants
Positive definite matrices
Jacobi and Gauss-Seidel iterations
Cubic splines
Overdetermined systems of linear equations
The power method to find eigenvalues
The inverse power method
Wielandt's deflation
Similarity transformations and the QR algorithm
Spectral radius and Gauss-Seidel iteration
Orthogonal polynomials
Gauss's quadrature formula
The Chebyshev polynomials
Boundary value problems and the finite element method
The heat equation
```

Console output:

```console
creating content index
floating-point-numbers
creating content index
absolute-and-relative-errors
creating content index
roundoff-and-truncation-errors
creating content index
the-remainder-term-in-taylors-formula
creating content index
lagrange-interpolation
creating content index
newton-interpolation
creating content index
hermite-interpolation
creating content index
the-error-of-the-newton-interpolation-polynomial
creating content index
finite-differences
creating content index
newton-interpolation-with-equidistant-points
creating content index
the-lagrange-form-of-hermite-interpolation
creating content index
solution-of-nonlinear-equations
creating content index
programs-for-solving-nonlinear-equation
creating content index
newtons-method-for-polynomial-equations
creating content index
fixed-point-iteration
creating content index
aitkens-acceleration
creating content index
the-speed-of-convergence-of-newtons-method
creating content index
numerical-differentiation-of-tables
creating content index
numerical-differentiation-of-functions
creating content index
simple-numerical-integration-formulas
creating content index
composite-numerical-integration-formulas
creating content index
adaptive-integration
creating content index
adaptive-integration-with-simpsons-rule
creating content index
the-euler-maclaurin-summation-formula
creating content index
romberg-integration
creating content index
integrals-with-singularities
creating content index
numerical-solution-of-differential-equations
creating content index
runge-kutta-methods
creating content index
predictor-corrector-methods
creating content index
recurrence-equations
creating content index
numerical-instability
creating content index
gaussian-elimination
creating content index
the-doolittle-and-crout-algorithms--equilibration
creating content index
determinants
creating content index
positive-definite-matrices
creating content index
jacobi-and-gauss-seidel-iterations
creating content index
cubic-splines
creating content index
overdetermined-systems-of-linear-equations
creating content index
the-power-method-to-find-eigenvalues
creating content index
the-inverse-power-method
creating content index
wielandts-deflation
creating content index
similarity-transformations-and-the-qr-algorithm
creating content index
spectral-radius-and-gauss-seidel-iteration
creating content index
orthogonal-polynomials
creating content index
gausss-quadrature-formula
creating content index
the-chebyshev-polynomials
creating content index
boundary-value-problems-and-the-finite-element-method
```