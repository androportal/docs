


who
===

listing of variables



Calling Sequence
~~~~~~~~~~~~~~~~


::

    who
    who()
    names=who('local')
    [names,mem]=who('local')
    names=who('global')
    [names,mem]=who('global')
    who('sorted')
    names=who('local','sorted')
    [names,mem]=who('local','sorted')
    names=who('global','sorted')
    [names,mem]=who('global','sorted')




Description
~~~~~~~~~~~

`who` displays current variable names.

`who('local')` or `who('get')` returns current variable names and
memory used in double precision words.

`who('global')` returns global variable names and memory used in
double precision words.

`who('sorted')` displays in alphabetical order all variables.



See Also
~~~~~~~~


+ `whos`_ listing of variables in long form
+ `who_user`_ listing of user's variables


.. _whos: whos.html
.. _who_user: who_user.html


