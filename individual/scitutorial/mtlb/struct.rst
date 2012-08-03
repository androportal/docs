====
"struct"
====

Scilab Function Last update : 14/03/2007
**struct** - create a struct



Calling Sequence
~~~~~~~~~~~~~~~~

st=struct(field1,value1,field2,value2...)




Parameters
~~~~~~~~~~


+ **field1, field2, ..** : strings represents the fields names
+ **value1, value2, ..** : all data type (double, char, int, ...),
  represents the fields values




Description
~~~~~~~~~~~

This function returns a struct with the fields names **fields1** ,
**field2** , ..., and the fields values corresponding **value1** ,
**value2** , ...



Examples
~~~~~~~~


::

    // create a struct date
    date=struct('day',25,'month' ,'DEC','year',2006)
    //change the month
    date.month='AUG';
    // change the year
    date.year=1973;
    //change the day
    date.day=19;
    // add a new field
    date.semaine=32
    
    
      




See Also
~~~~~~~~

` **cell** `_,

.. _
      : ://./mtlb/cell.htm


