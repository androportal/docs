


datatipSetStyle
===============

Set the tip style for the given polyline datatips.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatipSetStyle(curve_handle)
    datatipSetStyle(curve_handle,t [,boxed [,labeled]])




Arguments
~~~~~~~~~

:curve_handle A handle on a polyline.
: :t A number with possible value 1 or 2. If omitted a choose popup
  will open.
: :boxed A a boolean, default value is %t.
: :labeled A a boolean, default value is %t.
:



Description
~~~~~~~~~~~

There are two different styles for the datatip polyline marker:

- Square mark, centered on the tip point.

- Directional arrows drawn along the tangeant at the tip point. The
arrowhead is on the tip point.

If the boxed option is selected the text associated with the datatip
is written in a boxed area.



Examples
~~~~~~~~


::

    x=`linspace`_(-20,20,1000);
    `clf`_();`plot`_(x,`sinc`_(x),x,`sinc`_(x^2));
    e=`gce`_();e=e.children;
    function str=mydisplay(curve, pt, index),str=`msprintf`_('%0.2g', pt(1)),endfunction
    `datatipSetDisplay`_(e(1),mydisplay) 
    datatipSetStyle(e(1),2,%f) 
    d1=`datatipCreate`_(e(1),540);
    
    datatipSetStyle(e(2),1,%t) 
    d2=`datatipCreate`_(e(2),200);






See Also
~~~~~~~~


+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.
+ `datatipCreate`_ Create a data tip on a polyline by program
+ `datatipInitStruct`_ Initialize the datatip structure associated
  with the given polyline.




History
~~~~~~~
Version Description 5.4.0 Function datatipSetStyle introduced.
.. _datatipCreate: datatipCreate.html
.. _datatipInitStruct: datatipInitStruct.html
.. _datatips: datatips.html


