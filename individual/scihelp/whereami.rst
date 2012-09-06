


whereami
========

display current instruction calling tree



Calling Sequence
~~~~~~~~~~~~~~~~


::

    whereami()




Description
~~~~~~~~~~~

Displays calling tree to instruction which contain `whereami()`. May
be used within `pause` levels.



Examples
~~~~~~~~


::

    `deff`_('y=test(a)',['y=sin(a)+1';
                      'y=t1(y)';
                      'y=y+1'])
    `deff`_('y=t1(y)',['y=y^2';'whereami()'])
    test(1)




See Also
~~~~~~~~


+ `where`_ get current instruction calling tree
+ `pause`_ pause mode, invoke keyboard
+ `errcatch`_ error trapping


.. _pause: pause.html
.. _errcatch: errcatch.html
.. _where: where.html


