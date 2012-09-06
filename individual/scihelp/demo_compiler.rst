


demo_compiler
=============

test the presence of a compileur



Calling Sequence
~~~~~~~~~~~~~~~~


::

    status = demo_compiler()




Description
~~~~~~~~~~~

The function demo_compiler asks the computer if it owns a compileur C
or not. It returns a boolean indicating wether the compiler exists or
not.



Examples
~~~~~~~~


::

    select num,
     case 0
      return;
     case 2 then 
      st = demo_compiler(); //The compiler will be used
      if (st==%t) then
        `mode`_(0);
        wheel_build_and_load()
      end
     case 1 then // A precomputed value
      x=`read`_(path+'/x.wrt',8,301);
      wheelg=wheelgs;
      show(x);
    end




See Also
~~~~~~~~


+ `findmsvccompiler`_ detects Microsoft C Compiler


.. _findmsvccompiler: findmsvccompiler.html


