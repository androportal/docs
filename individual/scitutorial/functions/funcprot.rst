====
"funcprot"
====

Scilab Function Last update : Jan 1997
**funcprot** - switch scilab functions protection mode



Calling Sequence
~~~~~~~~~~~~~~~~

prot=funcprot()
funcprot(prot)




Parameters
~~~~~~~~~~


+ **prot** : integer with possible values 0,1,2




Description
~~~~~~~~~~~

Scilab functions are variable, funcprot allows the user to specify
what scilab do when such variables are redefined.

*****If prot==0 nothing special is done
*****If prot==1 scilab issues a warning message when a function is
  redefined (default mode)
*****If prot==2 scilab issues an error when a function is redefined




Examples
~~~~~~~~


::

    
    
    funcprot(1)
    deff('[x]=foo(a)','x=a')
    deff('[x]=foo(a)','x=a+1')
    foo=33
    funcprot(0)
    deff('[x]=foo(a)','x=a')
    deff('[x]=foo(a)','x=a+1')
    foo=33
     
      




