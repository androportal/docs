====
"sci2map"
====

Scilab Function Last update : April 1993
**sci2map** - Scilab to Maple variable conversion



Calling Sequence
~~~~~~~~~~~~~~~~

txt=sci2map(a,Map-name)




Parameters
~~~~~~~~~~


+ **a** : Scilab object (matrix, polynomial, list, string)
+ **Map-name** : string (name of the Maple variable)
+ **txt** : vector of strings containing the corresponding Maple code




Description
~~~~~~~~~~~

Makes Maple code necessary to send the Scilab variable **a** to Maple
: the name of the variable in Maple is **Map-name** . A Maple
procedure **maple2scilab** can be found in **SCIDIR/maple** directory.



Examples
~~~~~~~~


::

    
    
    txt=[sci2map([1 2;3 4],'a');
         sci2map(%s^2+3*%s+4,'p')]
     
      




