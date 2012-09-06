


else
====

keyword in if-then-else and select-case-then-else



Description
~~~~~~~~~~~

Used with `if` and `select`.



Examples
~~~~~~~~


::

    val = %t
    
    if val==%t then
        `disp`_("true");
    else
        `disp`_("false");
    end
    
    select val
       case %t then
          `disp`_("true");
       case %f then
          `disp`_("false");
       else
          `disp`_("a third variant");
    end




See Also
~~~~~~~~


+ `if`_ keyword for conditional execution
+ `select`_ select keyword


.. _if: if.html
.. _select: select.html


