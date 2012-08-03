====
"varargin"
====

Scilab keyword Last update : April 1998
**varargin** - variable numbers of arguments in an input argument list



Description
~~~~~~~~~~~

A function whose input argument list contains **varargin** can be
called with more input arguments than indicated in the input argument
list. The calling arguments passed form **varargin** keyword onwards
may then be retrieved within the function in a list named **varargin**
.

Suppose that **varargin** keyword is the **n** th argument of the
formal input argument list, then if the function is called with less
than **n-1** input arguments the **varargin** list is not defined, if
the function is called with **n-1** arguments then **varargin** list
is an empty list.

**y = function ex(varargin)** may be called with any number of input
arguments. Within function **ex** input arguments may be retrieved in
**varargin(i)** , **i=1:length(varargin)**



Remark
~~~~~~

Named argument syntax like **foo(...,key=value) ** is incompatible
with the use of varargin.



Examples
~~~~~~~~


::

    
    
    deff('exampl(a,varargin)',['[lhs,rhs]=argn(0)'
                              'if rhs>=1 then disp(varargin),end'])
    exampl(1)
    exampl()
    exampl(1,2,3)
    l=list('a',%s,%t);
    exampl(1,l(2:3))
     
      




See Also
~~~~~~~~

` **function** `_,` **varargout** `_,` **list** `_,

.. _
      : ://./functions/varargout.htm
.. _
      : ://./functions/../programming/list.htm
.. _
      : ://./functions/function.htm


