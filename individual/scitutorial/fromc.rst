


fromc
=====

Checks if current Scilab is called from an external C program (by
StartScilab).



Calling Sequence
~~~~~~~~~~~~~~~~


::

    r=fromc()




Arguments
~~~~~~~~~

:r a boolean
:



Description
~~~~~~~~~~~

Returns `%t`Checks if current Scilab is called from an external C
program or `%f` if not.



See Also
~~~~~~~~


+ `Call_Scilab`_ call_scilab is an interface which provides the
  ability to call Scilab engine from C/C++ code
+ `api Scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory
+ `fromjava`_ Checks if current Scilab is called from javasci


.. _Call_Scilab: call_scilab.html
.. _fromjava: fromjava.html
.. _api Scilab: api_scilab.html


