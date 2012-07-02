Scilab Function

Last update : September 1999

**setfield** - list field insertion

Calling Sequence
~~~~~~~~~~~~~~~~

``setfield(i,x,l)  ``

Parameters
~~~~~~~~~~

-  ``           x         ``: matrix of any possible types
-  ``           l         ``: list, tlist or mlist variable
-  ``           i         ``: field index, see insertion for more
   details.

Description
~~~~~~~~~~~

This function is an equivalent of ``         l(i)=x       `` syntax for
field extraction with the only difference that it also applies to
``         mlist       `` objects.

Examples
~~~~~~~~

::


    l=list(1,'qwerw',%s)
    l(1)='Changed'
    l(0)='Added'
    l(6)=['one more';'added']
    //

    a=hypermat([2,2,2],rand(1:2^3));// hypermatrices are coded using mlists
    setfield(3,1:8,a);a // set the field value to 1:8
     
      

See Also
~~~~~~~~

```           insertion         `` <insertion.htm>`_,
