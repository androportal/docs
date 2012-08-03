====
"m2scideclare"
====

M2SCI function Last update : 05/10/2004
**m2scideclare** - Giving tips to help M2SCI...



Description
~~~~~~~~~~~

The main difficulty for M2SCI ( **mfile2sci** ) is to find what
variables are: dimensions, type...

To help this tool, just add comments beginning with **%m2scideclare**
in the M-file to convert, ( **%m2sciassume** was used in previous
Scilab versions and is now obsolete).

The syntax of this command is:

**%m2scideclare variable_name|dimensions|data_type|property**

with :

****
