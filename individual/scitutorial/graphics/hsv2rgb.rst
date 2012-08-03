====
"hsv2rgb"
====

Scilab Function Last update : 13/06/2005
**hsv2rgb** - Converts HSV colors to RGB



Calling Sequence
~~~~~~~~~~~~~~~~

[r,g,b] = hsv2rgb(h,s,v)
rgb = hsv2rgb(h,s,v)
[r,g,b] = hsv2rgb(hsv)
rgb = hsv2rgb(hsv)




Parameters
~~~~~~~~~~


+ **h** : a vector of size n. The "hue" values.
+ **s** : a vector of size n. The "saturation" values.
+ **v** : a vector of size n. The "value" values
+ **hsv** : a n x 3 matrix. Each row contains a [hue saturation value]
  tripple.
+ **r** : a column vector of size n. The associated "red" values.
+ **g** : a column vector of size n. The associated "green" values.
+ **b** : a column vector of size n. The associated "blue" values.
+ **rgb** : a n x 3 matrix. Each row contains a [red green blue]
  tripple.




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


Examples
~~~~~~~~


::

    
        t=[0:0.3:2*%pi]'; z=sin(t)*cos(t'); 
        plot3d1(t,t,z) 
        f=gcf();f.pixmap='on';
        for h=0:0.1:1
          hsv=[h*ones(32,1) linspace(0,1,32)' 0.7*ones(32,1)];
          f.color_map=hsv2rgb(hsv);
          show_pixmap()
          xpause(10000)
        end
        for v=0:0.1:1
          hsv=[ones(32,1) linspace(0,1,32)' v*ones(32,1)];
          f.color_map=hsv2rgb(hsv);
          show_pixmap()
          xpause(10000)
        end
      




Authors
~~~~~~~

**Serge Steer** INRIA




