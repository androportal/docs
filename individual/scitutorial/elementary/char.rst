====
"char"
====

Scilab Function Last update : 31/03/2005
**char** - char function



Calling Sequence
~~~~~~~~~~~~~~~~

y=char( x)
y=char(st1,st2,st3,....)




Parameters
~~~~~~~~~~


+ **x** : a cell of strings arrays, or an array of ascii codes
+ **st1,st2,st3** : strings arrays
+ **y:** a strings vector(column)




Description
~~~~~~~~~~~
**One input argument :**
Given **a cell of strings arrays x** , this function returns a strings
vector **y ** in which the rows are the components of the strings cell

Given **an array of ascii codes x,** this function returns a strings
array **y** corresponding into ascii codes. If dims ( **x**
)=[n1,n2,n3,n4,....],then returned value have same size as input value
instead of second dims, dims( **y** )=[n1,n3,n4,..]
**More than one input argument :**
Given **strings arrays** **st1,st2,st3,...** , this function returns a
vector of strings in which the rows are the components of
**st1,st2,st3,... ** In the vector **y ** the length of all strings
sti is completed by blanks, to have the same length than the lengthmax
of sti.//



Examples
~~~~~~~~


::

    //Example with a hypermatrix of ascii codes :
    x=hypermat([4,2,3],61:84);
    y=char(x)
    size(x)
    size(y)
    
    //Example with more than one argument :
    st1="zeros";
    st2=["one","two"];
    st3=["three"];
    y=char(st1,st2,st3)
    size(y)
    //all strings rows are completed by 'blanks' to have the same length : 6
    length(y)
    




See Also
~~~~~~~~

` **asciimat** `_,



Author
~~~~~~

F.B

.. _
      : ://./elementary/../mtlb/asciimat.htm


