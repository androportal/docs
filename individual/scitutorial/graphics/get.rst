====
"get"
====

Scilab Function Last update : 28/06/2004
**get** - Retrieve a property value from a graphics entity or an User
Interface object.



Calling Sequence
~~~~~~~~~~~~~~~~

h=get(prop)
val=get(h,prop)
val=h.prop
val=get(n,prop)




Parameters
~~~~~~~~~~


+ **h** : handle, the handle of the entity to retrieve a property.
  **h** can be a vector of handles, in which case get returns the
  property's value for all objects identified by h(i).
+ **n** : integer, the handle of the User Interface object to retrieve
  a property.
+ **prop** : character string name of the property.
+ **val** : scilab object value of the property.




Description
~~~~~~~~~~~

This routine can be used to retrieve the value of a specified property
graphics entity or a GUI object. If the handle is not specified, the
current object is taken as the default handle. It is also used to
return a list of all children, parent, or type for the input handle if
this one is specified. Otherwise, the current axes object is taken as
the default input.

Property name are character strings.

See ` **graphics_entities** `_ for details about properties' names and
values for graphics entities.

See ` **uicontrol** `_ for details about properties' names and values
for User Interface objects.

For graphics entities handle it is possible to use a dot notation like
**h.background** instead of **get** .



Examples
~~~~~~~~


::

    
      // for graphics entities
        clf()
        get("old_style") // check the state of the graphics' style
        set("figure_style","new") //create a figure
        get("figure_style") // check the style of the graphics' figure
    
        // simple graphics objects  
        subplot(121);
        x=[-.2:0.1:2*%pi]';
        plot2d(x-2,x.^2);
        subplot(122);
        xrect(.2,.7,.5,.2);     
        xrect(.3,.8,.3,.2);
        xfarc(.25,.55,.1,.15,0,64*360);
        xfarc(.55,.55,.1,.15,0,64*360);
        xstring(0.2,.9,"Example <<A CAR>>");
     
        h=get("hdl") //get the object newly created
        h.font_size=3;
     
        f=get("current_figure") //get the current figure 
        f.figure_size
        f.figure_size=[700 500];
        f.children
        f.children(2).type
        f.children(2).children
        f.children(2).children.children.thickness=4; 
     
        a=get("current_axes") //get the current axes
        a.children.type
        a.children.foreground //get the foreground color of a set of graphics objects
        a.children.foreground=9;
    
      // for  User Interface objects
       h=uicontrol('string', 'Button'); // Opens a window with a  button.
       p=get(h,'position'); // get the geometric aspect of the button
       disp('Button width: ' + string(p(3))); // print the width of the button
       close(); // close figure
    
     
      




See Also
~~~~~~~~

` **uicontrol** `_,` **set** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/../tksci/uicontrol.htm
.. _
      : ://./graphics/set.htm


