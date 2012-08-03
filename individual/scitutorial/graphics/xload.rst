====
"xload"
====

Scilab Function Last update : 08/12/2005
**xload** - load a saved graphics



Calling Sequence
~~~~~~~~~~~~~~~~

xload(file_name,[win_num])




Parameters
~~~~~~~~~~


+ **file_name** : string, name of the file.
+ **win_num** : integer, the graphics window number. If not given, the
  current graphics window is used.




Description
~~~~~~~~~~~

**xload** reloads the graphics contained in the file **file_name** in
the graphics window **win_num** .

For files containing new graphics, the **load** function can be used
instead of **xload** . **xload** does not restore the window number,
the window size nor the window dimensions.



Examples
~~~~~~~~


::

    
    
        //new style
        set figure_style new
        t=0:0.01:10;
        subplot(211),plot2d(t,sin(t))
        subplot(212),plot2d(t,sin(3*t))
        save(TMPDIR+'/foo.scg',gcf())
        clf()
        load(TMPDIR+'/foo.scg')
        
        a=gca();
        curve=a.children.children; //handle on the curve
        save(TMPDIR+'/foo.scg',curve)
        delete(curve)
        load(TMPDIR+'/foo.scg')
        
    
        //old style
        set figure_style old
        t=0:0.01:10;
        subplot(211),plot2d(t,sin(t))
        subplot(212),plot2d(t,sin(3*t))
        xsave(TMPDIR+'/foo.scg')
        xbasc()
        set figure_style old
        xload(TMPDIR+'/foo.scg')
    
    
     
      




See Also
~~~~~~~~

` **xsave** `_,` **load** `_,` **loadplots** `_,` **save** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xsave.htm
.. _
      : ://./graphics/../fileio/load.htm
.. _
      : ://./graphics/loadplots.htm
.. _
      : ://./graphics/../fileio/save.htm


