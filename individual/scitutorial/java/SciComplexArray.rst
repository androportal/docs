====
"SciComplexArray"
====

Java Interface Last update : 19/07/2006
**SciComplexArray** - Class to use complex matrix in Scilab.



Description
~~~~~~~~~~~



Method Summary :

**public SciComplexArray(String name,SciComplexArray Obj)** :
Constructor

**public SciComplexArray(String name,int r,int c)** : Constructor

**public SciComplexArray(String name,int r,int c,double []
realpart,double [] imaginarypart)** : Constructor

**public int getRow()** : Get number of rows

**public int getCol() ** : Get number of colons

**public String getName()** : Get Name of scilab object

**public double[] getRealPartData()** : Get Real Part Value of scilab
object

**public double[] getImaginaryPartData()** : Get Imaginary Part Value
of scilab object

**public void disp() ** : disp object

**public boolean Job(String job)** : Execute a job in scilab

**public void Get()** : Get in java object , value of scilab object

**public void Send()** : Send to scilab object , value of java object

**public double GetRealPartElement(int indr, int indc)** : Get a
specific element of scilab object

**public double GetImaginaryPartElement(int indr, int indc)** : Get a
specific element of scilab object



Examples
~~~~~~~~


::

     // See SCI/examples/Callsci/CallsciJava directory




See Also
~~~~~~~~

` **Scilab** `_,` **SciComplex** `_,` **SciDouble** `_,`
**SciDoubleArray** `_,` **SciString** `_,` **SciStringArray** `_,



Author
~~~~~~

A.C

.. _
      : ://./java/SciDouble.htm
.. _
      : ://./java/SciComplex.htm
.. _
      : ://./java/SciString.htm
.. _
      : ://./java/SciStringArray.htm
.. _
      : ://./java/Scilab.htm
.. _
      : ://./java/SciDoubleArray.htm


