Scilab Function

Last update : 20/11/2006

**predef** - variable protection

Calling Sequence
~~~~~~~~~~~~~~~~

``n=predef()  ``

``oldnew=predef(n)``

``oldnew=predef('all')``

``oldnew=predef('clear')``

Description
~~~~~~~~~~~

Utility function used for defining "oldest" variables as "protected".
Protected variables cannot be killed. They are not saved by the
``         'save'       `` command. The "oldest" are those appearing
last in the ``         who('get')       ``.

``         predef()       `` gets the number of protected variables

``         predef('a[ll]')       `` sets all the variables protected, it
also return the old and new value of protected variables number.

``         predef('c[lear]')       `` unprotect all but the last 7
variables, it also return the old and new value of protected variables
number.

``         predef(n)       `` sets the ``         max(n,7)       `` last
defined variables as protected, it also return the old and new value of
protected variables number.

Remark
~~~~~~

A number of protected variables are set in the start-up file
``           SCI/scilab.star         ``. User may in particular set its
own predefined variables in user's startup files
``           SCIHOME/.scilab         `` and
``           SCIHOME/scilab.ini         ``

SCIHOME definition : On Windows : C:/Documents and
Settings/<User>/Scilab/<Scilab-Version> On Linux/Unix :
/home/<User>/.Scilab/<Scilab-Version>

See Also
~~~~~~~~

```           clear         `` <clear.htm>`_,
```           save         `` <../fileio/save.htm>`_,
