Scilab keyword

Last update : 13/01/2005

**overloading** - display, functions and operators overloading
capabilities

Description
~~~~~~~~~~~

In scilab, variable display, functions and operators may be defined for
new objects using functions (scilab coded or primitives).

**Display**: The display of new objects defined by
``           tlist         `` structure may be overloaded (the default
display is similar to ``           list         ``'s one). The
overloading function must have no output argument a single input
argument. It's name is formed as follow
``           %<tlist_type>_p         `` where
``           %<tlist_type>         `` stands for the first entry of the
``           tlist         `` type component.

**Operators**: Each operator which is not defined for given operands
type may be defined. The overloading function must have a single output
argument and one or two inputs according to the number of operands. The
function name is formed as follow:

for binary operators:
``         %<first_operand_type>_<op_code>_<second_operand_type>       ``

for unary operators: ``         %<operand_type>_<op_code>       ``

extraction and insertion operators which are n-nary operators are
described below.

``         <operand_type>       ``,
``         <first_operand_type>       ``,
``         <second_operand_type>       `` are sequence of characters
associated with each data type as described in the following table:

+--------------------+-------------+---------------------+----------------------------------------------+
| data type          | char code   | data type           | char code                                    |
+--------------------+-------------+---------------------+----------------------------------------------+
| constant           | s           | boolean             | b                                            |
+--------------------+-------------+---------------------+----------------------------------------------+
| string             | c           | library             | f                                            |
+--------------------+-------------+---------------------+----------------------------------------------+
| function pointer   | fptr        | handle              | h                                            |
+--------------------+-------------+---------------------+----------------------------------------------+
| integer            | i           | list                | l                                            |
+--------------------+-------------+---------------------+----------------------------------------------+
| function           | m           | compiled function   | mc                                           |
+--------------------+-------------+---------------------+----------------------------------------------+
| polynomial         | p           | sparse              | sp                                           |
+--------------------+-------------+---------------------+----------------------------------------------+
| boolean sparse     | spb         | tlist               | ``               tlist_type             ``   |
+--------------------+-------------+---------------------+----------------------------------------------+

``         <op_code>       `` is a single character associated with each
operator as described in the following table:

+---------------------------------------+-------------+--------------------------------------+-------------+
| op                                    | char code   | op                                   | char code   |
+---------------------------------------+-------------+--------------------------------------+-------------+
| ``               '             ``     | t           | +                                    | a           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| -                                     | s           | \*                                   | m           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| ``               /             ``     | r           | \\                                   | l           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| ``               ^             ``     | p           | .\*                                  | x           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| ./                                    | d           | .\\                                  | q           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| .\*.                                  | k           | ./.                                  | y           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| ``               .\.             ``   | z           | :                                    | b           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| \*.                                   | u           | /.                                   | v           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| ``               \.             ``    | w           | [a,b]                                | c           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| [a;b]                                 | f           | () extraction                        | e           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| () insertion                          | i           | ==                                   | o           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| <>                                    | n           | \|                                   | g           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| &                                     | h           | ``               .^             ``   | j           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| ~                                     | 5           | .'                                   | 0           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| <                                     | 1           | >                                    | 2           |
+---------------------------------------+-------------+--------------------------------------+-------------+
| <=                                    | 3           | >=                                   | 4           |
+---------------------------------------+-------------+--------------------------------------+-------------+
|                                       |             | iext                                 | 6           |
+---------------------------------------+-------------+--------------------------------------+-------------+

The overloading function for extraction syntax
``         b=a(i1,...,in)       `` has the following calling sequence:
``         b=%<type_of_a>_e_(i1,...,in,a)       ``

and the syntax ``         [x1,..,xm]=a(i1,...,in)       `` has the
following calling sequence:
``         [x1,..,xm]=%<type_of_a>_e_(i1,...,in,a)       ``

The overloading function associated to the insertion syntax
``         a(i1,...,in)=b       `` has the following calling sequence:
``         a=%<type_of_b>_i_<type_of_a>(i1,...,in,b,a)       ``.

The ``         6       `` char code may be used for some complex
insertion algorithm like ``         x.b(2)=33       `` where
``         b       `` field is not defined in the structure
``         x       ``. The insertion is automatically decomposed into
``         temp=x.b;       `` ``         temp(2)=33;       ``
``         x.b=temp       ``. The ``         6       `` char code is
used for the first step of this algorithm. The ``         6       ``
overloading function is very similar to the ``         e       ``'s one.

**Functions :**Some basic primitive function

may also be overloaded for new data type. When such a function is
undefined for a particular data types the function
``             %<type_of_an_argument>_<function_name>           `` is
called. User may add in this called function the definition associated
with the input data types.

Examples
~~~~~~~~

::


    //DISPLAY
    deff('[]=%tab_p(l)','disp([['' '';l(3)] [l(2);string(l(4))]])')
    tlist('tab',['a','b'],['x';'y'],rand(2,2))

    //OPERATOR
    deff('x=%c_a_s(a,b)','x=a+string(b)')
    's'+1

    //FUNCTION
    deff('x=%c_sin(a)','x=''sin(''+a+'')''')
    sin('2*x')
       
      

See Also
~~~~~~~~

```           tlist         `` <tlist.htm>`_,
```           disp         `` <../fileio/disp.htm>`_,
```           symbols         `` <symbols.htm>`_,
