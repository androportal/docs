


link
====

dynamic linker



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x = link(files [, sub-names,flag]);
    link(x , sub-names [, flag]);
    lstID = link("show")
    lst = link()




Arguments
~~~~~~~~~

:files a character string or a vector of character strings, the files
  names used to define the new entry point (compiled routines, user
  libraries, system libraries,..)
: :sub-names a character string or a vector of character strings .
  Name of the entry points in `files` to be linked.
: :x an integer which gives the id of a shared library linked into
  Scilab with a previous call to `link`.
: :flag character string `'f'` or `'c'` for Fortran (default) or C
  code.
: :listID returns the current linked ID routines.
: :list returns names of functions linked.
:



Description
~~~~~~~~~~~

`link` is a incremental/dynamic link facility: this command allows to
add new compiled Fortran or C routines to Scilab executable code.
Linked routines can be called interactively by the function `call`.
Linked routines can also be used as "external" for e.g. non linear
problem solvers ( `ode`, `optim`, `intg`, `dassl`...).

`link()` returns a string matrix with linked functions.

a call to `link` returns an integer which gives the id of the shared
library which is loaded into Scilab. This number can then be used as
the first argument of the link function in order to link additional
function from the linked shared library. The shared library is removed
with the `ulink`_ command.

A routine can be unlinked with `ulink`_. If the linked function has
been modified between two links, it is required to `ulink`_ the
previous instance before the new link.

`link('show')` returns the current linked routines.

To be able to link routines in a system independent way, it is
convenient to use the `ilib_for_link` utility function instead of
`link`.

(Experienced) users may also `link` a new Scilab interface routine to
add a set of new functions. See `ilib_build`_ and `addinter`_
functions.

Number of 'link' in a scilab session can be limited by the operating
system. On Windows, you cannot load more than 80 dynamic libraries at
the same time.



Examples
~~~~~~~~


::

    //Example of the use of ilib_for_link with  a simple C code
    `cd`_ TMPDIR
    f1=['#include <math.h>'
        'void fooc(double c[],double a[],double *b,int *m,int *n)'
        '{'
        '   int i;'
        '   for ( i =0 ; i < (*m)*(*n) ; i++) '
        '     c[i] = sin(a[i]) + *b; '
        '}'];
    
    `mputl`_(f1,'fooc.c');
    
    //creating the shared library: a Makefile and a loader are 
    //generated, the code is compiled and a shared library built.
    `ilib_for_link`_('fooc','fooc.c',[],"c") 
    
    // display the loader.sce file which calls link
    `mprintf`_('%s\n',`mgetl`_('loader.sce')) 
    // load the shared library 
    `exec`_ loader.sce;
    
    link('show') 
    // call the new linked entry point
    a=`linspace`_(0,%pi,10);b=5;
    y1=`call`_('fooc',a,2,'d',b,3,'d',`size`_(a,1),4,'i',`size`_(a,2),5,'i','out',`size`_(a),1,'d')
    // check
    y1-(`sin`_(a)+b)
    `exec`_ cleaner.sce;




See Also
~~~~~~~~


+ `ulink`_ unlink a dynamically linked shared object
+ `call`_ Fortran or C user routines call
+ `external`_ Scilab Object, external function or routine
+ `c_link`_ check if symbol loaded with dynamic link
+ `addinter`_ new functions interface dynamic link at run time.
+ `ilib_for_link`_ utility for shared library management with link
+ `ilib_build`_ utility for shared library management
+ `api_scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory


.. _call: call.html
.. _ilib_for_link: ilib_for_link.html
.. _addinter: addinter.html
.. _ulink: ulink.html
.. _external: external.html
.. _c_link: c_link.html
.. _ilib_build: ilib_build.html
.. _api_scilab: api_scilab.html


