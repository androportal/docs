


lmitool
=======

Graphical tool for solving linear matrix inequations.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    lmitool()
    
    lmitool(filename)
    
    txt=lmitool(probname,varlist,datalist)




Arguments
~~~~~~~~~

:filename a string referring to a `.sci` function
: :probname a string containing the name of the problem
: :varlist a string containing the names of the unknown matrices
  (separated by commas if there are more than one)
: :datalist a string containing the names of data matrices (separated
  by commas if there are more than one)
: :txt a string providing information on what the user should do next
:



Description
~~~~~~~~~~~

`lmitool()` or `lmitool(filename)` is used to define interactively a
LMI problem. In the non interactive mode,
`txt=lmitool(probname,varlist,datalist)` generates a file in the
current directory. The name of this file is obtained by adding `.sci`
to the end of `probname`. This file is the skeleton of a solver
function and the corresponding evaluation function needed by
`lmisolver`.



See Also
~~~~~~~~


+ `lmisolver`_ Solve linear matrix inequations.


.. _lmisolver: lmisolver.html


