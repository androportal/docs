


meshgrid
========

create matrices or 3-D arrays



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [X, Y] = meshgrid(x)
    [X, Y] = meshgrid(x,y)
    [X, Y, Z] = meshgrid(x,y,z)




Arguments
~~~~~~~~~

:x, y, z vectors
: :X, Y, Z matrices in case of 2 input arguments, else 3-D arrays in
  case of 3 input arguments
:



Description
~~~~~~~~~~~

Create matrices or 3-D arrays.



Examples
~~~~~~~~


::

    x = -1:0.1:1;
    y = -1:0.1:1;
    
    [X,Y] = meshgrid(x,y);
    
    for i=1:`size`_(X,1)
      for j=1:`size`_(X,2)
        Z(i,j) = `sinc`_(2*%pi*X(i,j)*Y(i,j));
      end
    end
    
    `surf`_(X,Y,Z)




See Also
~~~~~~~~


+ `ndgrid`_ arrays for multidimensional function evaluation on grid


.. _ndgrid: ndgrid.html


