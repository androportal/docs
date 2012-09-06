


assert_checkfilesequal
======================

Check that two files are equal.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    flag = assert_checkfilesequal ( filecomp , fileref )
    flag = assert_checkfilesequal ( filecomp , fileref , compfun )
    [flag,errmsg] = assert_checkfilesequal ( ... )




Parameters
~~~~~~~~~~

:filecomp : a 1-by-1 matrix of strings, the computed file.
: :fileref : a 1-by-1 matrix of strings, the reference file.
: :compfun : a function or a list, the comparison function (default
  compfun = []). If no comparison function is used, the equality
  operator "==" is used. See below for details.
: :flag : a 1-by-1 matrix of boolean, %t if computed is close to
  expected, %f if not
: :errmsg : a 1-by-1 matrix of strings, the error message. If
  flag==%t, then errormsg=="". If flag==%f, then errmsg contains the
  error message.
:



Description
~~~~~~~~~~~

Performs silently if the files are equal. Generates an error if
filecomp or fileref do not exist. Generates an error if the content of
the files are not equal.

If the files are not equal,

+ if the errmsg output variable is not used, an error is generated,
+ if the errmsg output variable is used, no error is generated.



If the comparison function compfun is a function, it should have
header areequal = compfun ( txtcomp , txtref ) where txtcomp is the
content of the computed file, txtref is the content of the reference
file and areequal is a boolean. The areequal boolean is true if the
two contents are equal. If compfun is a list, it should be list
(cf,a1,a2,...), where cf is a comparison function, and the arguments
a1, a2, will be automatically be appended at the end of the calling
sequence of cf.





Examples
~~~~~~~~


::

    //
    // Prepare data for the tests
    // fileref1 : three lines of text.
    // filecomp1 : == fileref1
    // filecomp2 : <> fileref1
    fileref1 = `fullfile`_(TMPDIR,"fileref.txt");
    txt1 = [
    "Line #1"
    "Line #2"
    "Line #3"
    ];
    fd = `mopen`_(fileref1,"w");
    `mputl`_(txt1,fd);
    `mclose`_(fd);
    filecomp1 = `fullfile`_(TMPDIR,"filecomp1.txt");
    fd = `mopen`_(filecomp1,"w");
    `mputl`_(txt1,fd);
    `mclose`_(fd);
    filecomp2 = `fullfile`_(TMPDIR,"filecomp2.txt");
    txt2 = [
    "Line #1"
    "Line #4"
    "Line #3"
    ];
    fd = `mopen`_(filecomp2,"w");
    `mputl`_(txt2,fd);
    `mclose`_(fd);
    
    // A test which pass
    flag = assert_checkfilesequal ( filecomp1 , fileref1 )
    [flag,errmsg] = assert_checkfilesequal ( filecomp1 , fileref1 )
    
    // Failure: filecomp2 <> fileref1
    // Error generated
    flag = assert_checkfilesequal ( filecomp2 , fileref1 )
    // No error generated
    [flag,errmsg] = assert_checkfilesequal ( filecomp2 , fileref1 )
    
    // Prepare data for the tests
    // fileref2 == filecomp3, given that comment lines are ignored.
    // fileref2 <> filecomp4, given that comment lines are ignored.
    // Notice that the comments are inserted at different positions in the files:
    // sometimes at the beginning, sometimes in the middle.
    fileref2 = `fullfile`_(TMPDIR,"fileref2.txt");
    txt = [
    "// bla 2"
    "Line #1"
    "// bla 2"
    "Line #2"
    "Line #3"
    ];
    fd = `mopen`_(fileref2,"w");
    `mputl`_(txt,fd);
    `mclose`_(fd);
    filecomp3 = `fullfile`_(TMPDIR,"filecomp3.txt");
    txt = [
    "Line #1"
    "// bla 5168"
    "Line #2"
    "Line #3"
    "// bla oups"
    ];
    fd = `mopen`_(filecomp3,"w");
    `mputl`_(txt,fd);
    `mclose`_(fd);
    filecomp4 = `fullfile`_(TMPDIR,"filecomp4.txt");
    txt = [
    "// bla 3"
    "Line #1"
    "Line #4"
    "// bla 5168"
    "Line #3"
    "// bla oups"
    ];
    fd = `mopen`_(filecomp4,"w");
    `mputl`_(txt,fd);
    `mclose`_(fd);
    
    // A test with a comparison function which ignores comment lines.
    function otxt=myfilter(itxt)
    nr = `size`_(itxt,"r")
    // This is the pattern for a comment line of the form "// blabla"
    pattern = "/\/\/.*/"
    k = 1
    for i = 1 : nr
    start = `regexp`_(itxt(i),pattern)
    if ( start == [] ) then
    otxt(k) = itxt(i)
    k = k + 1
    end
    end
    endfunction
    function areequal=mycompfun(ctxt, etxt)
    ctxt = myfilter ( ctxt )
    etxt = myfilter ( etxt )
    areequal = ( ctxt == etxt )
    endfunction
    //
    // A test which pass
    [flag,errmsg] = assert_checkfilesequal ( filecomp3 , fileref2 , mycompfun )
    // A test which fails
    [flag,errmsg] = assert_checkfilesequal ( filecomp4 , fileref2 , mycompfun )




History
~~~~~~~
Version Description 5.4.0 Function introduced


