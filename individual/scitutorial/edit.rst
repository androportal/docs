


edit
====

function editing



Calling Sequence
~~~~~~~~~~~~~~~~


::

    edit(functionname[,linenumber])




Arguments
~~~~~~~~~

:functionname character string
: :linenumber integer
:



Description
~~~~~~~~~~~

If `functionname` is the name of a defined scilab function
`edit(functionname)` try to open the associated file
`functionname.sci`.

If `functionname` is the name of a undefined scilab function
`edit(functionname)` create a `functionname.sci` file in the current
directory.

If `functionname` is not a valid macro or function name
`edit(functionname)` opens the file with file name equals to
`functionname`.

If `linenumber` is given, the file is opened at this line relatively
to the definition of the macro named as the file itself. If the macro
definition is not found, the file is opened at line given by
`linenumber`.



Examples
~~~~~~~~


::

    //open editor with text of this function
    edit('edit')  
    
    //open editor for a new function
    edit('myfunction')  
    
    //open the file bar.sci in TMPDIR directory
    edit(`fullfile`_(TMPDIR+'bar.sci')) 
    
    // open the file test_run.sci at line 123
    // relatively to the definition of test_run()
    edit('test_run', 123)




See Also
~~~~~~~~


+ `manedit`_ editing a manual item
+ `names`_ Scilab names syntax
+ `editor`_ Call a the text editor as defined in the preferences


.. _manedit: manedit.html
.. _editor: editor.html
.. _names: names.html


