====
"buttondialog"
====

sciGUI toolbox function Last update : 29/06/2004
**buttondialog** - Create a simple button dialog



Calling Sequence
~~~~~~~~~~~~~~~~

answer=buttondialog(mes,buttons[,icon])




Parameters
~~~~~~~~~~


+ **mes** : string, message to display.
+ **buttons** : string, buttons name.
+ **icon** : string, icon type, should be: error, hourglass, info,
  passwd, question and warning.




Description
~~~~~~~~~~~

**buttondialog** create a simple button dialog and retur the answer.
**buttons** identify the buttons to show in the following manner :
"button_1|button_2....|button_n"



Examples
~~~~~~~~


::

    
    answ=buttondialog("This is an example","ok");
    answ=buttondialog("Do the work?","yes|no|maybe","question");
    




Author
~~~~~~

Jaime Urzua



