====
"set_posfig_dim"
====

Scilab Function Last update : 31/03/2005
**set_posfig_dim** - change defaut transformation for exporting in
postscript



Calling Sequence
~~~~~~~~~~~~~~~~

set_posfig_dim(w,h)
set_posfig_dim(0,0)




Parameters
~~~~~~~~~~


+ **w** : graphic figure width, number of pixels
+ **h** : graphic figure height, number of pixels




Description
~~~~~~~~~~~

**set_posfig_dim(w,h)** set the coordinates transformation to be used
when exporting a graphic window in postscript. The graphic figure
zoomed with ratios **w/<graphic figure width>** horizontally and
**h/<graphic figure height>** vertically.

This function is particularily useful when one wants an export a
graphic figure exactly as it is shown on the screen. For that **w**
and **h** has to be set respectively to **<graphic figure width>** and
**<graphic figure height>**

**set_posfig_dim(0,0)** resets the default values: **w=600** ,
**h=424** .



Examples
~~~~~~~~


::

     
        // make a figure with a specific shape 
        f=scf(0);f.figure_size=[800,300];
        plot2d()
        set_posfig_dim(f.figure_size(1),f.figure_size(2))
        filename='foo'; // ! no extension
        xs2ps(0,filename)
        //add the Postscript file header and create <filename>.eps file
        if MSDOS then
          unix_s(pathconvert('""'+WSCI+'/bin/BEpsf'+'""',%f)+' -p ' +filename)
        else
          unix_s(pathconvert('SCI/bin/BEpsf',%f)+' -p ' +filename)
        end
        
      




See Also
~~~~~~~~

` **xs2ps** `_,



Author
~~~~~~

Serge Steer INRIA

.. _
      : ://./graphics/xs2ps.htm


