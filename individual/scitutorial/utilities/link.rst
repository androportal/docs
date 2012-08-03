====
"link"
====

Scilab Function Last update : 07/03/2006
**link** - incremental linker



Calling Sequence
~~~~~~~~~~~~~~~~

x=link(files [, sub-names,flag]);
link(x , sub-names [, flag]);
ulink(x)
lst=link('show')




Parameters
~~~~~~~~~~


+ **files** : a character string or a vector of character strings, the
  files names used to define the new entry point (compiled routines,
  user libraries, system libraries,..)
+ **sub-names** : a character string or a vector of character strings
  . Name of the entry points in **files** to be linked.
+ **x** : an integer which gives the id of a shared library linked
  into Scilab with a previous call to **link** .
+ **flag** : character string **'f'** or **'c'** for Fortran (default)
  or C code.




Description
~~~~~~~~~~~

**link** is a incremental link facility based on the dld library: this
command allows to add new compiled Fortran or C routines to Scilab
executable code. Linked routines can be called interactively by the
function **fort** . Linked routines can also be used as "external" for
e.g. non linear problem solvers ( **ode** , **optim** , **intg** ,
**dassl** ...).

a call to **link** returns an integer which gives the id of the shared
library which is loaded into Scilab. This number can then be used as
the first argument of the link function in order to link additional
function from the linked shared library. The shared library is removed
with the **ulink** command.

A routine can be unlinked with **ulink** . If the linked function has
been modified between two links, it is required to **ulink** the
previous instance before the new link.

**link('show')** returns the current linked routines.

To be able to link routines in a system independent way, it is
convenient to use the **ilib_for_link** utility function instead of
**link** .

(Experienced) users may also **link** a new Scilab interface routine
to add a set of new functions. See ` **intersci** `_ documentation for
interface generation and ` **ilib_build** `_ and ` **addinter** `_
functions.



Examples
~~~~~~~~


::

    
        //Example of the use of ilib_for_link with  a simple C code
        f1=['#include <math.h>'
        'void fooc(c,a,b,m,n)'
        'double a[],*b,c[];'
        'int *m,*n;'
        '{'
        '   int i;'
        '   for ( i =0 ; i < (*m)*(*n) ; i++) '
        '     c[i] = sin(a[i]) + *b; '
        '}'];
    
        mputl(f1,'fooc.c')
    
        //creating the shared library: a Makefile and a loader are 
        //generated, the code is compiled and a shared library built.
        ilib_for_link('fooc','fooc.o',[],"c") 
    
        // display the loader.sce file which calls link
        mprintf('%s\n',mgetl('loader.sce')) 
        // load the shared library 
        exec loader.sce 
    
        link('show') 
        // call the new linked entry point
        a=linspace(0,%pi,10);b=5;
        y1=call('fooc',a,2,'d',b,3,'d',size(a,1),4,'i',size(a,2),5,'i','out',size(a),1,'d')
        // check
        y1-(sin(a)+b)
        
        




See Also
~~~~~~~~

` **call** `_,` **external** `_,` **c_link** `_,` **addinter** `_,`
**ilib_for_link** `_,` **ilib_build** `_,

.. _
      : ://./utilities/../programming/external.htm
.. _
      : ://./utilities/../functions/addinter.htm
.. _
      : ://./utilities/../programming/call.htm
.. _
      : ://./utilities/ilib_build.htm
.. _
      : ://./utilities/intersci.htm
.. _
      : ://./utilities/ilib_for_link.htm
.. _
      : ://./utilities/c_link.htm


