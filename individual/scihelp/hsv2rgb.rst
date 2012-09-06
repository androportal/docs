


hsv2rgb
=======

Converts HSV colors to RGB



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [r,g,b] = hsv2rgb(h,s,v)
    rgb = hsv2rgb(h,s,v)
    [r,g,b] = hsv2rgb(hsv)
    rgb = hsv2rgb(hsv)




Arguments
~~~~~~~~~

:h a vector of size n. The "hue" values.
: :s a vector of size n. The "saturation" values.
: :v a vector of size n. The "value" values
: :hsv a n x 3 matrix. Each row contains a [hue saturation value]
  tripple.
: :r a column vector of size n. The associated "red" values.
: :g a column vector of size n. The associated "green" values.
: :b a column vector of size n. The associated "blue" values.
: :rgb a n x 3 matrix. Each row contains a [red green blue] tripple.
:



Description
~~~~~~~~~~~

The function hsv2rgb converts colormaps between the RGB and HSV color
spaces. As hue varies from 0 to 1.0, the corresponding colors vary
from red through yellow, green, cyan, blue, magenta, and back to red,
so that there are actually red values both at 0 and 1.0. As saturation
varies from 0 to 1.0, the corresponding colors (hues) vary from
unsaturated (shades of gray) to fully saturated (no white component).
As value, or brightness, varies from 0 to 1.0, the corresponding
colors become increasingly brighter.



Sample
~~~~~~



Examples
~~~~~~~~


::

    t=[0:0.3:2*%pi]'; z=`sin`_(t)*`cos`_(t'); 
    `plot3d1`_(t,t,z) 
    f=`gcf`_();f.pixmap='on';
    for h=0:0.1:1
      hsv=[h*`ones`_(32,1) `linspace`_(0,1,32)' 0.7*`ones`_(32,1)];
      f.color_map=hsv2rgb(hsv);
      `show_pixmap`_()
      `xpause`_(10000)
    end
    for v=0:0.1:1
      hsv=[`ones`_(32,1) `linspace`_(0,1,32)' v*`ones`_(32,1)];
      f.color_map=hsv2rgb(hsv);
      `show_pixmap`_()
      `xpause`_(10000)
    end




