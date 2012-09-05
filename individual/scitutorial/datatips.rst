


datatips
========

Tool for placing and editing tips along the plotted curves.



Description
~~~~~~~~~~~

With this tool, it is possible to place, move and modify tips on the
curves (polylines). This can be done by program or interactively. The
commonly used mode is the interactive one:

The datatips mode can be enabled by `datatipToggle()`_ or using the
`Edit/Start datatip manager` or clicking on the toolbar icon of the
desired graphic window.

Once enabled, a simple left click on a curve will add a tip ( a small
box with information on the current point) at the nearest datapoint of
the curve. By default each curve can have a single tip but it is
possible to allow multiple datatips using the right click contextual
menu.

To move a tip, press left button on the small square mark on the
curve, wait a little and drag it to the desired location.

Right click on the tip mark opens a contextual dialog. This dialog
allows in particular to customize the information displayed in all the
datatips of the associated curve.

Middle click on the tip mark opens a contextual dialog that allows to
manage the orientation of the selected tip.



Examples
~~~~~~~~


::

    // this examples show how to manage tips by program
    x1=`linspace`_(0,1,100)';
    y1=x1.^3;
    `clf`_();
    `plot`_(x1,y1,x1,`sinc`_(10*x1));
    e=`gce`_();
    p1=e.children(1);//sinc(10*x1)
    p2=e.children(2); //x1^3
    t=`datatipCreate`_(p1,50);
    `datatipSetOrientation`_(t,"lower right")
    t=`datatipCreate`_(p1,[0.8 0.5]);
    t=`datatipCreate`_(p2,[0.1,0]);
    t=`datatipCreate`_(p2,[0.8 0.4]);
    `datatipSetOrientation`_(t,"upper left")
    
    function str=myfmt(curve, pt, index)
      str = `msprintf`_('sinc\n%s', `sci2exp`_(`round`_(pt*10)/10))
    endfunction
    `datatipSetDisplay`_(p1,myfmt) //then modify the function in the editor an ok





::

    // With 3D curves
    x1=`linspace`_(0,1.5,100)';
    y1=x1.^3;
    `clf`_();
    `param3d`_(x1.*`cos`_(10*x1),x1.*`sin`_(10*x1),x1);
    ax=`gca`_();ax.box='off';
    ax.rotation_angles=[76 31];
    p=`gce`_();
    t=`datatipCreate`_(p,50);
    `datatipSetOrientation`_(t,"lower right")
    `datatipCreate`_(p,[0,-1.1,1.1]);






See Also
~~~~~~~~


+ `datatipToggle`_ toggles the data tips mode.
+ `datatipInitStruct`_ Initialize the datatip structure associated
  with the given polyline.
+ `datatipCreate`_ Create a data tip on a polyline by program
+ `datatipMove`_ Move a specified datatip using the mouse.
+ `datatipSetDisplay`_ Set the function used to compute the datatip
  string.


.. _datatipCreate: datatipCreate.html
.. _datatipMove: datatipMove.html
.. _datatipSetDisplay: datatipSetDisplay.html
.. _datatipInitStruct: datatipInitStruct.html
.. _datatipToggle: datatipToggle.html


