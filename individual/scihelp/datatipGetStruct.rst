


datatipGetStruct
================

Retreive the datatips data structure from the polyline entity.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatips_struct=datatipGetStruct(curve_handle)




Arguments
~~~~~~~~~

:curve_handle A handle on a polyline.
:

:datatips_struct A tlist of type `datatips`.
:



Description
~~~~~~~~~~~

`datatipGetStruct` extract the datatips data structure out of the
polyline entity. It may be called to retreive properties of the
datatips data structure to customize the tip display.



Examples
~~~~~~~~


::

    x=`linspace`_(0,1,100)';
    y=x.^3;
    `clf`_()
    `plot`_(x,y);
    e=`gce`_();p=e.children(1);//get the handle on the polyline
    `datatipCreate`_(p,50);
    `datatipCreate`_(p,20);
    datatips_struct=datatipGetStruct(p)
    datatips_struct.formatfunction




See Also
~~~~~~~~


+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.
+ `datatipSetDisplay`_ Set the function used to compute the datatip
  string.
+ `datatipInitStruct`_ Initialize the datatip structure associated
  with the given polyline.


.. _datatipSetDisplay: datatipSetDisplay.html
.. _datatipInitStruct: datatipInitStruct.html
.. _datatips: datatips.html


