


optimget
========

Queries an optimization data structure.



SYNOPSIS
~~~~~~~~


::

    val = optimget ( options , key )
    val = optimget ( options , key , value )




Description
~~~~~~~~~~~

This function allows to make queries on an existing optimization data
structure. This data structure must have been created and updated by
the `optimset` function. The `optimget` allows to retrieve the value
associated with a given key.

In the following, we analyse the various ways to call the optimget
function.

The following calling sequence


::

    val = optimget(options , key)


returns the value associated with the given `key`. The `key` is
expected to be a string. We search the `key` among the list of all
possible fields in the `options` data structure. In this search, the
case is ignored. The `key` which matches a possible field is returned.
Some letters of the field may be dropped, provided that the matching
field is unique. For example, the key "MaxF" corresponds to the field
"MaxFunEval". But the key "Tol" corresponds both to the "TolX" and
"TolFun" fields and therefore will generate an error.

The following calling sequence


::

    val = optimget(options, key, value)


allows to manage default value for optimization parameters. Indeed, if
the field corresponding to the `key` is empty (i.e. has not been set
by the user), the input argument `value` is returned. Instead, if the
field corresponding the key is not empty (i.e. has been set by the
user), the parameter stored in the `options` argument is returned.



Arguments
~~~~~~~~~

:options A struct which contains the optimization fields.
: :key A string corresponding to a field of the optimization
  structure.
: :value A real default value.
: :val The real value corresponding to the key.
:



Example #1
~~~~~~~~~~

In the following example, we create an optimization structure and set
the "TolX" field to 1.e-12. Then we use `optimget` to get back the
value.


::

    op = `optimset`_();
    op = `optimset`_(op,'TolX',1.e-12);
    val = optimget(op,'TolX'); // val is 1.e-12




Example #2
~~~~~~~~~~

In the following example, we create an empty optimization structure.
Then we use `optimget` to get back the value corresponding to the
"TolX" field, with 1.e-5 as the default value. Since the field is
empty, we retrieve 1.e-5.


::

    op = `optimset`_();
    val = optimget(op,'TolX' , 1.e-5); // val = 1.e-5




Example #3
~~~~~~~~~~

In the following example, we create an optimization structure and set
the "TolX" field to 1.e-12. Then we use `optimget` to get back the
value corresponding to the "TolX" field, with 1.e-5 as the default
value. Since the field is not empty, we retrieve 1.e-12.


::

    op = `optimset`_();
    op = `optimset`_(op,'TolX',1.e-12);
    val = optimget(op,'TolX' , 1.e-5); // val = 1.e-12




Example #4
~~~~~~~~~~

In the following example, we create an optimization structure and
configure the maximum number of function evaluations to 1000. Then we
quiery the data structure, giving only the "MaxF" key to the
`optimget` function. Since that corresponds only to the "MaxFunEvals"
field, there is only one match and the function returns 10000.


::

    op = `optimset`_();
    op = `optimset`_(op, 'MaxFunEvals' , 1000);
    val = optimget(op, 'MaxF'); // val = 1000




See Also
~~~~~~~~


+ `optimset`_ Configures and returns an optimization data structure.


.. _optimset: optimset.html


