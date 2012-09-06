


javaclasspath
=============

set and get dynamic Java class path



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res=javaclasspath()
    javaclasspath(path)




Arguments
~~~~~~~~~

:res a string matrix
:



Description
~~~~~~~~~~~

set and get the dynamic Java path to one or more directory or file
specifications given in path.



Examples
~~~~~~~~


::

    res=javaclasspath();
    javaclasspath(SCI);
    javaclasspath([SCI,SCI+'/java']);




