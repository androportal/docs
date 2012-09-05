


help_from_sci
=============

Generate help files and demo files from the head comments section of a
.sci source file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    help_from_sci() // generate an empty function template
    helptxt = help_from_sci() // generate an empty function template
    help_from_sci(funname,helpdir) // generate helpdir/funname.xml from funname.sci.
    help_from_sci(dirname,helpdir) // process dirname/*.sci and create helpdir/*.xml help files.
    help_from_sci(dirname,helpdir,demodir) // as above but also creating demodir/*.dem.sce demo files.
    [helptxt,demotxt]=help_from_sci(funname) // return funname.xml and funname.dem.sce code as two text matrixes.




Parameters
~~~~~~~~~~

:funname: the name of a single .sci source file to be processed.
: :dirname: directory name where all .sci files will be processed.
: :helpdir: optional path where the .xml help file will be created.
: :demodir: optional path where .dem.sce demo files will be created
  based on code from the Examples section.
: :helptxt: returns the XML help code if helpdir is empty, or the path
  to the .xml file.
: :demotxt: returns the demo code if demodir is empty, or the path to
  the .dem.sce file.
:



Description
~~~~~~~~~~~

The help_from_sci function generates .xml help files based on the head
comments section of .sci source files. Optionally .dem.sce demo files
can be generated based on code from the Examples section in the head
comments section of .sci files.

In order for help_from_sci to format the .xml file properly the head
comments section should comply with some simple formatting rules.

The first comment line following the function definition should
contain a short description of the function.

The remaining comments are formatted according to the following
(optional) headlines: "Calling Sequence", "Parameters", "Description",
"Examples", "See also", "Used functions", "Authors" and
"Bibliography".

The following guidelines should be used when writing the source code
comments:

+ `Calling Sequence` - one example pr. line.
+ `Parameters` - separate parameter name and description by a ":".
  Keep the description of each parameter on the same line.
+ `Description` - formatting of the text can be done using XML
  commands. Compare the output of head_comments("help_from_sci") with
  help("help_from_sci") to get some hints. Adding an empty comment line
  in the Description section is interpreted as the start of a new
  paragraph.
+ `See also` - list one function name pr line.
+ `Authors` - write one author on each line following the Authors
  headline. Use ";" to separate the authors name from any add additional
  information.
+ `Bibliography` - write one reference pr line following the
  References headline.







Examples
~~~~~~~~


::

    help_from_sci()   // Open an empty source code template in the scinotes editor.
    // Save this template as test_fun.sci in the current directory before running
    // the next example commands.
    
    help_from_sci("test_fun")        // return the xml skeleton as a text string
    
    help_from_sci("test_fun",".")    // create the xml help file in the current directory.
    
    // create both a xml help file and a demo file in the current directory.
    help_from_sci("test_fun",".",".")
    
    // From a toolbox root directory a typical calling sequence would be:
    // help_from_sci("macros","help\en_US","demos")
    // This command would process all .sci files in the macros directory
    // and use the head comments section to update all .xml help files in the
    // help\en_US directory an rebuild the .dem.sce files in the demos\ directory.




See also
~~~~~~~~


+ `help`_
+ `help_skeleton`_
+ `head_comments`_


.. _help_skeleton: help_skeleton.html
.. _help: help.html
.. _head_comments: head_comments.html


