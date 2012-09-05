


saveafterncommands
==================

Save the history file after n statements are added to the file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    saveafterncommands(n)
    v = saveafterncommands()




Arguments
~~~~~~~~~

:n an integer, n statements
: :v current value
:



Description
~~~~~~~~~~~

Save the history file after n statements are added to the file.

For example, when you select the option and set n to 5, after every 5
statements are added, the history file is automatically saved.

Use this option if you do not want to risk losing entries to the saved
history because of an abnormal termination, such as a power failure.

saveafterncommands() returns current value.

default value is 0. History file saved at the end of scilab session.



Examples
~~~~~~~~


::

    saveafterncommands(3)




