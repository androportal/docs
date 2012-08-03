====
"x_message"
====

Scilab Function Last update : April 1993
**x_message** - X window message



Calling Sequence
~~~~~~~~~~~~~~~~

[num]=x_message(strings [,buttons])




Parameters
~~~~~~~~~~


+ **strings** : vector of characters strings to be displayed
+ **buttons** : character string or 2 vector of character strings
  which specifies button(s) name(s). Default value is "Ok"
+ **num** : number of button clicked (if 2 buttons are specified)




Description
~~~~~~~~~~~

for displaying a message (diagnostic,... ) and waiting for an answer
(button click). The function returns only after a click on a button.



Examples
~~~~~~~~


::

    
    
     gain=0.235;x_message('value of gain is :'+string(gain))
     x_message(['singular matrix';'use least squares'])
    
     r=x_message(['Your problem is ill conditioned';
                 'continue ?'],['Yes','No'])
     
      




See Also
~~~~~~~~

` **x_dialog** `_,` **x_mdialog** `_,` **x_message_modeless** `_,

.. _
      : ://./gui/x_dialog.htm
.. _
      : ://./gui/x_mdialog.htm
.. _
      : ://./gui/x_message_modeless.htm


