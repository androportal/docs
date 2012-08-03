====
"scilab"
====

Scilab Function Last update : 21/11/2006
**scilab** - Major unix script to execute Scilab and miscellaneous
tools



Calling Sequence
~~~~~~~~~~~~~~~~

scilab <Options>




Description
~~~~~~~~~~~

**-args Arguments**: if this option is present arguments are passed to
  Scilab. They can then be got by ` **sciargs** `_ function. For multi
  arguments passing use a quoted, blank separated sequence of words
  like: **scilab -args 'foo1 foo2'**
**-display Display**: for use under Xwindow systems only to set a
  specific X server display. Default display is unix:0.0 **-display**
  can be abbreviated by **-d**
**-debug**: Start Scilab under the debugguer gdb (Unix/linux only).
**-e Instruction**: if this option is present then Scilab instruction
  **Instruction** is executed first (just after startup file execution)
  into Scilab. **-e** and **-f** options are mutually exclusive.
**-f file**: if this option is present then Scilab script **file** is
  executed first (just after startup file execution) into Scilab. **-e**
  and **-f** options are mutually exclusive.
**-l lang**:if this option is present it fixes the user language. The
  possible **lang** values are **'fr'** for french and **'eng'** for
  english. The default language is english. This default value is fixed
  the **scilab.star** file.
**scilab -link <objects>**: Is used to produce a local **scilex**
(executable code of Scilab) linked with the additional files given by
the user in **<objects>** . This command also produces a **scilab**
script, which when called will ran the new generated scilex file. For
example:

::

    
    	  
    	  scilab -link  C/interf.o C/evol.o C/bib.a
    	  
    	

will create a new **scilex** file in which the default **interf.o**
  file will be replaced by **C/interf.o** . **-link** option cannot be
  used with any of the other options.
**-mem N**:set the initial stacksize, for use with -ns option. Without
  -ns option the initial stacksize is set by scilab.star script.
**-nb**:if this option is present then the scilab welcome banner is
  not displayed.
**-ns** :if this option is present the startup file
  **SCI/scilab.star** and the user startup files **SCIHOME/.scilab** ,
  **SCIHOME/scilab.ini** are not executed.
**-nouserstartup** :if this option is present the user startup files
  **SCIHOME/.scilab** , **SCIHOME/scilab.ini** are not executed.
**-nw**:if this option is present then scilab is not run in an
  specific window.
**-nwni**:if this option is present then scilab is not run in an
  specific window and does not accept user interaction. This option may
  be used with -f or -e options.
**--texmacs**:This option is reserved for TeXMacs.




Remark
~~~~~~

SCIHOME definition: On Windows : C:/Documents and
Settings/<User>/Scilab/<Scilab-Version> On Linux/Unix :
/home/<User>/.Scilab/<Scilab-Version>

.. _
        : ://./utilities/../programming/sciargs.htm


