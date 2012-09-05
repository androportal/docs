


close
=====

close a figure



Arguments
~~~~~~~~~

:h integer Handle of the window to close.
:



Description
~~~~~~~~~~~

This routine close a tksci figure (toplevel window). If a handle is
given, the figure corresponding to this handle is closed. Otherwise,
the current (active) figure is closed.



Examples
~~~~~~~~


::

    h=`figure`_();
    // creates  figure number 1.  
    `uicontrol`_( h, 'style','text', ...
                  'string','scilab is great', ...
                  'position',[50 70 100 100], ...
                  'fontsize',15);
    // put a clever text in figure 1
    `figure`_();
    // create figure 2
    `uicontrol`_( 'style','text', ...
               'string','Really great', 'position',[50 70 100 100], 'fontsize',15);
    // put a text in figure 2
    close();
    // close the current graphic window (ie fig. 2)
    close(h);
    // close figure 1




See Also
~~~~~~~~


+ `figure`_ create a figure
+ `gcf`_ Return handle of current graphic window.
+ `xdel`_ delete a graphics window
+ `delete`_ delete a graphic entity and its children.


.. _xdel: xdel.html
.. _gcf: gcf.html
.. _figure: figure.html
.. _delete: delete.html


