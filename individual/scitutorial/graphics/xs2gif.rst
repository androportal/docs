====
"xs2gif"
====

Scilab Function Last update : 21/06/2005
**xs2gif** - send graphics to a file in GIF syntax



Calling Sequence
~~~~~~~~~~~~~~~~

xs2gif(win_num,filen,[color])




Parameters
~~~~~~~~~~


+ **win_num** : integer scalar or vector .
+ **filen** : string, file name.
+ **color** : optional integer. 0 means black and white and 1 means
  color. The default value is to use a value compatible with the screen
  status.




Description
~~~~~~~~~~~

**xs2gif** sends the recorded graphics of the window **win_num** in
the file **filen** in GIF format. This function works only if the
selected driver is **"Rec"** in the window **win_num** or if the
window is in "new style".

To convert a sequence of "GIF" files to an animated GIF file one can
use the "convert" program for ImageMagic (http://www.imagemagick.org/)

For example if one has generated a sequence of Gif files named
**img*.gif** it is possible to build an animated Gif file (named
anim.gif) by


::

    
        
        convert -delay 10  img*.gif anim.gif  
         
        




Examples
~~~~~~~~


::

     
        //simple example
        scf(0)
        plot2d()
        xs2gif(0,'foo.gif')
      




See Also
~~~~~~~~

` **xs2fig** `_,` **xs2ps** `_,` **xs2ppm** `_,

.. _
      : ://./graphics/xs2fig.htm
.. _
      : ://./graphics/xs2ppm.htm
.. _
      : ://./graphics/xs2ps.htm


