====
"seteventhandler"
====

Scilab Function Last update : 25/03/2005
**seteventhandler** - set an event handler for the current graphic
window



Calling Sequence
~~~~~~~~~~~~~~~~

seteventhandler(sfun_name)
seteventhandler('')




Parameters
~~~~~~~~~~


+ **sfun_name** : a character string. The name of the Scilab function
  which is intended to handle the events




Description
~~~~~~~~~~~

The function allows the user to set a particular event handler for the
current graphic window. **seteventhandler('') ** removes the handler.

The event handler is defined by a Scilab function whose calling
sequence must be **function sfun_name(win,x,y,ibut)** , where

**** **win** represents the number of the window where the event had
  occured.
**** **x,y** are the coordinates of the pointer (in pixels), when the
  event has occured
**** **ibut** is the event type:
