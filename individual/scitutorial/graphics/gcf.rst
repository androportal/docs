====
"gcf"
====

Scilab Function Last update : 24/06/2004
**gcf** - Return handle of current graphic or GUI window.



Calling Sequence
~~~~~~~~~~~~~~~~

h = gcf()




Parameters
~~~~~~~~~~


+ **h** : handle or integer.




Description
~~~~~~~~~~~

This routine returns the handle of the current graphic or GUI window.
If the current figure is a graphic one **gcf()** returns a handle on
it. If the current figure is a ` **uicontrol** `_ one **gcf()**
returns it's figure number.



Examples
~~~~~~~~


::

    
        set("figure_style","new") //create a figure
        f=gcf()  
        f.figure_size= [610,469]/2;
        f.figure_name= "Foo";
    
        f=figure(); // create a figure
        h=uicontrol(f,'style','listbox','position', [10 10 150 160]);// create a listbox
        set(h, 'string', "item 1|item 2|item3");// fill the list
        set(h, 'value', [1 3]); // select item 1 and 3 in the list
        gcf()
    
        scf(0); //make graphic window 0 the current figure
        gcf()  // return the graphic handle of the current figure
    
        figure(f) //make GUI  window f the current figure
        gcf()
    
      




See Also
~~~~~~~~

` **gdf** `_,` **gca** `_,` **gce** `_,` **get** `_,` **scf** `_,`
**set** `_,` **graphics_entities** `_,` **uicontrol** `_,



Author
~~~~~~

Serge Steer, INRIA

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/scf.htm
.. _
      : ://./graphics/gdf.htm
.. _
      : ://./graphics/gca.htm
.. _
      : ://./graphics/../tksci/uicontrol.htm
.. _
      : ://./graphics/gce.htm
.. _
      : ://./graphics/get.htm


