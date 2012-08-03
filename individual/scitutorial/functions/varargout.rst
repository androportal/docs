====
"varargout"
====

Scilab keyword Last update : April 1998
**varargout** - variable numbers of arguments in an output argument
list



Description
~~~~~~~~~~~

A function whose output argument list contains **varargout** must be
called with more output arguments than indicated in the output
argument list. The calling arguments passed form **varargout** keyword
onwards are extracted out of the **varargout** list defined in the
function

**varagout = function ex()** may be called with any number of output
arguments. Within function **ex** output arguments may be stored in in
**varargout(i)** .



Examples
~~~~~~~~


::

    
    
    deff('varargout=exampl()','varargout=list(1,2,3,4)')
    
    x=exampl()
    [x,y]=exampl()
    [x,y,z]=exampl()
     
      




See Also
~~~~~~~~

` **function** `_,` **varargin** `_,` **list** `_,

.. _
      : ://./functions/varargin.htm
.. _
      : ://./functions/../programming/list.htm
.. _
      : ://./functions/function.htm


