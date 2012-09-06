


overloading
===========

display, functions and operators overloading capabilities



Description
~~~~~~~~~~~

In scilab, variable display, functions and operators may be defined
for new objects using functions (scilab coded or primitives).

:Display The display of new objects defined by `tlist` structure may
  be overloaded (the default display is similar to `list`'s one). The
  overloading function must have no output argument a single input
  argument. It's name is formed as follow `%<tlist_type>_p` where
  `%<tlist_type>` stands for the first entry of the `tlist` type
  component truncated to the first 9 characters.
: :Operators Each operator which is not defined for given operands
  type may be defined. The overloading function must have a single
  output argument and one or two inputs according to the number of
  operands. The function name is formed as follow:
:

for binary operators:
`%<first_operand_type>_<op_code>_<second_operand_type>`

for unary operators: `%<operand_type>_<op_code>`

extraction and insertion operators which are n-nary operators are
described below.

Be careful, only the types registered by the `typename` function can
be used in an overloading macros

`<operand_type>`, `<first_operand_type>`, `<second_operand_type>` are
sequence of characters associated with each data type as described in
the following table:
data type char code typeof comments double matrix `s` `constant`
polynomial matrix `p` `polynomial` boolean matrix `b` `boolean` sparse
matrix `sp` `sparse` boolean sparse matrix `spb` `boolean sparse`
Matlab sparse matrix `msp` `Matlab sparse` integer matrix `i` `int8,
int16,int32, uint8, uint16, uint32` string matrix `c` `string` handle
`h` `handle` compiled function `fptr` `fptr` script function `mc`
`function` library `f` `library` list `l` `list` tlist `tlist type`
`tlist type` the first string in the first tlist entry mlist `mlist
type` `mlist type` the first string in the first mlist entry
hypermatrix `hm` `hypermat` pointer `ptr` `pointer` cell `ce` `ce`
structure `st` `st` rational `r` `rational` linear state space `lss`
`state-space` implicit polynom `ip` `size implicit` 1:1:$
`<op_code>` is a single character associated with each operator as
described in the following table:
`op` char code `'` t `+` a `-` s `*` m `/` r `\` l `^` p `.*` x `./` d
`.\` q `.*.` k `./.` y `.\.` z `:` b `*.` u `/.` v `\.` w `[a,b]` c
`[a;b]` f `() extraction` e `() insertion` i `==` o `<>` n `|` g `&` h
`.^` j `.'` 0 `<` 1 `>` 2 `<=` 3 `>=` 4 `~` 5 `iext` 6
The overloading function for extraction syntax `b= a(i1, ..., in)` has
the following calling sequence: `b = %<type_of_a>_e_(i1, ..., in, a)`

and the syntax `[x1, .., xm] = a(i1, ..., in)` has the following
calling sequence: `[x1, .., xm] = %<type_of_a>_e_(i1, ..., in, a)`

The overloading function associated to the insertion syntax `a(i1,
..., in) = b` has the following calling sequence: `a =
%<type_of_b>_i_<type_of_a>(i1, ..., in, b, a)` .

The `6` char code may be used for some complex insertion algorithm
like `x.b(2) = 33` where `b` field is not defined in the structure
`x`. The insertion is automatically decomposed into `temp = x.b;`
`temp(2) = 33;` `x.b = temp`. The `6` char code is used for the first
step of this algorithm. The `6` overloading function is very similar
to the `e`'s one.

:Functions : Some basic primitive function may also be overloaded for
  new data type. When such a function is undefined for a particular data
  types the function `%<type_of_an_argument>_<function_name>` is called.
  User may add in this called function the definition associated with
  the input data types.
:



Examples
~~~~~~~~


::

    //DISPLAY
          function []=%tab_p(l)
          `disp`_([[' '; l(3)] [l(2); `string`_(l(4))]])
          endfunction
          
          `tlist`_('tab', ['a', 'b'], ['x'; 'y'], `rand`_(2, 2))



::

    //OPERATOR
          function x=%c_a_s(a, b)
          x = a + `string`_(b);
          endfunction
          
          's' + 1



::

    //FUNCTION
          function x=%c_sin(a)
          x = 'sin(' + a + ')'
          endfunction
          
          `sin`_('2 * x')




See Also
~~~~~~~~


+ `tlist`_ Scilab object and typed list definition.
+ `disp`_ displays variables
+ `symbols`_ scilab operator names
+ `typeof`_ object type
+ `type`_ Returns the type of a variable
+ `type`_ associates a name to variable type


.. _disp: disp.html
.. _type: type.html
.. _tlist: tlist.html
.. _symbols: symbols.html
.. _typeof: typeof.html
.. _type: typename.html


