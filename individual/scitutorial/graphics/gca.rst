====
"gca"
====

Scilab Function Last update : 13/01/2005
**gca** - Return handle of current axes.



Calling Sequence
~~~~~~~~~~~~~~~~

a = gca()




Parameters
~~~~~~~~~~


+ **a** : handle, the handle of the current axes entity.




Description
~~~~~~~~~~~

This routine returns the handle of the current axes for the current
figure.



Examples
~~~~~~~~


::

    
       
        set("figure_style","new") //create a figure
        subplot(211)
        a=gca() //get the current axes
        a.box="off";
        t=-%pi:0.3:%pi;plot3d(t,t,sin(t)'*cos(t),80,50,'X@Y@Z',[5,2,4]);
        subplot(212)
        plot2d(); //simple plot
        a=gca() //get the current axes
        a.box="off";
        a.x_location="middle";
        a.parent.background=4;
        delete(gca()) // delete the current axes    
        xdel(0) //delete a graphics window 
    
      




See Also
~~~~~~~~

` **gda** `_,` **gcf** `_,` **gce** `_,` **get** `_,`
**graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/gcf.htm
.. _
      : ://./graphics/gda.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/gce.htm


