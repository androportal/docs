====
"mfscanf"
====

Scilab Function Last update : 07/04/2006
**mscanf** - interface to the C scanf function

**mfscanf** - interface to the C fscanf function

**msscanf** - interface to the C sscanf function



Calling Sequence
~~~~~~~~~~~~~~~~

[n,v_1,...v_n]=mfscanf([niter,]fd,format)
L=mfscanf([niter,] fd,format)

[n,v_1,...v_n]=mscanf([niter,] format)
L=mscanf([niter,]format)

[n,v_1,...v_m]=msscanf([niter,]str,format)
L=msscanf([niter,] str,format)




Parameters
~~~~~~~~~~


+ **format** : a Scilab string describing the format to use to write
  the remaining operands. The format operand follows, as close as
  possible, the C printf format operand syntax.
+ **fd** :The fd parameter returned by the function **mopen** is used
  as a file descriptor (it's a positive integer). The value -1 refers to
  the last opened file.
+ **str** : a Scilab string or string vector.
+ **niter** : an integer, the number of times the format as to be
  used.
+ **n** : an integer, the number of data read or -1 if EOL has been
  encountered before any datum has been read.
+ **v_i** : Each function reads characters, interprets them according
  to a format, and stores the results in its output arguments. If more
  than $n$ output arguments are provided, the last ones **v_n+1,...v_m**
  are set to empty matrices.
+ **L** : if all data are homogeneous they are stored in a unique
  vector which is returned, otherwise subsequences of same data type are
  stored in matrices and an **mlist** (with type **cblock** ) containing
  all the built matrices is returned.




Description
~~~~~~~~~~~

The **mfscanf** function reads characters from the stream **fd** .

The **mscanf** function reads characters from Scilab window.

The **msscanf** function reads characters from the Scilab string
**str** .

The **niter** optional argument specifies how many time the format has
to used. One iteration produces one line in the output matrix. If
**niter==-1** the function iterates up to the end of file. The
**niter** default value is 1.



Examples
~~~~~~~~


::

    
        
        //--    Simple use                                        --
        //----------------------------------------------------------
        s='1 1.3'  //a string
        [n,a,b]=msscanf(s,"%i %e")
        L=msscanf(s,"%i %e")
    
        //--    Formats samples                                   --
        //----------------------------------------------------------
    
        msscanf(" 12\n",'%c%c%c%c') //scan characters
    
        msscanf('0xabc','%x') //scan with hexadecimal format
    
        msscanf('012345abczoo','%[0-9abc]%s')  //[] notation
    
        // reading float and double
        msscanf('4345.988','%g')-4345.988 // scan as float
        msscanf('4345.988','%lg')-4345.988 // scan as double
    
    
        //--    scanning multi-line data files                    --
        //----------------------------------------------------------
        //create a file with data
        u=mopen(TMPDIR+'/foo','w');
        t=(0:0.1:%pi)';mfprintf(u,"%6.3f %6.3f\n",t,sin(t))
        mclose(u);
    
        u=mopen(TMPDIR+'/foo','r'); // open the file for reading
        //read the file line by line
        [n,a,b]=mfscanf(u,'%e %e') //first line using mutiple LHS syntax
        l=mfscanf(u,'%e %e')       //second one using single LHS syntax
        //use niter to read 5 more lines
        l=mfscanf(5,u,'%e %e')  
    
        //use niter=-1 to read up to the end of file
        l=mfscanf(-1,u,'%e %e')  
    
        mclose(u); //close the file
    
    
    
        //--    scanning multi-line  strings vectors              --
        //----------------------------------------------------------
    
        //use niter to scan a string vector
        [n,Names,Ages]=msscanf(-1,["Alain 19";"Pierre 15";"Tom 12"],'%s %d')
        D=msscanf(-1,["Alain 19";"Pierre 15";"Tom 12"],'%s %d')
        typeof(D)
        Names=D(:,1) //strings
        Age=D(:,2)   //numerical values
    
    
        
      




See Also
~~~~~~~~

` **mclose** `_,` **meof** `_,` **mfprintf** `_,` **fprintfMat** `_,`
**mfscanf** `_,` **fscanfMat** `_,` **mget** `_,` **mgetstr** `_,`
**mopen** `_,` **mprintf** `_,` **mput** `_,` **mputstr** `_,`
**mscanf** `_,` **mseek** `_,` **mtell** `_,` **mdelete** `_,

.. _
      : ://./fileio/meof.htm
.. _
      : ://./fileio/mseek.htm
.. _
      : ://./fileio/mputstr.htm
.. _
      : ://./fileio/fprintfMat.htm
.. _
      : ://./fileio/mgetstr.htm
.. _
      : ://./fileio/mopen.htm
.. _
      : ://./fileio/mprintf.htm
.. _
      : ://./fileio/mfscanf.htm
.. _
      : ://./fileio/mtell.htm
.. _
      : ://./fileio/mclose.htm
.. _
      : ://./fileio/fscanfMat.htm
.. _
      : ://./fileio/mget.htm
.. _
      : ://./fileio/mdelete.htm
.. _
      : ://./fileio/mput.htm


