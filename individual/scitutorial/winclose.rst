


winclose
========

close windows created by sciGUI



Calling Sequence
~~~~~~~~~~~~~~~~


::

    winclose(winIds)




Arguments
~~~~~~~~~

:winIds matrix of integer greater than 0, window identificator.
:



Description
~~~~~~~~~~~

`winclose(winIds)` close windows created by sciGUI.



Examples
~~~~~~~~


::

    //CREATE SOME WINDOWS
    win1=`waitbar`_('This is an example');
    win2=`waitbar`_('HELLO!');
    winclose([win1,win2]);




