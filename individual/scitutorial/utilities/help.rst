====
"help"
====

Scilab Function Last update : 20/11/2006
**help** - on-line help command



Calling Sequence
~~~~~~~~~~~~~~~~

help(key)
help




Parameters
~~~~~~~~~~


+ **key** : character string. Gives the help page to be found




Description
~~~~~~~~~~~

**help** without argument displays the hypertext page containing the
list of help chapters.

**help(key)** displays the Scilab help file associated with the given
**key** . If no help file is found, **help(key)** automatically call
**apropos(key)** .

Scilab includes its own simple browser written in TCL/TK. It is
possible to choose an other one. The global variable **%browsehelp**
contains a string defining which browser must be used: its value may
be changed (or redefined in your startup files : SCIHOME/.scilab or
SCIHOME/scilab.ini). Note that when you enter an **help** command
while **%browsehelp** contains the empty matrix **[]** then the
different browser choice possibilities are displayed (so that you can
enter the 2 instructions: **global %browsehelp; %browsehelp=[]** for
changing of browser !). As generally different browsers have
differents calling sequences, if your favorite one is not in the list
you may have to adapt the **browsehelp** scilab which can be found in
**SCI/macros/util/browsehelp.sci** .

See ` **man** `_ for more explanation on how to write new help pages .



See Also
~~~~~~~~

` **apropos** `_,` **man** `_,

.. _
      : ://./utilities/man.htm
.. _
      : ://./utilities/apropos.htm


