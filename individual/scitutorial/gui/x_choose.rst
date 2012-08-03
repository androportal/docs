====
"x_choose"
====

Scilab Function Last update : April 1993
**x_choose** - interactive Xwindow choice



Calling Sequence
~~~~~~~~~~~~~~~~

[num]=x_choose(items,title [,button])




Parameters
~~~~~~~~~~


+ **items** : column vector of string, items to choose
+ **title** : column vector of string, comment for the dialog
+ **button** : string, text to appear in the button. Default value is
  'Cancel'
+ **num** : integer, choosen item number or 0 if dialog resumed with
  "Cancel" button




Description
~~~~~~~~~~~

Returns in **num** the number of the chosen item.



Examples
~~~~~~~~


::

    
    
    n=x_choose(['item1';'item2';'item3'],['that is a comment';'for the dialog'])
    n=x_choose(['item1';'item2';'item3'],['that is a comment'],'Return')
     
      




See Also
~~~~~~~~

` **x_choices** `_,` **x_mdialog** `_,` **getvalue** `_,` **unix_g**
`_,

.. _
      : ://./gui/getvalue.htm
.. _
      : ://./gui/x_mdialog.htm
.. _
      : ://./gui/../utilities/unix_g.htm
.. _
      : ://./gui/x_choices.htm


