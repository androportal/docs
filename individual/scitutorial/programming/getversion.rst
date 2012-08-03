====
"getversion"
====

Scilab Function Last update : 23/03/2004
**getversion** - get Scilab version name



Calling Sequence
~~~~~~~~~~~~~~~~

version=getversion()
[version,opts]=getversion()




Parameters
~~~~~~~~~~


+ **version** : a string
+ **opts** : a vector of string with four entries :
  **[compiler,pvm,tk,ocaml]**




Description
~~~~~~~~~~~

return in **version** the Scilab version name and in **opts** build
options which can be used to determine if scilab has been build with
pvm, tk or ocaml.



Examples
~~~~~~~~


::

    
    
    getversion()
    [version,opts]=getversion()
     
      




