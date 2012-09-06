


deleteNamedVariable
===================

a C gateway function uses to delete a variable from name



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int deleteNamedVariable(void* _pvCtx, const char* _pstName)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_pstName Name of the variable.
:



Description
~~~~~~~~~~~

a C gateway function uses to delete a variable from name



Examples
~~~~~~~~



Scilab test script
~~~~~~~~~~~~~~~~~~


::

    fileData = ['#include ""api_scilab.h""'
    '#include ""MALLOC.h""'
    ''
    'int sci_deleteNamedVariable(char *fname, unsigned long fname_len)'
    '{'
    '    SciErr sciErr;'
    '    int iRet = 0;'
    '    int* piAddr = NULL;'
    '    char* pstVarName = NULL;'
    ''
    '    CheckRhs(1,1);'
    '    CheckLhs(1,1);'
    ''
    '    sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);'
    '    if(sciErr.iErr)'
    '    {'
    '        printError(&sciErr, 0);'
    '        return 1;'
    '    }'
    ''
    '    if(getAllocatedSingleString(pvApiCtx, piAddr, &pstVarName))'
    '    {'
    '        //error'
    '        return 1;'
    '    }'
    ''
    '    if(isNamedVarExist(pvApiCtx, pstVarName))'
    '    {'
    '        iRet = deleteNamedVariable(pvApiCtx, pstVarName);'
    '    }'
    ''
    '    createScalarBoolean(pvApiCtx, Rhs + 1, iRet);'
    '    AssignOutputVariable(1) = Rhs + 1;'
    '    return 0;'
    '}'];
    
    currentPath = pwd();
    `mkdir`_(TMPDIR + "/deleteNamedVariable");
    `cd`_(TMPDIR + "/deleteNamedVariable");
    `mputl`_(fileData, "deleteNamedVariable.c");
    
    `ilib_verbose`_(0);
    files = ['deleteNamedVariable.c'];
    `ilib_build`_('libdeleteNamedVariable', ['deleteNamedVariable', 'sci_deleteNamedVariable'], files, []);
    `exec`_ loader.sce;
    
    function test()
        `assert_checkequal`_(`exists`_("a"), 1);
        `assert_checkequal`_(a, 1);
        a = 2;
        `assert_checkequal`_(a, 2);
        `assert_checktrue`_(deleteNamedVariable("a"));
        `assert_checkequal`_(`exists`_("a"), 1);
        `assert_checkequal`_(a, 1);
    endfunction
    
    a = 1;
    test();
    `assert_checkequal`_(a, 1);
    deleteNamedVariable("a");
    `assert_checkequal`_(`exists`_("a"), 0);




