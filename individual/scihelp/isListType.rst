


isListType, isTListType, isMListType
====================================

Check if it is a list, mlist, tlist variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int isListType(void* _pvCtx, int* _piAddress)



::

    int isNamedListType(void* _pvCtx, const char* _pstName)



::

    int isTListType(void* _pvCtx, int* _piAddress)



::

    int isNamedTListType(void* _pvCtx, const char* _pstName)



::

    int isMListType(void* _pvCtx, int* _piAddress)



::

    int isNamedMListType(void* _pvCtx, const char* _pstName)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
:



Return value
~~~~~~~~~~~~

1 if variable is a list type, otherwise 0



Scilab test script
~~~~~~~~~~~~~~~~~~


::

    fileData = [
    '#include <api_scilab.h>'
    '#include <Scierror.h>'
    '#include <MALLOC.h>'
    '/* ========================================================================== */'
    'int sci_getListType(char *fname)'
    '{'
    '    int* piAddr = NULL;'
    '    char pstRet[64];'
    ''
    '    getVarAddressFromPosition(pvApiCtx, 1, &piAddr);'
    ''
    '    if(isStringType(pvApiCtx, piAddr))'
    '    {//named check'
    '        char* pstVar = NULL;'
    '        getAllocatedSingleString(pvApiCtx, piAddr, &pstVar);'
    ''
    '        if(isNamedListType(pvApiCtx, pstVar))'
    '        {'
    '            sprintf(pstRet, ""%s"", ""isNamedList"");'
    '        }'
    '        else if(isNamedTListType(pvApiCtx, pstVar))'
    '        {'
    '            sprintf(pstRet, ""%s"", ""isNamedTList"");'
    '        }'
    '        else if(isNamedMListType(pvApiCtx, pstVar))'
    '        {'
    '            sprintf(pstRet, ""%s"", ""isNamedMList"");'
    '        }'
    '        else'
    '        {'
    '            sprintf(pstRet, ""%s"", ""unmanaged named type"");'
    '        }'
    '        FREE(pstVar);'
    '    }'
    '    else'
    '    {'
    '        if(isListType(pvApiCtx, piAddr))'
    '        {'
    '            sprintf(pstRet, ""%s"", ""isList"");'
    '        }'
    '        else if(isTListType(pvApiCtx, piAddr))'
    '        {'
    '            sprintf(pstRet, ""%s"", ""isTList"");'
    '        }'
    '        else if(isMListType(pvApiCtx, piAddr))'
    '        {'
    '            sprintf(pstRet, ""%s"", ""isMList"");'
    '        }'
    '        else'
    '        {'
    '            sprintf(pstRet, ""%s"", ""unmanaged type"");'
    '        }'
    '    }'
    '    createSingleString(pvApiCtx, nbInputArgument + 1, pstRet);'
    '    AssignOutputVariable(1) = nbInputArgument + 1;'
    '    return 0;'
    '}'
    ]
    
    currentPath = pwd();
    `mkdir`_(TMPDIR + "/getListType");
    `cd`_(TMPDIR + "/getListType");
    `mputl`_(fileData, "getListType.c");
    
    `ilib_verbose`_(0);
    files = ['getListType.c'];
    `ilib_build`_('libgetListType', ['getListType', 'sci_getListType'], files, []);
    `exec`_ loader.sce;
    
    a = `list`_();
    b = `tlist`_("test");
    c = `mlist`_("test");
    d = 1;
    
    `assert_checkequal`_(getListType(a), "isList");
    `assert_checkequal`_(getListType(b), "isTList");
    `assert_checkequal`_(getListType(c), "isMList");
    `assert_checkequal`_(getListType(d), "unmanaged type");
    
    `assert_checkequal`_(getListType("a"), "isNamedList");
    `assert_checkequal`_(getListType("b"), "isNamedTList");
    `assert_checkequal`_(getListType("c"), "isNamedMList");
    `assert_checkequal`_(getListType("d"), "unmanaged named type");
    
    //unload lib
    [bOK, ilib] = `c_link`_('libgetListType');
    if bOK then
      `ulink`_(ilib);
    end
    
    `cd`_(currentPath);




