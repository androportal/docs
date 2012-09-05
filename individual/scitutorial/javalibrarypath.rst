


javalibrarypath
===============

set and get dynamic java.library.path



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res=javalibrarypath()
    javalibrarypath(path)




Arguments
~~~~~~~~~

:res a string matrix
:



Description
~~~~~~~~~~~

set and get the dynamic Java Library path to one or more directory
given in path.

When you use java classes with native methods, you need to define path
where is dynamic library.



Examples
~~~~~~~~


::

    res=javalibrarypath();
    javalibrarypath(SCI);
    javalibrarypath([SCI,SCI+'/libs']);




See Also
~~~~~~~~


+ `javaclasspath`_ set and get dynamic Java class path


.. _javaclasspath: javaclasspath.html


