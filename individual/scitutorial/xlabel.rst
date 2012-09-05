


xlabel
======

label x-axis



ylabel
======

label y-axis



zlabel
======

label z-axis



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xlabel("string label")



::

    xlabel("string label", "PropertyName", PropertyValue)



::

    ylabel("string label")



::

    ylabel("string label", "PropertyName", PropertyValue)



::

    zlabel("string label")



::

    zlabel("string label", "PropertyName", PropertyValue)




Arguments
~~~~~~~~~

:"string label" a string: labels the axis of the current axes
: :"PropertyName" a string: a property name
: :PropertyValue a property value
:



Description
~~~~~~~~~~~

Each axes graphics object can have one label for the x-, y-, and
z-axis.

The label appears beneath its respective axis in a two-dimensional
plot and to the side or beneath the axis in a three-dimensional plot.



Sample
~~~~~~



Examples
~~~~~~~~


::

    `xlabel`_(["first line";"second line"])
          `ylabel`_("A label on y axis", "fontsize", 6)




See Also
~~~~~~~~


+ `title`_ display a title on a graphic window


.. _title: title.html


