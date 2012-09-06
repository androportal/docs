


fft2
====

two-dimension fast Fourier transform



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=fft2(x)
    y=fft2(x,n,m)




Arguments
~~~~~~~~~

:x a vector/matrix/array (Real or Complex)
: :y a vector/matrix/array (Real or Complex)
: :m integer, number of rows.
: :n integer, number of columns.
:



Description
~~~~~~~~~~~


::

    This functions performs the two-dimension discrete Fourier transform.


`y=fft2(x)`y and x have the same size

`y=fft2(x,m,n):` If `m` (respectively `n`) is less than the rows
number (respectively columns) of `x` then the `x` rows number (resp.
columns) is truncated, else if m (resp. `n`) is more than the rows
number (resp. columns) of `x` then `x` rows are completed by zero
(resp. columns) .

if `x` is a matrix then `y` is a matrix, if `x` is a hypermatrix then
`y` is a hypermatrix, with the size of the first dimension of `y` is
equal to `m`, the size of the second dimension of `y` is equal to `n`,
the size of the ith dimension of `y` (for i>2, case hypermatrix) equal
to the size of the ith dimension of `x`. (i.e size(y,1)=m, size(y,2)=n
and size(y,i)=size(x,i) for i>2)



Examples
~~~~~~~~


::

    //Comparison with explicit formula
    a=[1 2 3 ;4 5 6 ;7 8 9 ;10 11 12]  
    m=`size`_(a,1)
    n=`size`_(a,2)
    
    // fourier transform along the rows
    for i=1:n
    a1(:,i)=`exp`_(-2*%i*%pi*(0:m-1)'.*.(0:m-1)/m)*a(:,i) 
    end
    
    // fourier transform along the columns
    for j=1:m
    a2temp=`exp`_(-2*%i*%pi*(0:n-1)'.*.(0:n-1)/n)*(a1(j,:)).' 
    a2(j,:)=a2temp.'
    end
    `norm`_(a2-fft2(a))




See Also
~~~~~~~~


+ `fft`_ fast Fourier transform.


.. _fft: fft.html


