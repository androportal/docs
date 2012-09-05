


datatipRemove
=============

Removes a selected datatip



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatipRemove(polyline_handle,ind)
    datatipRemove(datatip_handle)




Arguments
~~~~~~~~~

:polyline_handle The handle of the polyline, where the tip is
: :datatip_handle The handle of the tip to be removed.
: :ind an integer, the tip index
:



Description
~~~~~~~~~~~

Removes a selected datatip.



Examples
~~~~~~~~


::

    x=`linspace`_(0,1,100)';
    y=x.^3;
    `clf`_()
    `plot`_(x,y);
    e=`gce`_();p=e.children(1);//get the handle on the polyline
    t1=`datatipCreate`_(p,80);
    `datatipCreate`_(p,40);
    datatipRemove(p,2) 
    datatipRemove(t1)




See Also
~~~~~~~~


+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.
+ `datatipCreate`_ Create a data tip on a polyline by program


.. _datatipCreate: datatipCreate.html
.. _datatips: datatips.html


