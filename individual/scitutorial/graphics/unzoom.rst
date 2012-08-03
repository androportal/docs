====
"unzoom"
====

Scilab Function Last update : 16/11/2004
**unzoom** - unzoom graphics



Calling Sequence
~~~~~~~~~~~~~~~~

unzoom()
unzoom(H)




Parameters
~~~~~~~~~~


+ **H** : A handle on an axes or a vector of handle on axes.




Description
~~~~~~~~~~~

**unzoom()** is used to remove the zoom effect for all the axes of the
current graphic figure:

**unzoom(H)** is used to remove the zoom effect for all the axes given
by the vector of handles on axes **H** .



Examples
~~~~~~~~


::

    
        clf()
        x=0:0.01:6*%pi;
        plot2d(x,sin(x^2))
        zoom_rect([16,-1,18,1])
        unzoom()
    
    
        //subplots accordingly
        clf()
        x=0:0.01:6*%pi;
        subplot(211)
        plot2d(x,cos(x))
        a1=gca();
        subplot(212)
        plot2d(x,cos(2*x))
        a2=gca();
        rect=[3 -2 7 10]; //a rectangle specified in the current axes (last one) coordinates
        zoom_rect(rect) 
        unzoom(a1) //unzoom first plot only
        unzoom(a2) //unzoom second plot only
        zoom_rect(rect) //zoom again
        unzoom() //unzoom all the axes
    




See Also
~~~~~~~~

` **zoom_rect** `_,` **axes_properties** `_,



Author
~~~~~~

Serge Steer INRIA

.. _
      : ://./graphics/axes_properties.htm
.. _
      : ://./graphics/zoom_rect.htm


