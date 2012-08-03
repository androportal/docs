====
"winclose"
====

sciGUI toolbox function Last update : 10/02/2006
**winclose** - close windows created by sciGUI



Calling Sequence
~~~~~~~~~~~~~~~~

winclose(winIds)




Parameters
~~~~~~~~~~


+ **winIds** : matrix of integer greater than 0, window identificator.




Description
~~~~~~~~~~~

**winclose(winIds)** close windows created by sciGUI.



Examples
~~~~~~~~


::

    
    //CREATE SOME WINDOWS
    win1=waitbar('This is an example');
    win2=waitbar('HELLO!');
    winclose([win1,win2]);




Author
~~~~~~

Jaime Urzua



