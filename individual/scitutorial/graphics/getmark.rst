====
"getmark"
====

Scilab Function Last update : 10/10/2005
**getmark** - dialog to select mark (symbol)



Calling Sequence
~~~~~~~~~~~~~~~~

[mark,mrkSize]=getmark()




Parameters
~~~~~~~~~~


+ **mark** : integer, the number of the selected mark
+ **mrkSize** : integer, the size of the selected mark




Description
~~~~~~~~~~~

**getmark** opens a graphic window to select a mark (symbol).



Examples
~~~~~~~~


::

    
    x=0:0.1:10;
    set("figure_style","new")
    [mark,mrkSize]=getmark();
    plot2d(x,sin(x),style=-mark);
    clf();
    plot2d(x,sin(x))
    e=gce(); // store the Compound containing the plot
    [mark,mrkSize]=getmark();
    e.children(1).mark_style = mark;
    




See Also
~~~~~~~~

,` **getfont** `_,` **getlinestyle** `_,

.. _
      : ://./graphics/getfont.htm
.. _
      : ://./graphics/getlinestyle.htm


