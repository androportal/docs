


%eps
====

epsilon (floating-point relative accuracy)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    %eps




Description
~~~~~~~~~~~

`%eps` is a predefined variable, `%eps = 2^(-52)` .

Calculations are not exact but performed for a given precision, Scilab
uses the IEEE 754 standard.



Example
~~~~~~~


::

    %eps
          `format`_(20)
          1 + %eps
          1 + (%eps / 2) == 1




See Also
~~~~~~~~


+ `format`_ number printing and display format


.. _format: format.html


