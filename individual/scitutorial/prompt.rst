


prompt
======

Get/Set current prompt



Calling Sequence
~~~~~~~~~~~~~~~~


::

    currentprompt = prompt()
    [currentprompt,pauselevel] = prompt()
    prompt(userprompt)




Arguments
~~~~~~~~~

:currentprompt a string: current prompt returned as a character
  string.
: :pauselevel an integer: current pause level.
: :userprompt a string: prompt to display for next user input. Then
  current prompt will be used again.
:



Description
~~~~~~~~~~~

`currentprompt = prompt()` gets the current prompt.

`prompt(userprompt)` sets the prompt.



See Also
~~~~~~~~


+ `pause`_ pause mode, invoke keyboard
+ `input`_ prompt for user input


.. _pause: pause.html
.. _input: input.html


