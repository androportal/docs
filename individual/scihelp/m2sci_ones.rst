


ones (Matlab function)
======================

Create an array of all ones



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `ones`_



::

    `ones`_




Particular cases
~~~~~~~~~~~~~~~~

Note that in Matlab, *A* can contain complex values (in these cases,
only real part of *A* is taken in account), what Scilab function do
not tolerate.


::

    // Scilab version
    B=`ones`_(A)


Most differences stem from the use of *ones* in conjunction with
*size*. In Scilab you do not need to use size:


::

    % Matlab version
    A = [1 2; 3 4];
    B = `ones`_(`size`_(A))
    B  = [ 1. 1. ; 1. 1.]



::

    // Scilab version
    A = [1 2; 3 4];
    B = `ones`_(A)
    B  =[ 1 1; 1 1]


As a result, if A is a scalar, then Matlab will return a *A*A* matrix
of ones but in Scilab you get a *1* (just because a scalar is a *1*1*
matrix), so use *ones(A,A)* to get the same matrix *B*. If *A* is a
vector, Scilab and Matlab give the same *B*. Finally, if *A* is a
matrix, in Scilab, *B* will be a matrix having the same size as *A*
whereas in Matlab, you get an error message.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    B = `ones`_(2)
    B = [1,1;1,1]
    B = `ones`_(2,2)
    B = [1,1;1,1]
    B = `ones`_([3,3])
    B = [1,1,1;1,1,1;1,1,1]



::

    B = `ones`_(2)
    B = 1
    B = `ones`_(2,2)
    B = [1,1;1,1]
    B = `ones`_([3,3])
    B = [1,1]




