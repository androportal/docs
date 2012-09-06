


CallOverloadFunction
====================

a C gateway function uses to call overload function or macro



Calling Sequence
~~~~~~~~~~~~~~~~


::

    CallOverloadFunction(_iVar)




Arguments
~~~~~~~~~

:iVar Specifies which input argument will be used to create the name
  of overload function/macro
:



Description
~~~~~~~~~~~

a C gateway function uses to call overload function or macro



Examples
~~~~~~~~

This example returns the size:


+ returns the size of input argument
+ if input argument is a string returns the length




Gateway Source
~~~~~~~~~~~~~~


::

    int callOverload(char *fname,unsigned long fname_len)
    {
        CheckRhs(1, 1);
        CheckLhs(0, 1);
    
        CallOverloadFunction(1);
        return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    function x=%c_getSize(a)
        x = lenght(a);
    endfunction
    
    function x=%s_getSize(a)
        x = `size`_(a);
    endfunction
    
    a = [1,2,3,4];
    a_ref = [2,2];
    `assert_checkequal`_(getSize(a) == a_ref);
    
    b = ["May","the","puffin";"be","with","you"];
    b_ref = [3,3,6;2,4,3];
    `assert_checkequal`_(getSize(b) == b_ref);




