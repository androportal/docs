====
"findobj"
====

Scilab Function Last update : 19/04/2005
**findobj** - find an object with specified property



Parameters
~~~~~~~~~~


+ **prop** : string character Name of the property to test (case
  unsensitive).
+ **value** : string character specify the value the tested propoerty
  should be equal to (case sensitive).
+ **h** : handle of the found object.




Description
~~~~~~~~~~~

This routine is currently used to find objects knowing their 'tag'
property. It returns handle of the first found object which property
'prop' is equal to 'value'. If such an object does not exist, the
function returns an empty matrix.



Examples
~~~~~~~~


::

    
    
    h=figure();
    // creates  figure number 1.
    uicontrol( h, 'style','text', ...
     'string','This is a figure', ...
     'position',[50 70 100 100], ...
     'fontsize',15, ...
     'tag','Alabel');
    // put a  text in figure 1
    lab=findobj('tag','Alabel');
    // find the object which 'tag' value is 'Alabel'
    disp('the handle of the label is '+string(lab));
    close();
     
      




See Also
~~~~~~~~

` **uicontrol** `_,` **uimenu** `_,` **set** `_,` **get** `_,



Author
~~~~~~

Bertrand Guiheneuf

.. _
      : ://./tksci/uimenu.htm
.. _
      : ://./tksci/../graphics/set.htm
.. _
      : ://./tksci/../graphics/get.htm
.. _
      : ://./tksci/uicontrol.htm


