====
"pvm_set_timer"
====

Scilab function Last update : January 1998
**pvm_set_timer** - Sets the system's notion of the current time.



Calling Sequence
~~~~~~~~~~~~~~~~

[info] = pvm_set_timer()




Parameters
~~~~~~~~~~


+ **info** : scalar




Description
~~~~~~~~~~~

**pvm_set_timer** initialized the timer.

The returned value will be 0 if the call is successful and will be
will be -1 if some error occurs.



Examples
~~~~~~~~


::

    
    
    pvm_set_timer()
     
      




See Also
~~~~~~~~

` **pvm_get_timer** `_,

.. _
      : ://./pvm/pvm_get_timer.htm


