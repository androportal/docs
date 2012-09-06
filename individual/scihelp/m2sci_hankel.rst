


hankel (Matlab function)
========================

Hankel matrix



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    hankel



::

    `hank`_




Particular cases
~~~~~~~~~~~~~~~~

The main difference between Scilab and Matlab function is that they do
not use the same input values to build an Hankel matrix. If in Matlab,
you just have to give a column vector (and eventually a row vector),
Scilab function requires the size of the Hankel matrix to build and a
covariance sequence vector for this matrix. (See syntax below)



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    H1 = hankel(C1)
                H2 = hankel(C2, R2)



::

    function H=hankel(C, R)
                [lhs, rhs] = `argn`_(0);
                if rhs == 1 then
                N = `size`_(C, "*");
                COV = [`matrix`_(C, 1, -1), `zeros`_(1, N)];
                H = `hank`_(N, N, COV);
                else
                M = `size`_(C, "*");
                N = `size`_(R, "*");
                COV = [`matrix`_(C, 1, -1), `matrix`_(R(2:$), 1, -1)];
                H = `hank`_(M, N, COV);
                end
                endfunction




