====
"x_message_modeless"
====

Scilab Function Last update : April 1993
**x_message_modeless** - X window modeless message



Calling Sequence
~~~~~~~~~~~~~~~~

x_message_modeless(strings)




Parameters
~~~~~~~~~~


+ **strings** : vector of characters strings to be displayed




Description
~~~~~~~~~~~

for displaying a message (information, user-guide ...). The function
returns immediately. The message window is killed when "Ok" button is
clicked.



Examples
~~~~~~~~


::

    
    
     x_message_modeless(['This is a modeless message'
                         'Scilab may continue computation'
                         ' '
                         'Click on ""Ok"" to close the message'])
     x_message_modeless('Now two message windows are opened')
     
      




See Also
~~~~~~~~

` **x_dialog** `_,` **x_mdialog** `_,` **x_message** `_,

.. _
      : ://./gui/x_dialog.htm
.. _
      : ://./gui/x_mdialog.htm
.. _
      : ://./gui/x_message.htm


