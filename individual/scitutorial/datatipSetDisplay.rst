


datatipSetDisplay
=================

Set the function used to compute the datatip string.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatipSetDisplay(curve_handle,fun)
    datatipSetDisplay(curve_handle)




Arguments
~~~~~~~~~

:tip_handle A handle on a datatip.
:

:fun A variable that contains a function (type==11 or type==13). This
  function calling sequence must be `str=fun(curve, pt, index)` where
  `curve` is the handle of the polyline associated with the datatip,
  `pt` is the vector of datatip coordinates and `index` is the mesh
  point index of the datatip point or the index of the previous mesh
  point if interpolation is allowed. This function must return a string
  or a vector of strings in `str`.
:



Description
~~~~~~~~~~~

Set the function used to format the text to be displayed at the
datatip point.



Examples
~~~~~~~~


::

    x=`linspace`_(-1,1,1000);
    `clf`_()
    `plot`_(x,`sinc`_(20*x),x,1-x^2);
    e=`gce`_();e=e.children;
    d21=`datatipCreate`_(e(2),600);
    d22=`datatipCreate`_(e(2),200);
    d1=`datatipCreate`_(e(1),700);
    
    function str=mydisplay(curve, pt, index)
       str=`msprintf`_('sinc(%-0.2g)=%-0.2g', 20*pt(1),pt(2))
    endfunction
    datatipSetDisplay(e(2),mydisplay)



The display function can also be used to place tip text in different
locations:

::

    function str=infodisplay(curve, pt, index)
       `xinfo`_(`msprintf`_('x=%0.2g,\t 1-x^2=%0.2g', pt(1),pt(2)))
       str=''
    endfunction
    datatipSetDisplay(e(1),infodisplay) //tip text displayed in the info bar




See Also
~~~~~~~~


+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.
+ `datatipSetOrientation`_ Set the position of the text box associated
  with the given tip.


.. _datatipSetOrientation: datatipSetOrientation.html
.. _datatips: datatips.html


