


messagebox
==========

Open a message box.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [btn] = messagebox(msg)
    [btn] = messagebox(msg, msgboxtitle)
    [btn] = messagebox(msg, msgboxtitle, msgboxicon)
    [btn] = messagebox(msg, msgboxtitle, msgboxicon)
    [btn] = messagebox(msg, msgboxtitle, msgboxicon, buttons)
    [btn] = messagebox(msg, msgboxtitle, msgboxicon, buttons, ismodal)




Arguments
~~~~~~~~~

:msg Matrix of strings: the message box displays each entry of this
  matrix (one entry per line).
: :msgboxtitle String: the title of the message box (default value is
  "Scilab Message").
: :msgboxicon String: the name of the icon to be displayed in the
message box, its possible values are:

    + "error"
    + "hourglass"
    + "info"
    + "passwd"
    + "question"
    + "warning"
    + "scilab": default icon

: :buttons 1xn vector of strings: the names of the buttons to be
  displayed in the message box. By default, only one button is displayed
  with label "OK".
: :modal String: "modal" to create a modal dialog, any other string to
  create a non-modal dialog. Please note that "modal" can replace any of
  the other input arguments except msg (See examples).
: :btn Scalar: number of the button that the user pressed (1 is the
  leftmost button) for a modal dialog, 0 else.
:



Description
~~~~~~~~~~~

Creates a dialog window to display a message waiting or not for a user
action.



Examples
~~~~~~~~


::

    // Simple example
    messagebox("Single line message")
    
    // Multi line message with title
    messagebox(["Multi-line" "message"], "User defined title")
    
    // Icon specified by th euser
    messagebox("An error message", "Error", "error")
    
    // Buttons labels + "modal" replaces title
    messagebox("Have you seen this beautiful message", "modal", "info", ["Yes" "No"])
    
    // "modal" given as fifth input argument
    messagebox("An error message", "Error", "error", ["Continue" "Stop"], "modal")




