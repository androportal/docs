


fftshift (Matlab function)
==========================

Shift zero-frequency component of discrete Fourier transform to center
of spectrum



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `fftshift`_



::

    `fftshift`_




Particular cases
~~~~~~~~~~~~~~~~

:fftshift(A[,dim]) Due to the fact that strings or not considered in
  the same way in Matlab and in Scilab, results are not equal if A is a
  string matrix or vector in fftshift(A) or fftshift(A,dim).
  **mtlb_fftshift** can emulate this particularity in Scilab.
: :fftshift(A,dim) In Matlab, **dim** can be greater than the number
  of dimensions of **A** but in Scilab you get an error message in this
  case. **mtlb_fftshift** can emulate this particularity in Scilab.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    Y = `fftshift`_('str')
    Y = 'rst'



::

    Y = `fftshift`_("str")
    Y = "str"
    Y = `mtlb_fftshift`_("str")
    Y = "rst"




