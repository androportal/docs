


getScalarInteger8
=================

Get scalar integer variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int getScalarInteger8(void* _pvCtx, int* _piAddress, char* _pcData)



::

    int getNamedScalarInteger8(void* _pvCtx, const char* _pstName, char* _pcData)



::

    int getScalarInteger16(void* _pvCtx, int* _piAddress, short* _psData)



::

    int getNamedScalarInteger16(void* _pvCtx, const char* _pstName, short* _psData)



::

    int getScalarInteger32(void* _pvCtx, int* _piAddress, int* _piData)



::

    int getNamedScalarInteger32(void* _pvCtx, const char* _pstName, int* _piData)



::

    int getScalarUnsignedInteger8(void* _pvCtx, int* _piAddress, unsigned char* _pucData)



::

    int getNamedScalarUnsignedInteger8(void* _pvCtx, const char* _pstName, unsigned char* _pucData)



::

    int getScalarUnsignedInteger16(void* _pvCtx, int* _piAddress, unsigned short* _pusData)



::

    int getNamedScalarUnsignedInteger16(void* _pvCtx, const char* _pstName, unsigned short* _pusData)



::

    int getScalarUnsignedInteger32(void* _pvCtx, int* _piAddress, unsigned int* _puiData)



::

    int getNamedScalarUnsignedInteger32(void* _pvCtx, const char* _pstName, unsigned int* _puiData)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
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



