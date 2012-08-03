====
"waitbar"
====

sciGUI toolbox function Last update : 29/06/2004
**waitbar** - Draw a waitbar



Calling Sequence
~~~~~~~~~~~~~~~~

winId=waitbar(x)
winId=waitbar(x,mes)
winId=waitbar(mes)
waitbar(x,winId)
waitbar(mes,winId)
waitbar(x,mes,winId)




Parameters
~~~~~~~~~~


+ **x** : real, fraction to display.
+ **mes** : string, message to display.
+ **winId** : integer greater than 0, window identificator.




Description
~~~~~~~~~~~

**waitbar(x)** create a new waitbar displaying a fraction x, return
window identificator.

**waitbar(x,mes)** create a new waitbar displaying a fraction x and
message mes, return window identificator.

**waitbar(mes)** create a new waitbar displaying a fraction 0 and
message mes, return window identificator.

**waitbar(x,mes)** create a new waitbar displaying a fraction 0 and
message mes, return window identificator.

**waitbar(x,winId)** , **waitbar(mes,winId)** and
**waitbar(x,mes,winId)** update waitbar with window identificator
winId.



Examples
~~~~~~~~


::

    
    winId=waitbar('This is an example');
    realtimeinit(0.3);
    for j=0:0.1:1,
        realtime(3*j);
        waitbar(j,winId);
    end
    winclose(winId);




Author
~~~~~~

Jaime Urzua



