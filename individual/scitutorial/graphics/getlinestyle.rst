====
"getlinestyle"
====

Scilab Function Last update : 10/10/2005
**getlinestyle** - dialog to select linestyle



Calling Sequence
~~~~~~~~~~~~~~~~

k=getlinestyle()




Parameters
~~~~~~~~~~


+ **k** : integer, selected linestyle or [] if the "Cancel" button has
  been clicked.




Description
~~~~~~~~~~~

**getlinestyle** opens a graphic window to select a line style.



Examples
~~~~~~~~


::

    set("figure_style","new")
    x=0:0.1:10;
    plot2d(x,sin(x))
    e=gce(); // store the Compound containing the plot
    e.children(1).line_style = getlinestyle();
    




See Also
~~~~~~~~

` **getmark** `_,

.. _
      : ://./graphics/getmark.htm


