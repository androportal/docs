====
"scf"
====

Scilab Function Last update : 28/06/2004
**scf** - set the current graphic figure (window)



Calling Sequence
~~~~~~~~~~~~~~~~

f = scf()
f = scf(h)
f = scf(num)




Parameters
~~~~~~~~~~


+ **h** : a handle, the figure handle
+ **num** : a number, the figure_id
+ **f** : the handle of the current figure




Description
~~~~~~~~~~~
The current figure is the destination of the graphic drawing. The
**scf** function allows to change this current figure or to create it
if it does not already exist.


**scf(num)** set the figure with **figure_id==num** as the current
figure. If it does not already exist it is created.



**scf(h)** set the figure pointed to by the handle **h** as the
current figure. If it does not already exist it is created.

**scf()** is equivalent to **scf(max(winsid())+1) ** . It may be used
to create a new graphic window.



Examples
~~~~~~~~


::

    
       f4=scf(4); //creates figure with id==4 and make it the current one
       f0=scf(0); //creates figure with id==0 and make it the current one
       plot2d() //draw in current figure (id=0)
       scf(f4); // set first created figure as current one
       plot3d() //draw in current figure (id=4)
      




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **gcf** `_,` **clf** `_,`
**graphics_entities** `_,



Author
~~~~~~

S. Steer INRIA

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/gcf.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/clf.htm


