


toolbar
=======

show or hide a toolbar



Calling Sequence
~~~~~~~~~~~~~~~~


::

    state1=toolbar(winnum,state2)
    state1=toolbar(winnum)




Arguments
~~~~~~~~~

:state1 returns toolbar's state 'on' or 'off'
: :winum window's number (-1: Scilab console window)
: :state2 'on' or 'off' set toolbar's state
:



Description
~~~~~~~~~~~

show or hide a toolbar.



Examples
~~~~~~~~


::

    toolbar(-1,'off')
    state=toolbar(-1,'on')
    
    `plot3d`_();
    h=`gcf`_();
    toolbar(h.figure_id,'off')




