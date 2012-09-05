


win64
=====

Determine whether Windows x64 version of Scilab (Windows only)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    win64()




Description
~~~~~~~~~~~

tf =win64() returns boolean (%t) for Windows x64 of Scilab and boolean
(%f) otherwise.



Example
~~~~~~~


::

    if `getos`_() == 'Windows' then
      if win64() then
        `disp`_('Scilab built for Windows x64.');
      else
        `disp`_('Scilab built for Windows 32 bits.');
      end
    end




See Also
~~~~~~~~


+ `getos`_ return Operating System name and version


.. _getos: getos.html


