


errclear
========

error clearing



Calling Sequence
~~~~~~~~~~~~~~~~


::

    errclear([n])




Description
~~~~~~~~~~~

clears the action (error-handler) connected to error of type `n`.

If `n` is positive (n > 0), it is the number of the cleared error ;
otherwise if (n <= 0) all errors are cleared (default case).



Examples
~~~~~~~~


::

    a = 1;
          b = undefinedvariable + a;
          `lasterror`_()
          b = undefinedvariable + a;
          errclear()
          `lasterror`_()
          b = undefinedvariable + a;
          errclear(5)  // error 4 always as last error
          `lasterror`_()
          b = undefinedvariable + a;
          errclear(4)
          `lasterror`_()




See Also
~~~~~~~~


+ `errcatch`_ error trapping
+ `iserror`_ error occurrence test
+ `lasterror`_ get last recorded error message


.. _errcatch: errcatch.html
.. _iserror: iserror.html
.. _lasterror: lasterror.html


