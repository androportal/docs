


size
====

size of objects



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sz = size(x)
    [n1, n2] = size(x)
    [n1, n2, n3, ...] = size(x)
    n = size(x, sel)




Arguments
~~~~~~~~~

:x a 2-D or n-D array of any type or a list
: :sz `1` by `ndims(x)`_ integer vector.
: :sel a positive scalar with integer value or one of the character
  strings 'r', 'c' or '*'
: :n1, n2, ... numbers with integer values
: :n a number with integer value
:



Description
~~~~~~~~~~~

:Applied to : an array or n-D array (constant, polynomial, string,
boolean, rational)

    + `sz = size(x)` returns a `1`-by- `ndims(x)` vector. Each entry gives
      the corresponding dimension value.
    + `[n1, n2, ...] = size(x)`, the function returns in each argument the
      corresponding dimension value.
    + The syntax `n = size(x, sel)` may be used to specify what dimension
      to get:

        + Set `sel` to 1 or `'r'` to get the number of rows.
        + Set `sel` to 2 or `'c'` to get the number of columns.
        + Set `sel` to `m`, where `m` is a positive integer to get the `m`th
          dimension. If `m` is greater than `ndims(x)`, then `size(x,m)` returns
          1.
        + Set `sel` to `'*'` to get the product of the dimensions.


: :Applied to: a list; it returns the number of elements. In this case
  only `y = size(x)` syntax can be used.
: :Applied to: a linear system; `y= size(x)` returns in `y` the (row)
  vector [number of outputs, number of inputs] i.e. the dimension of the
  corresponding transfer matrix. The syntax `[nr, nc] = size(x)` is also
  valid (with `(nr, nc) = (y(1), y(2))`). If `x` is a linear system in
  state-space form, then `[nr, nc, nx] = size(x)` returns in addition
  the dimension `nx` of matrix `x`.
:



Examples
~~~~~~~~


::

    [n, m] = size(`rand`_(3, 2))
    [n, m] = size(['a', 'b'; 'c', 'd'])
    
    x = `ssrand`_(3, 2, 4);
    [ny, nu] = size(x)
    [ny, nu] = size(`ss2tf`_(x))
    [ny, nu, nx] = size(x)
    
    // Returns the number of rows
    n = size(`rand`_(3, 2), "r")
    // Returns the number of columns
    m = size(`rand`_(3, 2), "c")
    // Returns the product of the dimensions
    nm = size(`rand`_(3, 2), "*")




See Also
~~~~~~~~


+ `length`_ length of object
+ `ndims`_ number of dimensions of an array
+ `syslin`_ linear system definition


.. _syslin: syslin.html
.. _length: length.html
.. _ndims: ndims.html


