Scilab symbol

Last update : 30/05/2006

**equal** - (=) assignment , comparison, equal sign

Description
~~~~~~~~~~~

**Assignment:**The equal sign ``           =         `` is used to
denote the assignment of value(s) to variable(s). The syntax can be :

**** ``               a=expr             `` where
``               a             `` is a variable name and
``               expr             `` a scilab expression which evaluates
to a single result.

**** ``               [a,b,...]=expr             `` where
``               a             ``,``               b             ``,``               ...             ``
are variable names and ``               expr             `` a scilab
expression which results in as many results as given variable names.

**Comparison:**The equal sign ``           =         `` is also used in
the comparison operators:

**** ``               a==b             ``, denotes equality comparison
between the values of the expressions ``                a             ``
and ``               b             ``.

**** ``               a~=b             ``, denotes inequality comparison
between the values of the expressions ``               a             ``
and ``                b             ``:

**** ``               a<=b             `` and
``               a>=b             `` denotes ordering comparison between
the values of the expressions ``                a             `` and
``                b             ``:

See ```             comparison           `` <comparison.htm>`_ for
semantic details.

Examples
~~~~~~~~

::

        
        a = sin(3.2)
        M = [2.1,3.3,8.5;7.6,6.7,6.9;0,6.3,8.8];
        [u,s] = schur(M)
        [1:10] == 4 
        1~=2
        
      

See Also
~~~~~~~~

```           less         `` <less.htm>`_,
```           great         `` <less.htm>`_,
```           boolean         `` <boolean.htm>`_,
```           isequal         `` <../elementary/isequal.htm>`_,
```           comparison         `` <comparison.htm>`_,
