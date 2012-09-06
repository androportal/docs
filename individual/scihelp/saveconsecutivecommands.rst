


saveconsecutivecommands
=======================

Save consecutive duplicate commands.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    saveconsecutivecommands(boolean_in)
    boolean_out = saveconsecutivecommands()




Arguments
~~~~~~~~~

:boolean_in a boolean (%t or %f)
: :boolean_out current value
:



Description
~~~~~~~~~~~

Save consecutive duplicate commands.

saveconsecutivecommands(%t) if you want consecutive executions of the
same statement to be saved to the history file.



Examples
~~~~~~~~


::

    saveconsecutivecommands()
    saveconsecutivecommands(%t)
    1
    1
    2
    saveconsecutivecommands(%f)
    1
    1
    2




