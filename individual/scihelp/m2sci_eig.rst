


eig (Matlab function)
=====================

Find eigenvalues and eigenvectors



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    eig



::

    `spec`_ - bdiag




Particular cases
~~~~~~~~~~~~~~~~

:eig(A) Scilab equivalent for eig(A) is spec(A). Scilab eigen vector
  matrix can differ from Matlab one.
: :eig(A,'nobalance') There is no Scilab equivalent for
  **"nobalance"** option. See examples.
: :eig(A,B,flag) There is no Scilab equivalent for **flag**.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    d = eig(A,'balance')
    [V,D] = eig(A,'balance')
    d = eig(A,B)
    [V,D] = eig(A,B)



::

    d = `spec`_(A)
    [V,D] = `bdiag`_(A+%i,1/%eps)
    [al,be] = `spec`_(A); d = al./be;
    [al,be,V] = `spec`_(A); D = `spec`_(al./be);




