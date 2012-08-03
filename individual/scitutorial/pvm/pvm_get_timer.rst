====
"pvm_get_timer"
====

Scilab function Last update : January 1998
**pvm_get_timer** - Gets the system's notion of the current time.



Calling Sequence
~~~~~~~~~~~~~~~~

[time] = pvm_get_timer()




Parameters
~~~~~~~~~~


+ **time** : scalar




Description
~~~~~~~~~~~

**pvm_get_timer** returns the time elapsed since the last call of
**pvm_get_timer** or the last call of **pvm_set_timer** . The time is
expressed in elapsed microseconds. The resolution of the system clock
is hardware dependent; the time may be updated continuously or in
clock ticks.

The returned value **time** will be >= 0 if the call is successful and
will be will be -1 if some error occurs.



Examples
~~~~~~~~


::

    
    
    B = rand(100,100);
    A = rand(100,100);
    pvm_set_timer();C=A*B;t=pvm_get_timer()
     
      




See Also
~~~~~~~~

` **pvm_set_timer** `_,

.. _
      : ://./pvm/pvm_set_timer.htm


