Scilab Function

Last update : May 1994

**whereami** - display current instruction calling tree

Calling Sequence
~~~~~~~~~~~~~~~~

``whereami()  ``

Description
~~~~~~~~~~~

Displays calling tree to instruction which contain whereami(). May be
used within pause levels.

Examples
~~~~~~~~

::


    deff('y=test(a)',['y=sin(a)+1';
                      'y=t1(y)';
                      'y=y+1'])
    deff('y=t1(y)',['y=y^2';'whereami()'])
    test(1)
     
      

See Also
~~~~~~~~

```           where         `` <where.htm>`_,
```           pause         `` <pause.htm>`_,
```           errcatch         `` <errcatch.htm>`_,
