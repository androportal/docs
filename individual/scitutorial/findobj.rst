


findobj
=======

find an object with specified property



Calling Sequence
~~~~~~~~~~~~~~~~


::

    h =  findobj(propertyName, propertyValue)




Arguments
~~~~~~~~~

:propertyName string character Name of the property to test (case
  unsensitive).
: :propertyValue string character specify the value the tested
  propoerty should be equal to (case sensitive).
: :h handle of the found object.
:



Description
~~~~~~~~~~~

This routine is currently used to find objects knowing their 'tag'
property. It returns handle of the first found object which property
propertyName is equal to propertyValue . If such an object does not
exist, the function returns an empty matrix.



Examples
~~~~~~~~


::

    // Create a figure
    h=`figure`_();
    // Put a text in the figure
    `uicontrol`_(h, "style","text", ...
                 "string","This is a figure", ...
                 "position",[50 70 100 100], ...
                 "fontsize",15, ...
                 "tag","Alabel");
    // Find the object which "tag" value is "Alabel"
    lab=findobj("tag","Alabel");
    `disp`_("The text of the label is """+lab.string+"""");
    // Close the figure
    `close`_();




See Also
~~~~~~~~


+ `uicontrol`_ create a Graphic User Interface object
+ `uimenu`_ Create a menu or a submenu in a figure
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.


.. _uicontrol: uicontrol.html
.. _get: get.html
.. _set: set.html
.. _uimenu: uimenu.html


