


xdel
====

delete a graphics window



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xdel([win-nums])




Arguments
~~~~~~~~~

:win-nums integer or integer vector
:



Description
~~~~~~~~~~~

`xdel` deletes the graphics windows `win-nums` or the current graphics
window if no argument is given.



Examples
~~~~~~~~


::

    `plot2d`_();
    `scf`_();
    `plot3d`_();
    xdel(0); // delete the first graphic
    xdel(); // delete the current figure




See Also
~~~~~~~~


+ `close`_ close a figure
+ `delete`_ delete a graphic entity and its children.


.. _delete: delete.html
.. _close: close.html


