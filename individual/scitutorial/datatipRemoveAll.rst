


datatipRemoveAll
================

Removes all datatips on a set of polylines.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatipRemoveAll(curve_handles)
    datatipRemoveAll()




Arguments
~~~~~~~~~

:curve_handles A vector of polyline handles.
:



Description
~~~~~~~~~~~

Removes all datatips on a set of polylines. If the `curve_handles`
argument is omitted, all datatips associated to current axes entities
are removed.



Examples
~~~~~~~~


::

    x=`linspace`_(0,1,100)';
    y=x.^3;
    `clf`_()
    `plot`_(x,x.^3,'b',x,x.^2,'r');
    e=`gce`_();e=e.children
    `datatipCreate`_(e(1),50);
    `datatipCreate`_(e(2),20);
    datatipRemoveAll(e) 
    
    `plot`_(x,x.^3,'b',x,x.^2,'r');
    e=`gce`_();e=e.children
    `datatipCreate`_(e(1),50);
    `datatipCreate`_(e(2),20);
    datatipRemoveAll()




See Also
~~~~~~~~


+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.
+ `datatipCreate`_ Create a data tip on a polyline by program
+ `datatipRemove`_ Removes a selected datatip


.. _datatipCreate: datatipCreate.html
.. _datatipRemove: datatipRemove.html
.. _datatips: datatips.html


