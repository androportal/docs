====
"progressionbar"
====

sciGUI toolbox function Last update : 29/06/2004
**progressionbar** - Draw a progression bar



Calling Sequence
~~~~~~~~~~~~~~~~

winId=progressionbar(mes)
progressionbar(winId[,mes])




Parameters
~~~~~~~~~~


+ **mes** : string, message to display.
+ **winId** : integer greater than 0, window identificator.




Description
~~~~~~~~~~~

**progressionbar(mes)** create a new progression bar, return window
identificator.

**progressionbar(winId[,mes])** update the progression bar
identificated as winId.



Examples
~~~~~~~~


::

    
    winId=progressionbar('Do something');
    realtimeinit(0.3);
    for j=0:0.1:1,
        realtime(3*j);
        progressionbar(winId);
    end
    winclose(winId);




Author
~~~~~~

Jaime Urzua



