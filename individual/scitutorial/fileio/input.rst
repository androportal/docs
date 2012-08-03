====
"input"
====

Scilab Function Last update : 27/02/2007
**input** - prompt for user input



Calling Sequence
~~~~~~~~~~~~~~~~

x=input(message [, "string"])




Parameters
~~~~~~~~~~


+ **message** : character string
+ **"string" ** : the character string **"string"** (may be
  abbreviated to **"s"** )
+ **x** : real number (or character string if **"string"** is in the
  calling sequence)




Description
~~~~~~~~~~~

**input(message)** gives the user the prompt in the text string and
then waits for input from the keyboard. The input can be expression
which is evaluated by ` **evstr** `_. If nothing but a carriage return
is entered at the prompt **input(message)** returns an empty matrix

Invoked with two arguments, the output is a character string which is
the expression entered at keyboard. If nothing but a carriage return
is entered at the prompt **input(message)** returns a single white
space **" "** .



Examples
~~~~~~~~


::

    
    
    //x=input("How many iterations?")
    //x=input("What is your name?","string")
     
      




See Also
~~~~~~~~

` **evstr** `_,` **x_dialog** `_,` **x_mdialog** `_,

.. _
      : ://./fileio/../gui/x_mdialog.htm
.. _
      : ://./fileio/../gui/x_dialog.htm
.. _
      : ://./fileio/../programming/evstr.htm


