====
"stringbox"
====

Scilab Function Last update : 13/12/2005
**stringbox** - Compute the bounding rectangle of a text or a label.



Calling Sequence
~~~~~~~~~~~~~~~~

rect = stringbox( string, x, y, [angle, [fontStyle, [fontSize]]] )
rect = stringbox( Handle )




Parameters
~~~~~~~~~~


+ **rect** : a 2x4 matrix containing the 4 vertex coordinates of the
  bounding rectangle.
+ **string** : string matrix to be enclosed.
+ **x,y** : real scalars, coordinates of the lower left point of
  strings.
+ **angle** : Rotation angle of the string clockwise and in degrees
  around the **(x,y)** point.
+ **fonStyle** : integer specifying the type of the font.
+ **fontSize** : integer specifying the size of the font.
+ **Handle** : a graphic handle of Text or Label type.




Description
~~~~~~~~~~~

**stringbox** returns the bounding rectangle vertices of a text or
label object or a string which will be displayed with a certain way.
the coordinates are given with the current graphic scale. the first
vertex correspond to the text coordinates **(x,y)** , the lower left
point without rotation, the following vertex are given clockwise in
the resulting matrix.

The result migth not be very accurate with PostScript driver.



Examples
~~~~~~~~


::

    // show axes
    axes = gca() ;
    axes.axes_visible = 'on' ;
    axes.data_bounds = [ 1, 1 ; 10, 10 ] ;
    
    // display a labels for axes
    xtitle( 'stringbox', 'X', 'Y' )  ;
    
    // get the bounding box of X label
    stringbox( axes.x_label )
    
    // draw a string
    str = [ "Scilab", "is" , "not", "Skylab" ] ;
    xstring( 4, 9, str ) ;
    
    //modify the text
    e = gce() ;
    e.font_angle = 90 ;
    e.font_size    = 6  ;
    e.font_style   = 7 ;
    e.box = 'on' ;
    
    // get its bounding box
    stringbox( e )
    // or
    rect = stringbox( str, 4, 9, 90, 6, 5 )
    
    // click and find if the text was hit
    hit = xclick()  ;
    hit = hit( 2 : 3 ) ;
    
    if hit(1) >= rect(1,1)  & hit(1) <=  rect(1,2) & hit(2) <= rect(2,2) & hit(2) >= rect(2,3) then
      disp('You hit the text.') ;
    else
      disp('You missed it.')
    end;
    
    




See Also
~~~~~~~~

` **xstring** `_,` **xstringl** `_,` **xstringb** `_,



Author
~~~~~~

Jean-Baptiste Silvy

.. _
      : ://./graphics/xstringl.htm
.. _
      : ://./graphics/xstring.htm
.. _
      : ://./graphics/xstringb.htm


