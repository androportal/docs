


input
=====

prompt for user input



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x = input(message [, "string"])




Arguments
~~~~~~~~~

:message character string
: :"string" the character string `"string"` (may be abbreviated to
  `"s"`)
: :x real number (or character string if `"string"` is in the calling
  sequence)
:



Description
~~~~~~~~~~~

`input(message)` gives the user the prompt in the text string and then
waits for input from the keyboard. The input can be expression which
is evaluated by `evstr`_. If nothing but a carriage return is entered
at the prompt `input(message)` returns an empty matrix

Invoked with two arguments, the output is a character string which is
the expression entered at keyboard. If nothing but a carriage return
is entered at the prompt `input(message)` returns a single white space
`" "`.



Examples
~~~~~~~~


::

    //x=input("How many iterations?")
    //x=input("What is your name?","string")




See Also
~~~~~~~~


+ `evstr`_ evaluation of expressions
+ `x_dialog`_ Dialog for interactive multi-lines input.
+ `x_mdialog`_ Dialog for interactive vector/matrix input.


.. _evstr: evstr.html
.. _x_mdialog: x_mdialog.html
.. _x_dialog: x_dialog.html


