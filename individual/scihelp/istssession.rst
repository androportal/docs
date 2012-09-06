


istssession
===========

Determines if scilab is launched from a ms terminal service session
(Windows only)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    istssession()




Description
~~~~~~~~~~~

tf =istssession() returns boolean (%t) if scilab is launched from a ms
terminal service session and boolean (%f) otherwise.



Examples
~~~~~~~~


::

    if `getos`_() == 'Windows' then
      if istssession() then
        `disp`_('Scilab from a ms terminal service session.');
      else
        `disp`_('Scilab standard session.');
      end
    end




