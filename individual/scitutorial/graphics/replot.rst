====
"replot"
====

Scilab Function Last update : 07/06/2005
**replot** - redraw the current graphics window with new boundaries



Calling Sequence
~~~~~~~~~~~~~~~~

replot(rect,[handle])




Parameters
~~~~~~~~~~


+ **rect** : row vector of size 4.
+ **handle** : optional argument. Graphics handle(s) of type Axes to
  select one or several given Axes. Only available in new graphics mode.




Description
~~~~~~~~~~~

**replot** is used to redraw the content of the current graphics
window with new boundaries defined by **rect=[xmin,ymin,xmax,ymax]** .
Under old graphics syntax, it works only with the driver **"Rec"** .

Under new graphics mode, this transformation can be applied to
specific axes given by Axes graphics handles via the handle argument.
If handle is not specified, the new boundaries are applied to the
current axes of the current figure. The transformation changes the
**data_bounds** value of those axes. Note that the axes property
**tight_limits** must also be set to "on" to strictly select those
bounds (see ` **axes_properties** `_). ****



Examples
~~~~~~~~


::

    backupstyle='?'
    if (get('old_style')=='off') then
      set('old_style','on');
      backupstyle='off'
    end
    
    // under old graphics mode
    x=[0:0.1:2*%pi]';
    plot2d(x,sin(x)) 
    replot([-1,-1,10,2]) 
    
    // under new graphics mode
    set old_style off
    xdel(winsid());
    plot() // plot demo
    f=gcf();
    replot([-1,-1,10,2],f.children(1)) // specify axes handle's value
    replot([-3,-2,8,4],f.children(2)) 
    if (backupstyle =='off') then set('old_style',backupstyle);end;
     
      




See Also
~~~~~~~~

` **xbasr** `_,` **xbasc** `_,` **clf** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/axes_properties.htm
.. _
      : ://./graphics/xbasr.htm
.. _
      : ://./graphics/clf.htm
.. _
      : ://./graphics/xbasc.htm


