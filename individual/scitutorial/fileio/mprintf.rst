====
"mprintf"
====

Scilab Function Last update : 01/04/2004
**mfprintf** - converts, formats, and writes data to a file

**mprintf** - converts, formats, and writes data to the main scilab
window

**msprintf** - converts, formats, and writes data in a string



Calling Sequence
~~~~~~~~~~~~~~~~

mfprintf(fd,format,a1,...,an);
mprintf(format,a1,...,an);
str=msprintf(format,a1,...,an);




Parameters
~~~~~~~~~~


+ **fd** : scalar, file descriptor given by **mopen** (it's a positive
  integer). The value **-1** refers to the default file ( i.e the last
  opened file).
+ **format** : a Scilab string describing the format to use to write
  the remaining operands. The format operand follows, as close as
  possible, the C printf format operand syntax.
+ **str** : a character string, string to be scanned.
+ **a1,...,an** : Specifies the data to be converted and printed
  according to the format parameter.




Description
~~~~~~~~~~~

The **mprintf** , **mfprintf** , and **msprintf** functions are
interface for C-coded version of **printf** , **fprintf** and
**sprintf** functions.

The **mprintf** function writes formatted operands to the standard
Scilab output (i.e the Scilab window). The argument operands are
formatted under control of the format operand.

The **mfprintf** function writes formatted operands to the file
specified by the file desciptor **fd** . The argument operands are
formatted under control of the format operand.

The **msprintf** writes formatted operands in its returned value (a
Scilab string). The argument operands are formatted under control of
the format operand. Note that, in this case, the escape sequences (
**"\n, \t,.."** ) are treated as a normal sequence of characters.

All these functions may be used to output column vectors of numbers
and string vectors without an explicit loop on the elements. In that
case these functions iterates on the rows. The shortest vector gives
the number of time the format has to be iterated.

An homogeneous sequence of identical type parameters can be replaced
by a matrix



Examples
~~~~~~~~


::

    
    
    mprintf('At iteration %i, Result is:\nalpha=%f',33,0.535)
    
    msprintf('%5.3f %5.3f',123,0.732)
    msprintf('%5.3f\n%5.3f',123,0.732)
    
    A=rand(5,2);
    // vectorized forms: the format directive needs 
    // two operand, each column of A is used as an operand. 
    // and the mprintf function is applied on each row of A 
    mprintf('%5.3f\t%5.3f\n',A)
    
    colors=['red';'green';'blue';'pink';'black'];
    RGB=[1 0 0;0 1 0;0 0 1;1 0.75 0.75;0 0 0];
    mprintf('%d\t%s\t%f\t%f\t%f\n',(1:5)',colors,RGB)
    
     
      




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


