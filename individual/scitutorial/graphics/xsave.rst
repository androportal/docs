====
"xsave"
====

Scilab Function Last update : 08/12/2005
**xsave** - save graphics into a file



Calling Sequence
~~~~~~~~~~~~~~~~

xsave(filename,[win_num])




Parameters
~~~~~~~~~~


+ **file_name** : string, name of the file.
+ **win_num** : integer, the graphics window number. If not given, the
  current graphics window is used.




Description
~~~~~~~~~~~

**xsave** saves the graphics contained in the graphics window
**win_num** in the binary file **file_name** . and can be reloaded
with **xload** .

For new graphics **xsave(file_name,win_num)** use preferabily
**save(file_name,scf(win_num))** .



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

` **xload** `_,` **save** `_,` **load** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/../fileio/load.htm
.. _
      : ://./graphics/../fileio/save.htm
.. _
      : ://./graphics/xload.htm


