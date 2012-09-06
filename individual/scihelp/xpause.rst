


xpause
======

suspend Scilab



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xpause(microsecs)




Description
~~~~~~~~~~~

`xpause` suspends the current process for the number of microseconds
specified by the argument. The actual suspension time may be longer
because of other activities in the system, or because of the time
spent in processing the call.



Examples
~~~~~~~~


::

    t=[0:0.3:2*%pi]';
    z=`sin`_(t)*`cos`_(t'); 
    `plot3d1`_(t,t,z) 
    f=`gcf`_();f.pixmap='on';
    for h=0:0.1:1
      hsv=[h*`ones`_(32,1) `linspace`_(0,1,32)' 0.7*`ones`_(32,1)];
      f.color_map=`hsv2rgb`_(hsv);
      `show_pixmap`_()
      xpause(100000)
    end




