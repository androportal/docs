====
"edit_curv"
====

Scilab Function Last update : April 1993
**edit_curv** - interactive graphic curve editor



Calling Sequence
~~~~~~~~~~~~~~~~

[x,y,ok,gc] = edit_curv(y)
[x,y,ok,gc] = edit_curv(x,y)
[x,y,ok,gc] = edit_curv(x,y,job)
[x,y,ok,gc] = edit_curv(x,y,job,tit)
[x,y,ok,gc] = edit_curv(x,y,job,tit,gc)




Parameters
~~~~~~~~~~


+ **x** : vector of x coordinates
+ **y** : vector of y coordinates
+ **job** : a character string formed by one to three of the
  characters 'a','x','y'

    + **'a'** : to add points to the edited curve
    + **'x' ** : to modify x coordinates of the edited curve points
    + **'y' ** : to modify y coordinates of the edited curve points

+ **tit** : a vector of three character strings which give the curve
  legend
+ **gc** : a list of graphic window parameters: **gc=list(rect,nax)**

    + **rect** : bounds of the graphics (see plot2d for details)
    + **nax** : graduation parameters (see plot2d for details)

+ **ok** : indicator if ok==%t user as returned with 'ok' menu else
  user as returned with 'abort' menu : list (graphical objects created
  under **edit_curv**




Description
~~~~~~~~~~~

**edit_curv** is an interactive graphic curve editor. To add a new
point simply click at the desired location, the added point will be
connected to the nearest end-point. to move a point click on it, drag
the mouse to the new position and click to set the new position



Author
~~~~~~

Serge Steer ; ; ; ; ;



