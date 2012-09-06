


createScalarInteger8
====================

Create scalar integer variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int createScalarInteger8(void* _pvCtx, int _iVar, char cData)



::

    int createNamedScalarInteger8(void* _pvCtx, const char* _pstName, char _cData)



::

    int createScalarInteger16(void* _pvCtx, int _iVar, short sData)



::

    int createNamedScalarInteger16(void* _pvCtx, const char* _pstName, short _sData)



::

    int createScalarInteger32(void* _pvCtx, int _iVar, int iData)



::

    int createNamedScalarInteger32(void* _pvCtx, const char* _pstName, int _iData)



::

    int createScalarUnsignedInteger8(void* _pvCtx, int _iVar, unsigned char ucData)



::

    int createNamedScalarUnsignedInteger8(void* _pvCtx, const char* _pstName, unsigned char _ucData)



::

    int createScalarUnsignedInteger16(void* _pvCtx, int _iVar, unsigned short usData)



::

    int createNamedScalarUnsignedInteger16(void* _pvCtx, const char* _pstName, unsigned short _usData)



::

    int createScalarUnsignedInteger32(void* _pvCtx, int _iVar, unsigned int uiData)



::

    int createNamedScalarUnsignedInteger32(void* _pvCtx, const char* _pstName, unsigned int _uiData)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
: :_cData Integer 8 bits value.
: :_sData Integer 16 bits value.
: :_iData Integer 32 bits value.
: :_ucData Unsigned integer 8 bits value.
: :_usData Unsigned integer 16 bits value.
: :_uiData Unsigned integer 32 bits value.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



