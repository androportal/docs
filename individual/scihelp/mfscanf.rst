


mfscanf
=======

reads input from the stream pointer stream (interface to the C fscanf
function)



mscanf
======

reads input from the standard input (interface to the C scanf
function)



msscanf
=======

reads its input from the character string (interface to the C sscanf
function)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [n, v_1,..., v_m] = mfscanf([niter,]fd, format)
    L = mfscanf([niter,] fd,format)
    
    [n, v_1,..., v_m] = mscanf([niter,] format)
    L = mscanf([niter,]format)
    
    [n, v_1,..., v_m] = msscanf([niter,]str, format)
    L = msscanf([niter,] str, format)




Arguments
~~~~~~~~~

:format a Scilab string describing the format to use to write the
  remaining operands. The `format` operand follows, as close as
  possible, the C `printf` format operand syntax as described in
  `scanf_conversion`_.
: :fd a positive integer: a file descriptor returned by the function
  `mopen`. The value -1 refers to the last opened file.
: :str a Scilab string or string vector.
: :niter an integer: the number of times the `format` to be used.
: :n an integer: the number of data read or -1 if EOL has been
  encountered before any datum has been read.
: :v_i Each function reads characters, interprets them according to a
  `format`, and stores the results in its output arguments. If more than
  `n` output arguments are provided, the last ones `v_n+1, ..., v_m` are
  set to empty matrices.
: :L if all data are homogeneous they are stored in a unique vector
  which is returned, otherwise subsequences of same data type are stored
  in matrices and a `mlist` (with type `cblock`) containing all the
  built matrices is returned.
:



Description
~~~~~~~~~~~

The `mfscanf` function reads characters from the stream `fd`.

The `mscanf` function reads characters from Scilab window.

The `msscanf` function reads characters from the Scilab string `str`.

The `niter` optional argument specifies how many time the format has
to used. One iteration produces one line in the output matrix. If
`niter==-1` the function iterates up to the end of file. The `niter`
default value is 1.

Comments about precision:

`mfscanf` is based on C function `fscanf`. If you use `'%f'`, `'%g'`,
`'%e'` as format your data will be cast to float and returned in a
Scilab variable.

If this Scilab variable is a double then you can have some precision
errors. In this case, it is better to use `'%lg'` format.



Examples
~~~~~~~~


::

    //----------------------------------------------------------
    //--    Simple use                                        --
    //----------------------------------------------------------
    s='1 1.3'  //a string
    [n,a,b]=msscanf(s,"%i %e")
    L=msscanf(s,"%i %e")
    
    //----------------------------------------------------------
    //--    Formats samples                                   --
    //----------------------------------------------------------
    
    msscanf(" 12\n",'%c%c%c%c') //scan characters
    
    msscanf('0xabc','%x') //scan with hexadecimal format
    
    msscanf('012345abczoo','%[0-9abc]%s')  //[] notation
    
    // reading float and double
    msscanf('4345.988','%g')-4345.988 // scan as a float
    msscanf('4345.988','%lg')-4345.988 // scan as a double
    
    //----------------------------------------------------------
    //--    scanning multi-line data files                    --
    //----------------------------------------------------------
    //create a file with data
    u=`mopen`_(TMPDIR+'/foo','w');
    t=(0:0.1:%pi)';`mfprintf`_(u,"%6.3f %6.3f\n",t,`sin`_(t))
    `mclose`_(u);
    
    u=`mopen`_(TMPDIR+'/foo','r'); // open the file for reading
    //read the file line by line
    [n,a,b]=`mfscanf`_(u,'%e %e') //first line using multiple LHS syntax
    l=`mfscanf`_(u,'%e %e')       //second one using single LHS syntax
    //use niter to read 5 more lines
    l=`mfscanf`_(5,u,'%e %e')  
    
    //use niter=-1 to read up to the end of file
    l=`mfscanf`_(-1,u,'%e %e')  
    
    `mclose`_(u); //close the file
    
    //----------------------------------------------------------
    //--    scanning multi-line  strings vectors              --
    //----------------------------------------------------------
    //use niter to scan a string vector
    [n,Names,Ages]=msscanf(-1,["Alain 19";"Pierre 15";"Tom 12"],'%s %d')
    D=msscanf(-1,["Alain 19";"Pierre 15";"Tom 12"],'%s %d')
    `typeof`_(D)
    Names=D(:,1) //strings
    Age=D(:,2)   //numerical values




See Also
~~~~~~~~


+ `mclose`_ closes an opened file
+ `meof`_ check if end of file has been reached
+ `mfprintf`_ converts, formats, and writes data to a file
+ `fprintfMat`_ writes a matrix in a file
+ `fscanfMat`_ reads a matrix from a text file
+ `mget`_ reads byte or word in a given binary format and converts to
  a double type
+ `mgetstr`_ reads a character string from a file
+ `mopen`_ open a file in Scilab
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `mput`_ writes byte or word in a given binary format
+ `mputstr`_ write a character string in a file
+ `mseek`_ set current position in binary file.
+ `mtell`_ binary file management
+ `mdelete`_ deletes file(s)
+ `scanf_conversion`_ scanf, sscanf, fscanf conversion specifications


.. _mget: mget.html
.. _meof: meof.html
.. _mput: mput.html
.. _mgetstr: mgetstr.html
.. _fscanfMat: fscanfMat.html
.. _mprintf: mprintf.html
.. _mdelete: mdelete.html
.. _mclose: mclose.html
.. _mfprintf: mfprintf.html
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _scanf_conversion: scanf_conversion.html
.. _mtell: mtell.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


