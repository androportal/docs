


datatipSetOrientation
=====================

Set the position of the text box associated with the given tip.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatipSetOrientation(tip_handle,orient)




Arguments
~~~~~~~~~

:tip_handle A handle on a datatip.
:

:orient A character string with possible values: `"automatic"` `"upper
  left"` `"upper right"`, `"lower left"`, `"lower right"` .
:



Description
~~~~~~~~~~~

Set the position on the text box with respect to the polyline point.
With the `"automatic"` orientation the program makes the choice of the
position trying to prevent text from overlapping polyline, it also
tries to to keep the text box within the plot boundaries.



Examples
~~~~~~~~


::

    x=`linspace`_(-20,20,1000);
    `clf`_()
    `plot`_(x,`sinc`_(x),x,`sinc`_(x^2));
    e=`gce`_();e=e.children;
    d1=`datatipCreate`_(e(1),500);
    d2=`datatipCreate`_(e(2),60);
    datatipSetOrientation(d2,"lower left")




See Also
~~~~~~~~


+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.
+ `datatipCreate`_ Create a data tip on a polyline by program
+ `datatipRemove`_ Removes a selected datatip


.. _datatipCreate: datatipCreate.html
.. _datatipRemove: datatipRemove.html
.. _datatips: datatips.html


