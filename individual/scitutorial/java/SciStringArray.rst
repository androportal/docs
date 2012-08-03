====
"SciStringArray"
====

Java Interface Last update : 30/01/2006
**SciStringArray** - Classe to use String matrix in Scilab.



Description
~~~~~~~~~~~



Method Summary :

**public SciDoubleArray(String name,SciDoubleArray Obj)** :
Constructor

**public SciStringArray(String name,int r,int c)** : Constructor

**public SciStringArray(String name,int r,int c,String [] x )** :
Constructor

**public int getRow()** : Get number of rows

**public int getCol()** : Get number of colons

**public String getName()** : Get Name of scilab object

**public String[] getData()** : Get Value of scilab object

**public void Get() ** : Get in java object , value of scilab object

**public void Send() ** : Send to scilab object , value of java object

**public void disp() ** : disp object

**public boolean Job(String job)** : Execute a job in scilab

**public String GetElement(int indr, int indc)** : Get a specific
element of scilab object



Examples
~~~~~~~~


::

     // See SCI/examples/Callsci/CallsciJava directory




See Also
~~~~~~~~

` **Scilab** `_,` **SciDouble** `_,` **SciDoubleArray** `_,`
**SciString** `_,



Author
~~~~~~

A.C

.. _
      : ://./java/SciDouble.htm
.. _
      : ://./java/SciString.htm
.. _
      : ://./java/SciDoubleArray.htm
.. _
      : ://./java/Scilab.htm


