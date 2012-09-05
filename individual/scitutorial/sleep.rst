


sleep
=====

suspend Scilab



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sleep(milliseconds)




Description
~~~~~~~~~~~

`sleep` : Sleep process for specified number of miliseconds specified
by the argument. The actual suspension time may be longer because of
other activities in the system, or because of the time spent in
processing the call.



Examples
~~~~~~~~


::

    `tic`_;sleep(6000);`toc`_




See Also
~~~~~~~~


+ `xpause`_ suspend Scilab
+ `pause`_ pause mode, invoke keyboard


.. _xpause: xpause.html
.. _pause: pause.html


