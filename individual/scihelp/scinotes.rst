


scinotes
========

Scinotes: Embedded Scilab text editor



Calling Sequence
~~~~~~~~~~~~~~~~


::

    scinotes()
    scinotes(file)
    scinotes([file1, file2])
    scinotes(file, line_number)
    scinotes(file, line_number, macro_name)
    scinotes([file1, file2], [line_number1, line_number2])
    scinotes(file, 'readonly')
    scinotes([file1, file2], 'readonly')




Arguments
~~~~~~~~~

:file a string, the file to be opened.
: :[file1, file2] a matrix of string, files to be opened.
:

:line_number An integer, the number of the line to be highlighted at
  the opening of the file.
:

:macro_name a string, the line number would be relative to the
  definition of the function macro_name
:

:[line_number1, line_number2] a matrix of integer, each opened file
  will have its corresponding line highlighted.
:



Description
~~~~~~~~~~~

`Scinotes` is an embedded Scilab text editor.

It can be started with a fresh text buffer pressing the "Editor"
button on top of the main Scilab window, or from Scilab command line
with the instruction `editor()`, or it can open specific files if
invoked with any of the calling sequences above (whithout any
parameters, it opens editor with a blank file).

The same invocation adds further files to an already opened Editor.

With the option 'readonly', files are opened in read-only mode so they
cannot be modified.

Keyboard shortcuts are defined for most possible editing actions and
reported by the menu entries.



SciNotes can be started in the following ways :


+ By the menu Applications. Choose Applications => Editor
+ From the command line:

    + scinotes()
    + scinotes(file)
    + scinotes([file1, file2])
    + scinotes(file, line_number)
    + scinotes([file1, file2], [line_number1, line_number2])





Menus and Shortcuts
~~~~~~~~~~~~~~~~~~~


+ Menu File Commande Shortcut Description New... <CTRL-N> Open a new
  file Open... <CTRL-O> Open an existing file Recent Files Display files
  recently opened Save <CTRL-S> Save a file Save as... <CTRL-MAJ-S> Save
  a file as Page Setup Setup page for printing Print Preview <CTRL-
  MAJ-P> Open a print preview window Print... <CTRL-P> Print a file
  Close <CTRL-W> Close a file Quit <CTRL-Q> Close Editor
+ Menu Edit Commande Shortcut Description Undo <CTRL-Z> Undo action
  Redo <CTRL-Y> Redo action Cut <CTRL-X> Cut the selection Copy <CTRL-C>
  Copy the selection Paste <CTRL-V> Paste the selection Select All
  <CTRL-A> Select the entire document Delete Delete the selection
  Comment Selection <CTRL-D> Comment selected lines Uncomment Selection
  <CTRL-MAJ-D> Uncomment selected lines Tabify Selection <TAB> Tabify
  selected lines Untabify Selection <MAJ-TAB> Untabify selected lines
  Indent <CTRL-I> Indent selected lines
+ Menu Search Commande Shortcut Description Find/Replace <CTRL-F> Find
  and/or Replace an element Goto line <CTRL-G> Goto line
+ Menu View Commande Shortcut Description Show/Hide Toolbar Option to
  show or hide the toolbar Highlight current line <CTRL-J> Highlight the
  current line Line Numbers <CTRL-B> Display document's line numbers Set
  Colors... Color settings for documents Set Fonts... Font settings for
  documents Reset default font Reset default font settings for documents
+ Menu Document Commande Shortcut Description Syntax Type Syntax type
  settings (default type is Scilab) Encoding Encoding settings (default
  type is UTF-8 Encoding) Colorize Colorize the document Auto Indent
  Activate the automatic indentation
+ Menu Execute Commande Shortcut Description Load Into Scilab <CTRL-L>
  Load the entire document into the Scilab console Evaluate Selection
  Load the selection into the Scilab console Execute Into Scilab
  <CTRL-E> If the file exist, execute the content of the file




Remarks
~~~~~~~

:Document : The default text colorization is the Scilab's syntax
  colorization. The `auto-indent` mode indent a line according to
  Scilab's syntax (after a return action).
:



Examples
~~~~~~~~


::

    // editor without parameters
    scinotes();
        
    // editor with a file name
    scinotes('SCI/modules/time/macros/datenum.sci');
        
    // editor with a matrix of files name
    scinotes(['SCI/modules/time/macros/datenum.sci','SCI/modules/time/macros/datevec.sci']);
        
    // editor with a file name and the line number to highlight
    scinotes('SCI/modules/time/macros/datenum.sci', 5);
    
    // editor with a file name and the line number to highlight
    scinotes('SCI/modules/time/macros/datenum.sci', 8, 'datenum');
    
    // editor with a matrix of files name and the corresponding matrix of lines to highlight
    // the files name matrix and the lines to highlight matrix should have the same size
    scinotes(['SCI/modules/time/macros/datenum.sci','SCI/modules/time/macros/datevec.sci'], [5,10]);




