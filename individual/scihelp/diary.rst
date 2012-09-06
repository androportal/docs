


diary
=====

diary of session



Calling Sequence
~~~~~~~~~~~~~~~~


::

    diary(filename)
    [id,filename] = diary(filename, ['new'|'append'])
    
    [ids, filenames] = diary()
    [ids, filenames] = diary([], 'list')
    
    diary([], 'close')
    diary(0)
    diary(filename, 'close')
    diary(id, 'close')
    
    diary([], 'pause'|'off')
    diary(filename, 'pause'|'off')
    diary(id, 'pause'|'off')
    
    diary([], 'resume'|'on')
    diary(filename, 'resume'|'on')
    diary(id, 'resume'|'on')
    
    diary(filenames, 'exists')
    diary(ids, 'exists')
    
    diary(filename, 'new'|'append', 'prefix=YYYY-MM-DD hh:mm:ss') 
    diary(filename, 'new'|'append', 'prefix=U')
    diary(filename, 'new'|'append', [ 'prefix=YYYY-MM-DD hh:mm:ss' ; 'prefix-only-commands' ] );




Arguments
~~~~~~~~~

:filename a character string, give the full file name path.
: :id a scalar to identify a diary.
:



Description
~~~~~~~~~~~

`diary(f)`function creates a log of keyboard input and the resulting
text output.



Start a diary session
~~~~~~~~~~~~~~~~~~~~~

`[id, filename] = diary(filename, ['new'|'append'])`

returns :

* id : a positive integer (>= 1) which is the diary session
identifier.

* filename : A string, the absolute path of the effective written
file.

The first input argument is a string that contain the path of the
diary file. This can be a relative path or an absolute path.

The 2nd input argument controls if a new file is created ('new') or if
diary() adds new content at the end of the file ('append'). If the 2nd
input argument is not present, the default value is 'new'.

When diary() is called with 'new' mode : If 'filename' already exists
and is not empty, an effective filename
'base(filemane)+_#+extension(filename)' is built, used, and returned
by diary(filename) as a second output argument (beside id). The rank #
would be set as the smallest integer for which the resultant filename
does not yet exists.



List diary sessions
~~~~~~~~~~~~~~~~~~~

`[ids, filenames] = diary()`

`[ids, filenames] = diary([],'list')`

returns a column vector of integer : identifiers list of opened diary
sessions. a column vector of strings : absolute paths of the files
associated with opened diary sessions.



Close diary session(s)
~~~~~~~~~~~~~~~~~~~~~~

`diary([],'close')`

`diary(0)`

`diary(filename,'close')`

`diary(id,'close')`

The first and second syntaxes close all opened diary sessions.

The third syntax closes diary session(s) identified by 'filename'.

The fourth syntax closes the diary session identified by “id” which is
a positive integer or a vector of positive integers.

Remark : diary(0) is retained as backwards compatibility.



Pause/Resume diary session(s)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`diary([] ,'pause'|'off')`

`diary(filename,'pause'|'off')`

`diary(id ,'pause'|'off')`

The first syntax suspends all opened diary sessions.

The second syntax suspend diary session(s) identified by 'filename'.
'filename' can be a single string or a character string array.

The third syntax suspend the diary session identified by 'id' which is
a positive integer or a vector of positive integers.



`diary([] ,'resume'|'on')`

`diary(filename,'resume'|'on')`

`diary(id ,'resume'|'on')`

The first syntax resume all opened diary sessions.

The second syntax resume diary session(s) identified by 'filename'.
'filename' can be a single string or a character string array.

The third syntax resume the diary session identified by 'id' which is
a positive integer or a vector of positive integers.



Does a diary session exists ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`diary(filename,'exists')`

`diary(id,'exists')`

return true if a diary session is currently opened with the file
'filename', if not false.



Diary and time-stamp
~~~~~~~~~~~~~~~~~~~~

`diary(filename,'new','prefix=YYYY-MM-DD hh:mm:ss')`

`diary(filename,'new','prefix=U')`

`diary(filename,'new',[ 'prefix=YYYY-MM-DD hh:mm:ss' ; 'prefix-only-
commands' ] );`

'prefix=YYYY-MM-DD hh:mm:ss' add date & hour

'prefix=U' add UNIX time epoch

'prefix-only-commands' add time-stamp only as prefix for commands



Filtering diary
~~~~~~~~~~~~~~~

`diary(filename,”new”,”filter=command”)`Log only the input commands.

`diary(filename,”new”,”filter=output”)`Log only the text output.



Examples
~~~~~~~~


::

    d1 = diary(TMPDIR + '/diary1.txt')
    d2 = diary(TMPDIR + '/diary2.txt')
    
    // some Scilab instructions …
    `cd`_ TMPDIR
    `dir`_
    
    // returns infos about opened diary
    [ids, filenames]  = diary()
    
    // close diary d1
    diary(d1,'close')
    [ids, filenames]  = diary()
    
    // close diary d2
    diary(TMPDIR + '/diary2.txt')
    [ids, filenames]  = diary()
    // closes all diary
    diary([],'close')
    [ids, filenames]  = diary()




