


beta (Matlab function)
======================

Beta function



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `beta`_



::

    `beta`_




Particular cases
~~~~~~~~~~~~~~~~

Matlab **beta** function can work with only one scalar input an done
not-scalar input parameter, but in Scilab both parameters must have
the same size.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    A = 1;
    B = [1 2 3];
    Y = `beta`_(A,B);



::

    A = 1;
    B = [1 2 3];
    // So that A and B have the same size
    tmp = A;A = B;A(:) = tmp;
    Y = `beta`_(A,B);




