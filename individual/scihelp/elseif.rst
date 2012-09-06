


elseif
======

keyword in if-then-else



Description
~~~~~~~~~~~

If there is more than one condition then keyword `elseif` is usefull.
If there is more than one `elseif` then the first true condition is
selected (even other also are true).



Examples
~~~~~~~~


::

    a=1;
    if a==1 then
        `disp`_("a equals 1")
    elseif a==2 then
        `disp`_("a equals 2")
    elseif a==1 & a>0 then
        `disp`_("this condition is true, but never will be selected, because it is the second true condition.")
    else
        `disp`_("Case not handled.")
    end




See Also
~~~~~~~~


+ `if`_ keyword for conditional execution
+ `select`_ select keyword


.. _if: if.html
.. _select: select.html


