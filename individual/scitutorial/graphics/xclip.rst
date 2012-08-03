====
"xclip"
====

Scilab Function Last update : 13/12/2005
**xclip** - set a clipping zone



Calling Sequence
~~~~~~~~~~~~~~~~

xclip([x,y,w,h])
xclip(rect)
xclip("clipgrf")




Parameters
~~~~~~~~~~


+ **x,y,w,h** : real values.
+ **rect** : row vector of size 4.




Description
~~~~~~~~~~~

**xclip** is obsolete with the new graphic mode, use the
**clip_state** and **clip_box** properties of the entities instead.

**xclip** set a clipping zone given by the coordinates, in the current
graphics scale, of the rectangle **x,y,w,h** (upper-left point, width,
height). If only one argument is given, it stands for a rectangle
specification **rect=[x,y,w,h]** .

**xclip("clipgrf")** is used to clip the usual rectangle boundaries.

To unclip a region use the command **xclip()** .



Examples
~~~~~~~~


::

    
    
    x=0:0.2:2*%pi;
    x1=[sin(x);100*sin(x)];
    y1=[cos(x);100*cos(x)];
    y1=y1+20*ones(y1);
    
    // set the frame
    clf();a=gca();a.data_bounds=[-100 -100;500 600];
        
    // No clipping
    xsegs(10*x1+200*ones(x1),10*y1+200*ones(y1))
    e=gce(); //handle on the Segs entity
    
    // draw rectangle clipping zone 
    xrect(150,460,100,150)
    // set clip_box for  Segs entity
    e.clip_box=[150,460,100,150];
    
    // Set usual rectangle boundaries clipping zone 
    e.clip_state='clipgrf';
    xclip("clipgrf")
    // remove clipping
    e.clip_state='off';
     
      




Author
~~~~~~

J.Ph.C.



