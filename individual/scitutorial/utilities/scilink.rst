====
"scilink"
====

Scilab Function Last update : April 1993
**scilink** - Unix script to relink Scilab



Calling Sequence
~~~~~~~~~~~~~~~~

scilink <object-files>




Description
~~~~~~~~~~~

This script is used to produce a local **scilex** (executable code of
Scilab) linked with the additional files given by the user in
**<object-files>** .

If in the list of object files some names are known **scilex** names
(from **SCIDIR/routines/default** ) then the **scilex** default files
are omitted and replaced with the given ones .

This script also produces an **xscilab** script, which when called
will ran the new generated scilex file.

For example the command


::

    
    
    scilink C/interf.o C/evol.o C/bib.a
       
        


will create a new **scilex** file in which the default **interf.o**
file will be replaced by **C/interf.o** .



See Also
~~~~~~~~

` **link** `_,` **addinter** `_,

.. _
      : ://./utilities/../functions/addinter.htm
.. _
      : ://./utilities/link.htm


