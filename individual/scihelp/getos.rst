


getos
=====

return Operating System name and version



Calling Sequence
~~~~~~~~~~~~~~~~


::

    OS=getos()
    [OS,Version]=getos()




Description
~~~~~~~~~~~

`[OS,Version]=getos()` returns Operating System name and version.



Examples
~~~~~~~~


::

    OS=getos()
    [OS,version] = getos()
    if (getos() == "Windows") then 
       `disp`_("Scilab on Windows"); 
    end
    if (getos() == "Linux") then 
       `disp`_("Scilab on Linux"); 
    end
    if (getos() == "SunOS") then 
       `disp`_("Scilab on Solaris"); 
    end
    if (getos() == "Darwin") then 
       `disp`_("Scilab on MacOs"); 
    end




