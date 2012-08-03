====
"toolbar"
====

Scilab Function Last update : 16/02/2005
**toolbar** - show or hide a toolbar (Windows)



Calling Sequence
~~~~~~~~~~~~~~~~

state1=toolbar(winnum,state2)
state1=toolbar(winnum)




Parameters
~~~~~~~~~~


+ **state1** : returns toolbar's state 'on' or 'off'
+ **winum** : window's number (-1 : console )
+ **state2** : 'on' or 'off' set toolbar's state




Description
~~~~~~~~~~~

show or hide a toolbar (Windows).



Examples
~~~~~~~~


::

    toolbar(-1,'off')
    state=toolbar(-1,'on')
    
    plot3d();
    h=gcf();
    toolbar(h.figure_id,'off')
    




Author
~~~~~~

Allan CORNET



