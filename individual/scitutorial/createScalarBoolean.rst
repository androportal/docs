


createScalarBoolean
===================

Create scalar boolean variable in Scilab memory.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int createScalarBoolean(void* _pvCtx, int _iVar, int _iBool)



::

    int createNamedScalarBoolean(void* _pvCtx, const char* _pstName, int _iBool)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
: :_iBool Boolean value.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



