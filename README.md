# [go back to Overview](https://github.com/c4arl0s)

# [Create Content Index Script](https://github.com/c4arl0s/CreateContentIndexScript#go-back-to-overview)

It creates a content Index in markdown syntax to inter into any project.

1. [Replace special characters considering markdown rules](https://github.com/c4arl0s/CreateContentIndexScript#1-replace-special-characters-considering-markdown-rules)
2. [Process each line to get a link]()
3. [Create both parts, index and Title links]()

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

# 2. [Process each line to get a link]()

```sh
repositoryName=$2
processedRepositoryName=`echo $repositoryName | tr '[A-Z]' '[a-z]'`
numberOfLines=`cat $1 | wc -l`
number=`expr $numberOfLines`
echo "Number of Lines = $number"
index=0
cat $1 | while read line
do 
    let index=$index+1
    enumeratedLine=`echo "$index. [$line]()"`  
    # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
    processedLine=`echo $line | tr ' ' '-' | tr '[A-Z]' '[a-z]'| tr '.' '-' | tr -d '\47'`
    titleLine=`echo $enumeratedLine | sed "s/]()/]($processedLine)/"`
    linkLine=`echo $titleLine | sed "s/^/# /"`
    masterLine=`echo "#$enumeratedLine" | tr ' ' '-' | tr -d '.' | tr -d ']()' | tr -d '['`
    echo "original Line: $line"
    echo "enumerated line: $enumeratedLine"
    echo "processed line: $processedLine"
    echo "title line: $titleLine"
    echo "link line: $linkLine"
    echo "master link: $masterLine"
    enumeratedLinePlusLink=`echo $enumeratedLine | sed "s/]()/](https:\/\/github.com\/c4arl0s\/$processedRepositoryName$masterLine)/"`
    echo "enumerated line plus link: $enumeratedLinePlusLink"
    echo "==="
    
done


# cat $1 | while read line
# do 
#     echo "creating content index"
#     # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
#     processedLine=`echo $line | tr ' ' '-' | tr '[A-Z]' '[a-z]'| tr '.' '-' | tr -d '\47'`
#     echo "$processedLine"
# done
```

Console output:

```console
Number of Lines = 47
original Line: Floating point numbers
enumerated line: 1. [Floating point numbers]()
processed line: floating-point-numbers
title line: 1. [Floating point numbers](floating-point-numbers)
link line: # 1. [Floating point numbers](floating-point-numbers)
master link: #1-Floating-point-numbers
enumerated line plus link: 1. [Floating point numbers](https://github.com/c4arl0s/repositoryname#1-Floating-point-numbers)
===
original Line: Absolute and relative errors
enumerated line: 2. [Absolute and relative errors]()
processed line: absolute-and-relative-errors
title line: 2. [Absolute and relative errors](absolute-and-relative-errors)
link line: # 2. [Absolute and relative errors](absolute-and-relative-errors)
master link: #2-Absolute-and-relative-errors
enumerated line plus link: 2. [Absolute and relative errors](https://github.com/c4arl0s/repositoryname#2-Absolute-and-relative-errors)
===
original Line: Roundoff and truncation errors
enumerated line: 3. [Roundoff and truncation errors]()
processed line: roundoff-and-truncation-errors
title line: 3. [Roundoff and truncation errors](roundoff-and-truncation-errors)
link line: # 3. [Roundoff and truncation errors](roundoff-and-truncation-errors)
master link: #3-Roundoff-and-truncation-errors
enumerated line plus link: 3. [Roundoff and truncation errors](https://github.com/c4arl0s/repositoryname#3-Roundoff-and-truncation-errors)
===
original Line: The remainder term in Taylor's formula
enumerated line: 4. [The remainder term in Taylor's formula]()
processed line: the-remainder-term-in-taylors-formula
title line: 4. [The remainder term in Taylor's formula](the-remainder-term-in-taylors-formula)
link line: # 4. [The remainder term in Taylor's formula](the-remainder-term-in-taylors-formula)
master link: #4-The-remainder-term-in-Taylor's-formula
enumerated line plus link: 4. [The remainder term in Taylor's formula](https://github.com/c4arl0s/repositoryname#4-The-remainder-term-in-Taylor's-formula)
===
original Line: Lagrange interpolation
enumerated line: 5. [Lagrange interpolation]()
processed line: lagrange-interpolation
title line: 5. [Lagrange interpolation](lagrange-interpolation)
link line: # 5. [Lagrange interpolation](lagrange-interpolation)
master link: #5-Lagrange-interpolation
enumerated line plus link: 5. [Lagrange interpolation](https://github.com/c4arl0s/repositoryname#5-Lagrange-interpolation)
===
original Line: Newton interpolation
enumerated line: 6. [Newton interpolation]()
processed line: newton-interpolation
title line: 6. [Newton interpolation](newton-interpolation)
link line: # 6. [Newton interpolation](newton-interpolation)
master link: #6-Newton-interpolation
enumerated line plus link: 6. [Newton interpolation](https://github.com/c4arl0s/repositoryname#6-Newton-interpolation)
===
original Line: Hermite interpolation
enumerated line: 7. [Hermite interpolation]()
processed line: hermite-interpolation
title line: 7. [Hermite interpolation](hermite-interpolation)
link line: # 7. [Hermite interpolation](hermite-interpolation)
master link: #7-Hermite-interpolation
enumerated line plus link: 7. [Hermite interpolation](https://github.com/c4arl0s/repositoryname#7-Hermite-interpolation)
===
original Line: The error of the Newton interpolation polynomial
enumerated line: 8. [The error of the Newton interpolation polynomial]()
processed line: the-error-of-the-newton-interpolation-polynomial
title line: 8. [The error of the Newton interpolation polynomial](the-error-of-the-newton-interpolation-polynomial)
link line: # 8. [The error of the Newton interpolation polynomial](the-error-of-the-newton-interpolation-polynomial)
master link: #8-The-error-of-the-Newton-interpolation-polynomial
enumerated line plus link: 8. [The error of the Newton interpolation polynomial](https://github.com/c4arl0s/repositoryname#8-The-error-of-the-Newton-interpolation-polynomial)
===
original Line: Finite differences
enumerated line: 9. [Finite differences]()
processed line: finite-differences
title line: 9. [Finite differences](finite-differences)
link line: # 9. [Finite differences](finite-differences)
master link: #9-Finite-differences
enumerated line plus link: 9. [Finite differences](https://github.com/c4arl0s/repositoryname#9-Finite-differences)
===
original Line: Newton interpolation with equidistant points
enumerated line: 10. [Newton interpolation with equidistant points]()
processed line: newton-interpolation-with-equidistant-points
title line: 10. [Newton interpolation with equidistant points](newton-interpolation-with-equidistant-points)
link line: # 10. [Newton interpolation with equidistant points](newton-interpolation-with-equidistant-points)
master link: #10-Newton-interpolation-with-equidistant-points
enumerated line plus link: 10. [Newton interpolation with equidistant points](https://github.com/c4arl0s/repositoryname#10-Newton-interpolation-with-equidistant-points)
===
original Line: The Lagrange form of Hermite interpolation
enumerated line: 11. [The Lagrange form of Hermite interpolation]()
processed line: the-lagrange-form-of-hermite-interpolation
title line: 11. [The Lagrange form of Hermite interpolation](the-lagrange-form-of-hermite-interpolation)
link line: # 11. [The Lagrange form of Hermite interpolation](the-lagrange-form-of-hermite-interpolation)
master link: #11-The-Lagrange-form-of-Hermite-interpolation
enumerated line plus link: 11. [The Lagrange form of Hermite interpolation](https://github.com/c4arl0s/repositoryname#11-The-Lagrange-form-of-Hermite-interpolation)
===
original Line: Solution of nonlinear equations
enumerated line: 12. [Solution of nonlinear equations]()
processed line: solution-of-nonlinear-equations
title line: 12. [Solution of nonlinear equations](solution-of-nonlinear-equations)
link line: # 12. [Solution of nonlinear equations](solution-of-nonlinear-equations)
master link: #12-Solution-of-nonlinear-equations
enumerated line plus link: 12. [Solution of nonlinear equations](https://github.com/c4arl0s/repositoryname#12-Solution-of-nonlinear-equations)
===
original Line: Programs for solving nonlinear equation
enumerated line: 13. [Programs for solving nonlinear equation]()
processed line: programs-for-solving-nonlinear-equation
title line: 13. [Programs for solving nonlinear equation](programs-for-solving-nonlinear-equation)
link line: # 13. [Programs for solving nonlinear equation](programs-for-solving-nonlinear-equation)
master link: #13-Programs-for-solving-nonlinear-equation
enumerated line plus link: 13. [Programs for solving nonlinear equation](https://github.com/c4arl0s/repositoryname#13-Programs-for-solving-nonlinear-equation)
===
original Line: Newton's method for polynomial equations
enumerated line: 14. [Newton's method for polynomial equations]()
processed line: newtons-method-for-polynomial-equations
title line: 14. [Newton's method for polynomial equations](newtons-method-for-polynomial-equations)
link line: # 14. [Newton's method for polynomial equations](newtons-method-for-polynomial-equations)
master link: #14-Newton's-method-for-polynomial-equations
enumerated line plus link: 14. [Newton's method for polynomial equations](https://github.com/c4arl0s/repositoryname#14-Newton's-method-for-polynomial-equations)
===
original Line: Fixed-point iteration
enumerated line: 15. [Fixed-point iteration]()
processed line: fixed-point-iteration
title line: 15. [Fixed-point iteration](fixed-point-iteration)
link line: # 15. [Fixed-point iteration](fixed-point-iteration)
master link: #15-Fixed-point-iteration
enumerated line plus link: 15. [Fixed-point iteration](https://github.com/c4arl0s/repositoryname#15-Fixed-point-iteration)
===
original Line: Aitken's acceleration
enumerated line: 16. [Aitken's acceleration]()
processed line: aitkens-acceleration
title line: 16. [Aitken's acceleration](aitkens-acceleration)
link line: # 16. [Aitken's acceleration](aitkens-acceleration)
master link: #16-Aitken's-acceleration
enumerated line plus link: 16. [Aitken's acceleration](https://github.com/c4arl0s/repositoryname#16-Aitken's-acceleration)
===
original Line: The speed of convergence of Newton's method
enumerated line: 17. [The speed of convergence of Newton's method]()
processed line: the-speed-of-convergence-of-newtons-method
title line: 17. [The speed of convergence of Newton's method](the-speed-of-convergence-of-newtons-method)
link line: # 17. [The speed of convergence of Newton's method](the-speed-of-convergence-of-newtons-method)
master link: #17-The-speed-of-convergence-of-Newton's-method
enumerated line plus link: 17. [The speed of convergence of Newton's method](https://github.com/c4arl0s/repositoryname#17-The-speed-of-convergence-of-Newton's-method)
===
original Line: Numerical differentiation of tables
enumerated line: 18. [Numerical differentiation of tables]()
processed line: numerical-differentiation-of-tables
title line: 18. [Numerical differentiation of tables](numerical-differentiation-of-tables)
link line: # 18. [Numerical differentiation of tables](numerical-differentiation-of-tables)
master link: #18-Numerical-differentiation-of-tables
enumerated line plus link: 18. [Numerical differentiation of tables](https://github.com/c4arl0s/repositoryname#18-Numerical-differentiation-of-tables)
===
original Line: Numerical differentiation of functions
enumerated line: 19. [Numerical differentiation of functions]()
processed line: numerical-differentiation-of-functions
title line: 19. [Numerical differentiation of functions](numerical-differentiation-of-functions)
link line: # 19. [Numerical differentiation of functions](numerical-differentiation-of-functions)
master link: #19-Numerical-differentiation-of-functions
enumerated line plus link: 19. [Numerical differentiation of functions](https://github.com/c4arl0s/repositoryname#19-Numerical-differentiation-of-functions)
===
original Line: Simple numerical integration formulas
enumerated line: 20. [Simple numerical integration formulas]()
processed line: simple-numerical-integration-formulas
title line: 20. [Simple numerical integration formulas](simple-numerical-integration-formulas)
link line: # 20. [Simple numerical integration formulas](simple-numerical-integration-formulas)
master link: #20-Simple-numerical-integration-formulas
enumerated line plus link: 20. [Simple numerical integration formulas](https://github.com/c4arl0s/repositoryname#20-Simple-numerical-integration-formulas)
===
original Line: Composite numerical integration formulas
enumerated line: 21. [Composite numerical integration formulas]()
processed line: composite-numerical-integration-formulas
title line: 21. [Composite numerical integration formulas](composite-numerical-integration-formulas)
link line: # 21. [Composite numerical integration formulas](composite-numerical-integration-formulas)
master link: #21-Composite-numerical-integration-formulas
enumerated line plus link: 21. [Composite numerical integration formulas](https://github.com/c4arl0s/repositoryname#21-Composite-numerical-integration-formulas)
===
original Line: Adaptive integration
enumerated line: 22. [Adaptive integration]()
processed line: adaptive-integration
title line: 22. [Adaptive integration](adaptive-integration)
link line: # 22. [Adaptive integration](adaptive-integration)
master link: #22-Adaptive-integration
enumerated line plus link: 22. [Adaptive integration](https://github.com/c4arl0s/repositoryname#22-Adaptive-integration)
===
original Line: Adaptive integration with Simpson's rule
enumerated line: 23. [Adaptive integration with Simpson's rule]()
processed line: adaptive-integration-with-simpsons-rule
title line: 23. [Adaptive integration with Simpson's rule](adaptive-integration-with-simpsons-rule)
link line: # 23. [Adaptive integration with Simpson's rule](adaptive-integration-with-simpsons-rule)
master link: #23-Adaptive-integration-with-Simpson's-rule
enumerated line plus link: 23. [Adaptive integration with Simpson's rule](https://github.com/c4arl0s/repositoryname#23-Adaptive-integration-with-Simpson's-rule)
===
original Line: The Euler-Maclaurin summation formula
enumerated line: 24. [The Euler-Maclaurin summation formula]()
processed line: the-euler-maclaurin-summation-formula
title line: 24. [The Euler-Maclaurin summation formula](the-euler-maclaurin-summation-formula)
link line: # 24. [The Euler-Maclaurin summation formula](the-euler-maclaurin-summation-formula)
master link: #24-The-Euler-Maclaurin-summation-formula
enumerated line plus link: 24. [The Euler-Maclaurin summation formula](https://github.com/c4arl0s/repositoryname#24-The-Euler-Maclaurin-summation-formula)
===
original Line: Romberg integration
enumerated line: 25. [Romberg integration]()
processed line: romberg-integration
title line: 25. [Romberg integration](romberg-integration)
link line: # 25. [Romberg integration](romberg-integration)
master link: #25-Romberg-integration
enumerated line plus link: 25. [Romberg integration](https://github.com/c4arl0s/repositoryname#25-Romberg-integration)
===
original Line: Integrals with singularities
enumerated line: 26. [Integrals with singularities]()
processed line: integrals-with-singularities
title line: 26. [Integrals with singularities](integrals-with-singularities)
link line: # 26. [Integrals with singularities](integrals-with-singularities)
master link: #26-Integrals-with-singularities
enumerated line plus link: 26. [Integrals with singularities](https://github.com/c4arl0s/repositoryname#26-Integrals-with-singularities)
===
original Line: Numerical solution of differential equations
enumerated line: 27. [Numerical solution of differential equations]()
processed line: numerical-solution-of-differential-equations
title line: 27. [Numerical solution of differential equations](numerical-solution-of-differential-equations)
link line: # 27. [Numerical solution of differential equations](numerical-solution-of-differential-equations)
master link: #27-Numerical-solution-of-differential-equations
enumerated line plus link: 27. [Numerical solution of differential equations](https://github.com/c4arl0s/repositoryname#27-Numerical-solution-of-differential-equations)
===
original Line: Runge-Kutta methods
enumerated line: 28. [Runge-Kutta methods]()
processed line: runge-kutta-methods
title line: 28. [Runge-Kutta methods](runge-kutta-methods)
link line: # 28. [Runge-Kutta methods](runge-kutta-methods)
master link: #28-Runge-Kutta-methods
enumerated line plus link: 28. [Runge-Kutta methods](https://github.com/c4arl0s/repositoryname#28-Runge-Kutta-methods)
===
original Line: Predictor-Corrector methods
enumerated line: 29. [Predictor-Corrector methods]()
processed line: predictor-corrector-methods
title line: 29. [Predictor-Corrector methods](predictor-corrector-methods)
link line: # 29. [Predictor-Corrector methods](predictor-corrector-methods)
master link: #29-Predictor-Corrector-methods
enumerated line plus link: 29. [Predictor-Corrector methods](https://github.com/c4arl0s/repositoryname#29-Predictor-Corrector-methods)
===
original Line: Recurrence equations
enumerated line: 30. [Recurrence equations]()
processed line: recurrence-equations
title line: 30. [Recurrence equations](recurrence-equations)
link line: # 30. [Recurrence equations](recurrence-equations)
master link: #30-Recurrence-equations
enumerated line plus link: 30. [Recurrence equations](https://github.com/c4arl0s/repositoryname#30-Recurrence-equations)
===
original Line: Numerical instability
enumerated line: 31. [Numerical instability]()
processed line: numerical-instability
title line: 31. [Numerical instability](numerical-instability)
link line: # 31. [Numerical instability](numerical-instability)
master link: #31-Numerical-instability
enumerated line plus link: 31. [Numerical instability](https://github.com/c4arl0s/repositoryname#31-Numerical-instability)
===
original Line: Gaussian elimination
enumerated line: 32. [Gaussian elimination]()
processed line: gaussian-elimination
title line: 32. [Gaussian elimination](gaussian-elimination)
link line: # 32. [Gaussian elimination](gaussian-elimination)
master link: #32-Gaussian-elimination
enumerated line plus link: 32. [Gaussian elimination](https://github.com/c4arl0s/repositoryname#32-Gaussian-elimination)
===
original Line: The Doolittle and Crout algorithms. Equilibration
enumerated line: 33. [The Doolittle and Crout algorithms. Equilibration]()
processed line: the-doolittle-and-crout-algorithms--equilibration
title line: 33. [The Doolittle and Crout algorithms. Equilibration](the-doolittle-and-crout-algorithms--equilibration)
link line: # 33. [The Doolittle and Crout algorithms. Equilibration](the-doolittle-and-crout-algorithms--equilibration)
master link: #33-The-Doolittle-and-Crout-algorithms-Equilibration
enumerated line plus link: 33. [The Doolittle and Crout algorithms. Equilibration](https://github.com/c4arl0s/repositoryname#33-The-Doolittle-and-Crout-algorithms-Equilibration)
===
original Line: Determinants
enumerated line: 34. [Determinants]()
processed line: determinants
title line: 34. [Determinants](determinants)
link line: # 34. [Determinants](determinants)
master link: #34-Determinants
enumerated line plus link: 34. [Determinants](https://github.com/c4arl0s/repositoryname#34-Determinants)
===
original Line: Positive definite matrices
enumerated line: 35. [Positive definite matrices]()
processed line: positive-definite-matrices
title line: 35. [Positive definite matrices](positive-definite-matrices)
link line: # 35. [Positive definite matrices](positive-definite-matrices)
master link: #35-Positive-definite-matrices
enumerated line plus link: 35. [Positive definite matrices](https://github.com/c4arl0s/repositoryname#35-Positive-definite-matrices)
===
original Line: Jacobi and Gauss-Seidel iterations
enumerated line: 36. [Jacobi and Gauss-Seidel iterations]()
processed line: jacobi-and-gauss-seidel-iterations
title line: 36. [Jacobi and Gauss-Seidel iterations](jacobi-and-gauss-seidel-iterations)
link line: # 36. [Jacobi and Gauss-Seidel iterations](jacobi-and-gauss-seidel-iterations)
master link: #36-Jacobi-and-Gauss-Seidel-iterations
enumerated line plus link: 36. [Jacobi and Gauss-Seidel iterations](https://github.com/c4arl0s/repositoryname#36-Jacobi-and-Gauss-Seidel-iterations)
===
original Line: Cubic splines
enumerated line: 37. [Cubic splines]()
processed line: cubic-splines
title line: 37. [Cubic splines](cubic-splines)
link line: # 37. [Cubic splines](cubic-splines)
master link: #37-Cubic-splines
enumerated line plus link: 37. [Cubic splines](https://github.com/c4arl0s/repositoryname#37-Cubic-splines)
===
original Line: Overdetermined systems of linear equations
enumerated line: 38. [Overdetermined systems of linear equations]()
processed line: overdetermined-systems-of-linear-equations
title line: 38. [Overdetermined systems of linear equations](overdetermined-systems-of-linear-equations)
link line: # 38. [Overdetermined systems of linear equations](overdetermined-systems-of-linear-equations)
master link: #38-Overdetermined-systems-of-linear-equations
enumerated line plus link: 38. [Overdetermined systems of linear equations](https://github.com/c4arl0s/repositoryname#38-Overdetermined-systems-of-linear-equations)
===
original Line: The power method to find eigenvalues
enumerated line: 39. [The power method to find eigenvalues]()
processed line: the-power-method-to-find-eigenvalues
title line: 39. [The power method to find eigenvalues](the-power-method-to-find-eigenvalues)
link line: # 39. [The power method to find eigenvalues](the-power-method-to-find-eigenvalues)
master link: #39-The-power-method-to-find-eigenvalues
enumerated line plus link: 39. [The power method to find eigenvalues](https://github.com/c4arl0s/repositoryname#39-The-power-method-to-find-eigenvalues)
===
original Line: The inverse power method
enumerated line: 40. [The inverse power method]()
processed line: the-inverse-power-method
title line: 40. [The inverse power method](the-inverse-power-method)
link line: # 40. [The inverse power method](the-inverse-power-method)
master link: #40-The-inverse-power-method
enumerated line plus link: 40. [The inverse power method](https://github.com/c4arl0s/repositoryname#40-The-inverse-power-method)
===
original Line: Wielandt's deflation
enumerated line: 41. [Wielandt's deflation]()
processed line: wielandts-deflation
title line: 41. [Wielandt's deflation](wielandts-deflation)
link line: # 41. [Wielandt's deflation](wielandts-deflation)
master link: #41-Wielandt's-deflation
enumerated line plus link: 41. [Wielandt's deflation](https://github.com/c4arl0s/repositoryname#41-Wielandt's-deflation)
===
original Line: Similarity transformations and the QR algorithm
enumerated line: 42. [Similarity transformations and the QR algorithm]()
processed line: similarity-transformations-and-the-qr-algorithm
title line: 42. [Similarity transformations and the QR algorithm](similarity-transformations-and-the-qr-algorithm)
link line: # 42. [Similarity transformations and the QR algorithm](similarity-transformations-and-the-qr-algorithm)
master link: #42-Similarity-transformations-and-the-QR-algorithm
enumerated line plus link: 42. [Similarity transformations and the QR algorithm](https://github.com/c4arl0s/repositoryname#42-Similarity-transformations-and-the-QR-algorithm)
===
original Line: Spectral radius and Gauss-Seidel iteration
enumerated line: 43. [Spectral radius and Gauss-Seidel iteration]()
processed line: spectral-radius-and-gauss-seidel-iteration
title line: 43. [Spectral radius and Gauss-Seidel iteration](spectral-radius-and-gauss-seidel-iteration)
link line: # 43. [Spectral radius and Gauss-Seidel iteration](spectral-radius-and-gauss-seidel-iteration)
master link: #43-Spectral-radius-and-Gauss-Seidel-iteration
enumerated line plus link: 43. [Spectral radius and Gauss-Seidel iteration](https://github.com/c4arl0s/repositoryname#43-Spectral-radius-and-Gauss-Seidel-iteration)
===
original Line: Orthogonal polynomials
enumerated line: 44. [Orthogonal polynomials]()
processed line: orthogonal-polynomials
title line: 44. [Orthogonal polynomials](orthogonal-polynomials)
link line: # 44. [Orthogonal polynomials](orthogonal-polynomials)
master link: #44-Orthogonal-polynomials
enumerated line plus link: 44. [Orthogonal polynomials](https://github.com/c4arl0s/repositoryname#44-Orthogonal-polynomials)
===
original Line: Gauss's quadrature formula
enumerated line: 45. [Gauss's quadrature formula]()
processed line: gausss-quadrature-formula
title line: 45. [Gauss's quadrature formula](gausss-quadrature-formula)
link line: # 45. [Gauss's quadrature formula](gausss-quadrature-formula)
master link: #45-Gauss's-quadrature-formula
enumerated line plus link: 45. [Gauss's quadrature formula](https://github.com/c4arl0s/repositoryname#45-Gauss's-quadrature-formula)
===
original Line: The Chebyshev polynomials
enumerated line: 46. [The Chebyshev polynomials]()
processed line: the-chebyshev-polynomials
title line: 46. [The Chebyshev polynomials](the-chebyshev-polynomials)
link line: # 46. [The Chebyshev polynomials](the-chebyshev-polynomials)
master link: #46-The-Chebyshev-polynomials
enumerated line plus link: 46. [The Chebyshev polynomials](https://github.com/c4arl0s/repositoryname#46-The-Chebyshev-polynomials)
===
original Line: Boundary value problems and the finite element method
enumerated line: 47. [Boundary value problems and the finite element method]()
processed line: boundary-value-problems-and-the-finite-element-method
title line: 47. [Boundary value problems and the finite element method](boundary-value-problems-and-the-finite-element-method)
link line: # 47. [Boundary value problems and the finite element method](boundary-value-problems-and-the-finite-element-method)
master link: #47-Boundary-value-problems-and-the-finite-element-method
enumerated line plus link: 47. [Boundary value problems and the finite element method](https://github.com/c4arl0s/repositoryname#47-Boundary-value-problems-and-the-finite-element-method)
===
Number of Lines = 47
original Line: Floating point numbers
enumerated line: 1. [Floating point numbers]()
processed line: floating-point-numbers
title line: 1. [Floating point numbers](floating-point-numbers)
link line: # 1. [Floating point numbers](floating-point-numbers)
master link: #1-Floating-point-numbers
enumerated line plus link: 1. [Floating point numbers](https://github.com/c4arl0s/repositoryname#1-Floating-point-numbers)
===
original Line: Absolute and relative errors
enumerated line: 2. [Absolute and relative errors]()
processed line: absolute-and-relative-errors
title line: 2. [Absolute and relative errors](absolute-and-relative-errors)
link line: # 2. [Absolute and relative errors](absolute-and-relative-errors)
master link: #2-Absolute-and-relative-errors
enumerated line plus link: 2. [Absolute and relative errors](https://github.com/c4arl0s/repositoryname#2-Absolute-and-relative-errors)
===
original Line: Roundoff and truncation errors
enumerated line: 3. [Roundoff and truncation errors]()
processed line: roundoff-and-truncation-errors
title line: 3. [Roundoff and truncation errors](roundoff-and-truncation-errors)
link line: # 3. [Roundoff and truncation errors](roundoff-and-truncation-errors)
master link: #3-Roundoff-and-truncation-errors
enumerated line plus link: 3. [Roundoff and truncation errors](https://github.com/c4arl0s/repositoryname#3-Roundoff-and-truncation-errors)
===
original Line: The remainder term in Taylor's formula
enumerated line: 4. [The remainder term in Taylor's formula]()
processed line: the-remainder-term-in-taylors-formula
title line: 4. [The remainder term in Taylor's formula](the-remainder-term-in-taylors-formula)
link line: # 4. [The remainder term in Taylor's formula](the-remainder-term-in-taylors-formula)
master link: #4-The-remainder-term-in-Taylor's-formula
enumerated line plus link: 4. [The remainder term in Taylor's formula](https://github.com/c4arl0s/repositoryname#4-The-remainder-term-in-Taylor's-formula)
===
original Line: Lagrange interpolation
enumerated line: 5. [Lagrange interpolation]()
processed line: lagrange-interpolation
title line: 5. [Lagrange interpolation](lagrange-interpolation)
link line: # 5. [Lagrange interpolation](lagrange-interpolation)
master link: #5-Lagrange-interpolation
enumerated line plus link: 5. [Lagrange interpolation](https://github.com/c4arl0s/repositoryname#5-Lagrange-interpolation)
===
original Line: Newton interpolation
enumerated line: 6. [Newton interpolation]()
processed line: newton-interpolation
title line: 6. [Newton interpolation](newton-interpolation)
link line: # 6. [Newton interpolation](newton-interpolation)
master link: #6-Newton-interpolation
enumerated line plus link: 6. [Newton interpolation](https://github.com/c4arl0s/repositoryname#6-Newton-interpolation)
===
original Line: Hermite interpolation
enumerated line: 7. [Hermite interpolation]()
processed line: hermite-interpolation
title line: 7. [Hermite interpolation](hermite-interpolation)
link line: # 7. [Hermite interpolation](hermite-interpolation)
master link: #7-Hermite-interpolation
enumerated line plus link: 7. [Hermite interpolation](https://github.com/c4arl0s/repositoryname#7-Hermite-interpolation)
===
original Line: The error of the Newton interpolation polynomial
enumerated line: 8. [The error of the Newton interpolation polynomial]()
processed line: the-error-of-the-newton-interpolation-polynomial
title line: 8. [The error of the Newton interpolation polynomial](the-error-of-the-newton-interpolation-polynomial)
link line: # 8. [The error of the Newton interpolation polynomial](the-error-of-the-newton-interpolation-polynomial)
master link: #8-The-error-of-the-Newton-interpolation-polynomial
enumerated line plus link: 8. [The error of the Newton interpolation polynomial](https://github.com/c4arl0s/repositoryname#8-The-error-of-the-Newton-interpolation-polynomial)
===
original Line: Finite differences
enumerated line: 9. [Finite differences]()
processed line: finite-differences
title line: 9. [Finite differences](finite-differences)
link line: # 9. [Finite differences](finite-differences)
master link: #9-Finite-differences
enumerated line plus link: 9. [Finite differences](https://github.com/c4arl0s/repositoryname#9-Finite-differences)
===
original Line: Newton interpolation with equidistant points
enumerated line: 10. [Newton interpolation with equidistant points]()
processed line: newton-interpolation-with-equidistant-points
title line: 10. [Newton interpolation with equidistant points](newton-interpolation-with-equidistant-points)
link line: # 10. [Newton interpolation with equidistant points](newton-interpolation-with-equidistant-points)
master link: #10-Newton-interpolation-with-equidistant-points
enumerated line plus link: 10. [Newton interpolation with equidistant points](https://github.com/c4arl0s/repositoryname#10-Newton-interpolation-with-equidistant-points)
===
original Line: The Lagrange form of Hermite interpolation
enumerated line: 11. [The Lagrange form of Hermite interpolation]()
processed line: the-lagrange-form-of-hermite-interpolation
title line: 11. [The Lagrange form of Hermite interpolation](the-lagrange-form-of-hermite-interpolation)
link line: # 11. [The Lagrange form of Hermite interpolation](the-lagrange-form-of-hermite-interpolation)
master link: #11-The-Lagrange-form-of-Hermite-interpolation
enumerated line plus link: 11. [The Lagrange form of Hermite interpolation](https://github.com/c4arl0s/repositoryname#11-The-Lagrange-form-of-Hermite-interpolation)
===
original Line: Solution of nonlinear equations
enumerated line: 12. [Solution of nonlinear equations]()
processed line: solution-of-nonlinear-equations
title line: 12. [Solution of nonlinear equations](solution-of-nonlinear-equations)
link line: # 12. [Solution of nonlinear equations](solution-of-nonlinear-equations)
master link: #12-Solution-of-nonlinear-equations
enumerated line plus link: 12. [Solution of nonlinear equations](https://github.com/c4arl0s/repositoryname#12-Solution-of-nonlinear-equations)
===
original Line: Programs for solving nonlinear equation
enumerated line: 13. [Programs for solving nonlinear equation]()
processed line: programs-for-solving-nonlinear-equation
title line: 13. [Programs for solving nonlinear equation](programs-for-solving-nonlinear-equation)
link line: # 13. [Programs for solving nonlinear equation](programs-for-solving-nonlinear-equation)
master link: #13-Programs-for-solving-nonlinear-equation
enumerated line plus link: 13. [Programs for solving nonlinear equation](https://github.com/c4arl0s/repositoryname#13-Programs-for-solving-nonlinear-equation)
===
original Line: Newton's method for polynomial equations
enumerated line: 14. [Newton's method for polynomial equations]()
processed line: newtons-method-for-polynomial-equations
title line: 14. [Newton's method for polynomial equations](newtons-method-for-polynomial-equations)
link line: # 14. [Newton's method for polynomial equations](newtons-method-for-polynomial-equations)
master link: #14-Newton's-method-for-polynomial-equations
enumerated line plus link: 14. [Newton's method for polynomial equations](https://github.com/c4arl0s/repositoryname#14-Newton's-method-for-polynomial-equations)
===
original Line: Fixed-point iteration
enumerated line: 15. [Fixed-point iteration]()
processed line: fixed-point-iteration
title line: 15. [Fixed-point iteration](fixed-point-iteration)
link line: # 15. [Fixed-point iteration](fixed-point-iteration)
master link: #15-Fixed-point-iteration
enumerated line plus link: 15. [Fixed-point iteration](https://github.com/c4arl0s/repositoryname#15-Fixed-point-iteration)
===
original Line: Aitken's acceleration
enumerated line: 16. [Aitken's acceleration]()
processed line: aitkens-acceleration
title line: 16. [Aitken's acceleration](aitkens-acceleration)
link line: # 16. [Aitken's acceleration](aitkens-acceleration)
master link: #16-Aitken's-acceleration
enumerated line plus link: 16. [Aitken's acceleration](https://github.com/c4arl0s/repositoryname#16-Aitken's-acceleration)
===
original Line: The speed of convergence of Newton's method
enumerated line: 17. [The speed of convergence of Newton's method]()
processed line: the-speed-of-convergence-of-newtons-method
title line: 17. [The speed of convergence of Newton's method](the-speed-of-convergence-of-newtons-method)
link line: # 17. [The speed of convergence of Newton's method](the-speed-of-convergence-of-newtons-method)
master link: #17-The-speed-of-convergence-of-Newton's-method
enumerated line plus link: 17. [The speed of convergence of Newton's method](https://github.com/c4arl0s/repositoryname#17-The-speed-of-convergence-of-Newton's-method)
===
original Line: Numerical differentiation of tables
enumerated line: 18. [Numerical differentiation of tables]()
processed line: numerical-differentiation-of-tables
title line: 18. [Numerical differentiation of tables](numerical-differentiation-of-tables)
link line: # 18. [Numerical differentiation of tables](numerical-differentiation-of-tables)
master link: #18-Numerical-differentiation-of-tables
enumerated line plus link: 18. [Numerical differentiation of tables](https://github.com/c4arl0s/repositoryname#18-Numerical-differentiation-of-tables)
===
original Line: Numerical differentiation of functions
enumerated line: 19. [Numerical differentiation of functions]()
processed line: numerical-differentiation-of-functions
title line: 19. [Numerical differentiation of functions](numerical-differentiation-of-functions)
link line: # 19. [Numerical differentiation of functions](numerical-differentiation-of-functions)
master link: #19-Numerical-differentiation-of-functions
enumerated line plus link: 19. [Numerical differentiation of functions](https://github.com/c4arl0s/repositoryname#19-Numerical-differentiation-of-functions)
===
original Line: Simple numerical integration formulas
enumerated line: 20. [Simple numerical integration formulas]()
processed line: simple-numerical-integration-formulas
title line: 20. [Simple numerical integration formulas](simple-numerical-integration-formulas)
link line: # 20. [Simple numerical integration formulas](simple-numerical-integration-formulas)
master link: #20-Simple-numerical-integration-formulas
enumerated line plus link: 20. [Simple numerical integration formulas](https://github.com/c4arl0s/repositoryname#20-Simple-numerical-integration-formulas)
===
original Line: Composite numerical integration formulas
enumerated line: 21. [Composite numerical integration formulas]()
processed line: composite-numerical-integration-formulas
title line: 21. [Composite numerical integration formulas](composite-numerical-integration-formulas)
link line: # 21. [Composite numerical integration formulas](composite-numerical-integration-formulas)
master link: #21-Composite-numerical-integration-formulas
enumerated line plus link: 21. [Composite numerical integration formulas](https://github.com/c4arl0s/repositoryname#21-Composite-numerical-integration-formulas)
===
original Line: Adaptive integration
enumerated line: 22. [Adaptive integration]()
processed line: adaptive-integration
title line: 22. [Adaptive integration](adaptive-integration)
link line: # 22. [Adaptive integration](adaptive-integration)
master link: #22-Adaptive-integration
enumerated line plus link: 22. [Adaptive integration](https://github.com/c4arl0s/repositoryname#22-Adaptive-integration)
===
original Line: Adaptive integration with Simpson's rule
enumerated line: 23. [Adaptive integration with Simpson's rule]()
processed line: adaptive-integration-with-simpsons-rule
title line: 23. [Adaptive integration with Simpson's rule](adaptive-integration-with-simpsons-rule)
link line: # 23. [Adaptive integration with Simpson's rule](adaptive-integration-with-simpsons-rule)
master link: #23-Adaptive-integration-with-Simpson's-rule
enumerated line plus link: 23. [Adaptive integration with Simpson's rule](https://github.com/c4arl0s/repositoryname#23-Adaptive-integration-with-Simpson's-rule)
===
original Line: The Euler-Maclaurin summation formula
enumerated line: 24. [The Euler-Maclaurin summation formula]()
processed line: the-euler-maclaurin-summation-formula
title line: 24. [The Euler-Maclaurin summation formula](the-euler-maclaurin-summation-formula)
link line: # 24. [The Euler-Maclaurin summation formula](the-euler-maclaurin-summation-formula)
master link: #24-The-Euler-Maclaurin-summation-formula
enumerated line plus link: 24. [The Euler-Maclaurin summation formula](https://github.com/c4arl0s/repositoryname#24-The-Euler-Maclaurin-summation-formula)
===
original Line: Romberg integration
enumerated line: 25. [Romberg integration]()
processed line: romberg-integration
title line: 25. [Romberg integration](romberg-integration)
link line: # 25. [Romberg integration](romberg-integration)
master link: #25-Romberg-integration
enumerated line plus link: 25. [Romberg integration](https://github.com/c4arl0s/repositoryname#25-Romberg-integration)
===
original Line: Integrals with singularities
enumerated line: 26. [Integrals with singularities]()
processed line: integrals-with-singularities
title line: 26. [Integrals with singularities](integrals-with-singularities)
link line: # 26. [Integrals with singularities](integrals-with-singularities)
master link: #26-Integrals-with-singularities
enumerated line plus link: 26. [Integrals with singularities](https://github.com/c4arl0s/repositoryname#26-Integrals-with-singularities)
===
original Line: Numerical solution of differential equations
enumerated line: 27. [Numerical solution of differential equations]()
processed line: numerical-solution-of-differential-equations
title line: 27. [Numerical solution of differential equations](numerical-solution-of-differential-equations)
link line: # 27. [Numerical solution of differential equations](numerical-solution-of-differential-equations)
master link: #27-Numerical-solution-of-differential-equations
enumerated line plus link: 27. [Numerical solution of differential equations](https://github.com/c4arl0s/repositoryname#27-Numerical-solution-of-differential-equations)
===
original Line: Runge-Kutta methods
enumerated line: 28. [Runge-Kutta methods]()
processed line: runge-kutta-methods
title line: 28. [Runge-Kutta methods](runge-kutta-methods)
link line: # 28. [Runge-Kutta methods](runge-kutta-methods)
master link: #28-Runge-Kutta-methods
enumerated line plus link: 28. [Runge-Kutta methods](https://github.com/c4arl0s/repositoryname#28-Runge-Kutta-methods)
===
original Line: Predictor-Corrector methods
enumerated line: 29. [Predictor-Corrector methods]()
processed line: predictor-corrector-methods
title line: 29. [Predictor-Corrector methods](predictor-corrector-methods)
link line: # 29. [Predictor-Corrector methods](predictor-corrector-methods)
master link: #29-Predictor-Corrector-methods
enumerated line plus link: 29. [Predictor-Corrector methods](https://github.com/c4arl0s/repositoryname#29-Predictor-Corrector-methods)
===
original Line: Recurrence equations
enumerated line: 30. [Recurrence equations]()
processed line: recurrence-equations
title line: 30. [Recurrence equations](recurrence-equations)
link line: # 30. [Recurrence equations](recurrence-equations)
master link: #30-Recurrence-equations
enumerated line plus link: 30. [Recurrence equations](https://github.com/c4arl0s/repositoryname#30-Recurrence-equations)
===
original Line: Numerical instability
enumerated line: 31. [Numerical instability]()
processed line: numerical-instability
title line: 31. [Numerical instability](numerical-instability)
link line: # 31. [Numerical instability](numerical-instability)
master link: #31-Numerical-instability
enumerated line plus link: 31. [Numerical instability](https://github.com/c4arl0s/repositoryname#31-Numerical-instability)
===
original Line: Gaussian elimination
enumerated line: 32. [Gaussian elimination]()
processed line: gaussian-elimination
title line: 32. [Gaussian elimination](gaussian-elimination)
link line: # 32. [Gaussian elimination](gaussian-elimination)
master link: #32-Gaussian-elimination
enumerated line plus link: 32. [Gaussian elimination](https://github.com/c4arl0s/repositoryname#32-Gaussian-elimination)
===
original Line: The Doolittle and Crout algorithms. Equilibration
enumerated line: 33. [The Doolittle and Crout algorithms. Equilibration]()
processed line: the-doolittle-and-crout-algorithms--equilibration
title line: 33. [The Doolittle and Crout algorithms. Equilibration](the-doolittle-and-crout-algorithms--equilibration)
link line: # 33. [The Doolittle and Crout algorithms. Equilibration](the-doolittle-and-crout-algorithms--equilibration)
master link: #33-The-Doolittle-and-Crout-algorithms-Equilibration
enumerated line plus link: 33. [The Doolittle and Crout algorithms. Equilibration](https://github.com/c4arl0s/repositoryname#33-The-Doolittle-and-Crout-algorithms-Equilibration)
===
original Line: Determinants
enumerated line: 34. [Determinants]()
processed line: determinants
title line: 34. [Determinants](determinants)
link line: # 34. [Determinants](determinants)
master link: #34-Determinants
enumerated line plus link: 34. [Determinants](https://github.com/c4arl0s/repositoryname#34-Determinants)
===
original Line: Positive definite matrices
enumerated line: 35. [Positive definite matrices]()
processed line: positive-definite-matrices
title line: 35. [Positive definite matrices](positive-definite-matrices)
link line: # 35. [Positive definite matrices](positive-definite-matrices)
master link: #35-Positive-definite-matrices
enumerated line plus link: 35. [Positive definite matrices](https://github.com/c4arl0s/repositoryname#35-Positive-definite-matrices)
===
original Line: Jacobi and Gauss-Seidel iterations
enumerated line: 36. [Jacobi and Gauss-Seidel iterations]()
processed line: jacobi-and-gauss-seidel-iterations
title line: 36. [Jacobi and Gauss-Seidel iterations](jacobi-and-gauss-seidel-iterations)
link line: # 36. [Jacobi and Gauss-Seidel iterations](jacobi-and-gauss-seidel-iterations)
master link: #36-Jacobi-and-Gauss-Seidel-iterations
enumerated line plus link: 36. [Jacobi and Gauss-Seidel iterations](https://github.com/c4arl0s/repositoryname#36-Jacobi-and-Gauss-Seidel-iterations)
===
original Line: Cubic splines
enumerated line: 37. [Cubic splines]()
processed line: cubic-splines
title line: 37. [Cubic splines](cubic-splines)
link line: # 37. [Cubic splines](cubic-splines)
master link: #37-Cubic-splines
enumerated line plus link: 37. [Cubic splines](https://github.com/c4arl0s/repositoryname#37-Cubic-splines)
===
original Line: Overdetermined systems of linear equations
enumerated line: 38. [Overdetermined systems of linear equations]()
processed line: overdetermined-systems-of-linear-equations
title line: 38. [Overdetermined systems of linear equations](overdetermined-systems-of-linear-equations)
link line: # 38. [Overdetermined systems of linear equations](overdetermined-systems-of-linear-equations)
master link: #38-Overdetermined-systems-of-linear-equations
enumerated line plus link: 38. [Overdetermined systems of linear equations](https://github.com/c4arl0s/repositoryname#38-Overdetermined-systems-of-linear-equations)
===
original Line: The power method to find eigenvalues
enumerated line: 39. [The power method to find eigenvalues]()
processed line: the-power-method-to-find-eigenvalues
title line: 39. [The power method to find eigenvalues](the-power-method-to-find-eigenvalues)
link line: # 39. [The power method to find eigenvalues](the-power-method-to-find-eigenvalues)
master link: #39-The-power-method-to-find-eigenvalues
enumerated line plus link: 39. [The power method to find eigenvalues](https://github.com/c4arl0s/repositoryname#39-The-power-method-to-find-eigenvalues)
===
original Line: The inverse power method
enumerated line: 40. [The inverse power method]()
processed line: the-inverse-power-method
title line: 40. [The inverse power method](the-inverse-power-method)
link line: # 40. [The inverse power method](the-inverse-power-method)
master link: #40-The-inverse-power-method
enumerated line plus link: 40. [The inverse power method](https://github.com/c4arl0s/repositoryname#40-The-inverse-power-method)
===
original Line: Wielandt's deflation
enumerated line: 41. [Wielandt's deflation]()
processed line: wielandts-deflation
title line: 41. [Wielandt's deflation](wielandts-deflation)
link line: # 41. [Wielandt's deflation](wielandts-deflation)
master link: #41-Wielandt's-deflation
enumerated line plus link: 41. [Wielandt's deflation](https://github.com/c4arl0s/repositoryname#41-Wielandt's-deflation)
===
original Line: Similarity transformations and the QR algorithm
enumerated line: 42. [Similarity transformations and the QR algorithm]()
processed line: similarity-transformations-and-the-qr-algorithm
title line: 42. [Similarity transformations and the QR algorithm](similarity-transformations-and-the-qr-algorithm)
link line: # 42. [Similarity transformations and the QR algorithm](similarity-transformations-and-the-qr-algorithm)
master link: #42-Similarity-transformations-and-the-QR-algorithm
enumerated line plus link: 42. [Similarity transformations and the QR algorithm](https://github.com/c4arl0s/repositoryname#42-Similarity-transformations-and-the-QR-algorithm)
===
original Line: Spectral radius and Gauss-Seidel iteration
enumerated line: 43. [Spectral radius and Gauss-Seidel iteration]()
processed line: spectral-radius-and-gauss-seidel-iteration
title line: 43. [Spectral radius and Gauss-Seidel iteration](spectral-radius-and-gauss-seidel-iteration)
link line: # 43. [Spectral radius and Gauss-Seidel iteration](spectral-radius-and-gauss-seidel-iteration)
master link: #43-Spectral-radius-and-Gauss-Seidel-iteration
enumerated line plus link: 43. [Spectral radius and Gauss-Seidel iteration](https://github.com/c4arl0s/repositoryname#43-Spectral-radius-and-Gauss-Seidel-iteration)
===
original Line: Orthogonal polynomials
enumerated line: 44. [Orthogonal polynomials]()
processed line: orthogonal-polynomials
title line: 44. [Orthogonal polynomials](orthogonal-polynomials)
link line: # 44. [Orthogonal polynomials](orthogonal-polynomials)
master link: #44-Orthogonal-polynomials
enumerated line plus link: 44. [Orthogonal polynomials](https://github.com/c4arl0s/repositoryname#44-Orthogonal-polynomials)
===
original Line: Gauss's quadrature formula
enumerated line: 45. [Gauss's quadrature formula]()
processed line: gausss-quadrature-formula
title line: 45. [Gauss's quadrature formula](gausss-quadrature-formula)
link line: # 45. [Gauss's quadrature formula](gausss-quadrature-formula)
master link: #45-Gauss's-quadrature-formula
enumerated line plus link: 45. [Gauss's quadrature formula](https://github.com/c4arl0s/repositoryname#45-Gauss's-quadrature-formula)
===
original Line: The Chebyshev polynomials
enumerated line: 46. [The Chebyshev polynomials]()
processed line: the-chebyshev-polynomials
title line: 46. [The Chebyshev polynomials](the-chebyshev-polynomials)
link line: # 46. [The Chebyshev polynomials](the-chebyshev-polynomials)
master link: #46-The-Chebyshev-polynomials
enumerated line plus link: 46. [The Chebyshev polynomials](https://github.com/c4arl0s/repositoryname#46-The-Chebyshev-polynomials)
===
original Line: Boundary value problems and the finite element method
enumerated line: 47. [Boundary value problems and the finite element method]()
processed line: boundary-value-problems-and-the-finite-element-method
title line: 47. [Boundary value problems and the finite element method](boundary-value-problems-and-the-finite-element-method)
link line: # 47. [Boundary value problems and the finite element method](boundary-value-problems-and-the-finite-element-method)
master link: #47-Boundary-value-problems-and-the-finite-element-method
enumerated line plus link: 47. [Boundary value problems and the finite element method](https://github.com/c4arl0s/repositoryname#47-Boundary-value-problems-and-the-finite-element-method)
===
```
# 3. [Create both parts, index and Title links]()

```sh
touch README.md
repositoryName=$2
processedRepositoryName=`echo $repositoryName | tr '[A-Z]' '[a-z]' | tr ' ' '-'`
processedRNWS=`echo $repositoryName | tr '[A-Z]' '[a-z]' | tr -d ' '`
echo "# [go back to Overview](https://github.com/c4arl0s)" > README.md
echo "" >> README.md
echo "# [$repositoryName - Content](https://github.com/c4arl0s/$processedRNWS#go-back-to-overview)" >> README.md
echo "" >> README.md
index=0
cat $1 | while read line
do 
    let index=$index+1
    enumeratedLine=`echo "$index. [$line]()"`  
    # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
    processedLine=`echo $line | tr ' ' '-' | tr '[A-Z]' '[a-z]'| tr '.' '-' | tr -d '\47'`
    titleLine=`echo $enumeratedLine | sed "s/]()/]($processedLine)/"`
    linkLine=`echo $titleLine | sed "s/^/# /"`
    masterLine=`echo "#$enumeratedLine" | tr ' ' '-' | tr -d '.' | tr -d ']()' | tr -d '['`
    enumeratedLinePlusLink=`echo $enumeratedLine | sed "s/]()/](https:\/\/github.com\/c4arl0s\/$processedRepositoryName$masterLine)/"`
    echo "$enumeratedLinePlusLink" >> README.md
done
echo "" >> README.md
echo "# [$2](https://github.com/c4arl0s/#$processedRepositoryName---content)" >> README.md
echo "" >> README.md
cat $1 | while read line
do 
    let index=$index+1
    enumeratedLine=`echo "$index. [$line](https://github.com/c4arl0s/$processedRepositoryName---content)"`  
    # replace white spaces with -, replace upper case with lower case, remove ('), \47 is the octal value of it (')
    processedLine=`echo $line | tr ' ' '-' | tr '[A-Z]' '[a-z]'| tr '.' '-' | tr -d '\47'`
    titleLine=`echo $enumeratedLine | sed "s/]()/]($processedLine)/"`
    linkLine=`echo $titleLine | sed "s/^/# /"`
    masterLine=`echo "#$enumeratedLine" | tr ' ' '-' | tr -d '.' | tr -d ']()' | tr -d '['`
    echo "# $enumeratedLine" >> README.md
#    enumeratedLinePlusLink=`echo $enumeratedLine | sed "s/]()/](https:\/\/github.com\/c4arl0s\/$processedRepositoryName$masterLine)/"`
#    echo "$enumeratedLinePlusLink" >> README.md    
done
```