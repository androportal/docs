====
"percenthelps"
====

Scilab Function Last update : April 1993
**%helps** - Variable defining the path of help directories



Description
~~~~~~~~~~~

The global variable **%helps** is an N x 2 matrix of strings. The kth
row of **%helps** , **%helps(k,:)** represents the kth chapter of the
manual and is made of two strings:

**%helps(k,1)** is the absolute pathname for a help directory.

**%helps(k,2)** is a title for this help directory. For instance, for
k=2, we have the graphics chapter **%helps(2,:)** .

The variable **%helps** is defined in the Scilab startup file
**SCI+"/scilab.star"** .

To add a new help directory, the user should add a row to the variable
**%helps** . (One row for each directory).

For instance, **%helps=[%helps; "Path-Of-My-Help-Dir","My-Title"];**
enables the Scilab help browser to look for help manual items in the
directory with pathname "Path-Of-My-Help-Dir".

"My-Title" is then the title of a new help chapter.

A valid help directory must contain:

1- A set of **.html** files (e.g. **item1.html, item2.html** etc). The
**.html** files are usually built from XML files.

2- A **whatis.html** file, which must have a special format. Each row
of the **whatis** must be as follows:


::

    
    
    <BR><A HREF="item.html">item</A> - quick description
       
        


**item** is the item of the help, i.e. the command **help item**
displays the contents of the file **item.html** .

The command **apropos keyword** returns the row(s) of all the
**whatis.html** file(s) in which the keyword appears.

On Linux platforms Scilab provides a Makefile for transforming
**.xml** pages into **.html** pages (see SCIDIR/examples/man-
examples).



See Also
~~~~~~~~

` **apropos** `_,` **help** `_,` **man** `_,

.. _
      : ://./utilities/help.htm
.. _
      : ://./utilities/man.htm
.. _
      : ://./utilities/apropos.htm


