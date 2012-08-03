====
"setenv"
====

Scilab Function Last update : 29/06/2005
**setenv** - set the value of an environment variable



Calling Sequence
~~~~~~~~~~~~~~~~

rep=setenv(name, value )




Parameters
~~~~~~~~~~


+ **name** : Points to the name of an environment variable . (name is
  a string)
+ **value** : Points to the value to be assigned to the environment
  variable. (value is a string)
+ **rep** : Returns %T if it is ok else %F.




Description
~~~~~~~~~~~

set the value of an environnment variable.



Examples
~~~~~~~~


::

     
     setenv('toto','example')
     getenv('toto')
      




See Also
~~~~~~~~

` **getenv** `_,



Author
~~~~~~

Allan CORNET

.. _
      : ://./programming/getenv.htm


