


complex
=======

Create a complex number.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c=complex(a)
    c=complex(a,b)




Arguments
~~~~~~~~~

:a a 1-by-1 or a n-by-m real matrix of doubles, the real part. If `a`
  has an imaginary part, an error is generated.
: :b a 1-by-1 or a n-by-m real matrix of doubles, the imaginary part
  (default b=0). If `b` has an imaginary part, an error is generated.
: :c a n-by-m complex matrix of doubles, the complex number.
:



Description
~~~~~~~~~~~

c=complex(a) creates a complex number from its real part `a` and zero
as the imaginary part.

c=complex(a,b) creates a complex number from its real part `a` and
imaginary part `b`.

This function is a substitute for expressions such as `a+%i*b`,
especially in cases where the complex arithmetic interferes with
particular floating point numbers such as `%inf` or `%nan`.



Examples
~~~~~~~~

In the following example, we create a complex number from its real and
imaginary parts.


::

    complex(1,2)
    complex([1 2],[3 4])


If `a` only is specified, then the imaginary part is set to zero.


::

    complex([1 2 3])


If `a` is a scalar and `b` is a matrix, then the result `c` has the
same size as `b`. Similarily, if `b` is a scalar and `a` is a matrix,
then the result `c` has the same size as `a`.


::

    c = complex([1 2 3], 4)
    c = complex(1, [2 3 4])


If `a` and `b` are two matrices with different sizes, an error is
generated, as in the following session.


::

     
    -->complex(ones(2,3),ones(4,5))
     !--error 10000 
    complex: Incompatible input arguments #1 and #2: Same sizes expected.
    at line      33 of function complex called by :  
    complex(ones(2,3),ones(4,5))
     


The purpose of the `complex` function is to manage IEEE floating point
numbers such as Nans or Infinities. In the following example, we show
that creating a complex number where the real and imaginary parts are
complex is not straightforward if we use the complex arithmetic. This
is because the product `%i` times `%inf` is evaluated as `(0+%i) *
(%inf+%i*0)`. This produces the intermediate expression `0*%inf`,
which is `%nan`.


::

     
    -->%inf+%i*%inf
     ans  =
        Nan + Inf 
     


The solution of this issue is to use the `complex` function.


::

     
    -->complex(%inf,%inf)
     ans  =
        Inf + Inf 
     




See Also
~~~~~~~~


+ `imult`_ multiplication by i the imaginary unitary


.. _imult: imult.html


