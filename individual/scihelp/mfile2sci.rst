


mfile2sci
=========

Matlab M-file to Scilab conversion function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mfile2sci([M-file-path [,result-path [,Recmode [,only-double [,verbose-mode [,prettyprintoutput]]]]]])




Arguments
~~~~~~~~~

:M-file-path a character string which gives the path of Matlab M-file
  to convert
: :result-path a character string which gives the directory where the
  result has to be written. Default value is current directory.
: :Recmode Boolean flag, used by translatepaths function for recursive
  conversion. Must be %F to convert a single mfile. Default value : %f
: :only-double Boolean flag, if %T mfile2sci considers that numerical
  function have been used only with numerical data (no Scilab
  overloading function is needed). Default value: %T
: :verbose-mode display information mode
    :0 no information displayed
    : :1 information written as comment is resulting SCI-file
    : :2 information written as comment is resulting SCI-file and in
      logfile
    : :3 information written as comment is resulting SCI-file, in logfile
      and displayed in Scilab window
    :

: :prettyprintoutput Boolean flag, if %T generated code is beautified.
  Default value: %F
:



Description
~~~~~~~~~~~

M2SCI (and particularly mfile2sci) is Matlab M-file to Scilab function
conversion tools. It tries whenever possible to replace call to Matlab
functions by the equivalent Scilab primitives and functions.

To convert a Matlab M-file just enter the Scilab instruction:
mfile2sci(file)

where file is a character string giving the path name of the M-file
mfile2sci will generate three files in the same directory

:<function-name>.sci the Scilab equivalent of the M-file
: :<function-name>.cat the Scilab help file associated to the function
: :sci_<function-name>.sci the Scilab function required to convert the
  calls to this Matlab M-file in other Matlab M-files. This function may
  be improved "by hand". This function is only useful for conversion not
  for use of translated functions.
:

Some functions like eye, ones, size, sum,... behave differently
according to the dimension of their arguments. When mfile2sci cannot
infer dimensions it replaces these function call by a call to an
emulation function named mtlb_<function_name>. For efficiency these
functions may be replaced by the proper scilab equivalent
instructions. To get information about replacement, enter: help
mtlb_<function_name> in Scilab command window

Some other functions like plot, has no straightforward ï¿½quivalent in
scilab. They are also replaced by an emulation function named
mtlb_<function_name>.

When translation may be incorrect or may be improved mfile2sci adds a
comment which begins by "//!" (according to verbose-mode)

When called without rhs, `mfile2sci()` launches a GUI to help to
select a file/directory and options.



Examples
~~~~~~~~


::

    // Create a simple M-file
    rot90m = ["function B = rot90(A,k)"
        "if ~isa(A, ''double'')"
        "    error(''rot90: Wrong type for input argument #1: Real or complex matrix expected.'');"
        "    return"
        "end"
        "[m,n] = size(A);"
        "if nargin == 1"
        "    k = 1;"
        "else"
        "    if ~isa(k, ''double'')"
        "        error(''rot90: Wrong type for input argument #2: A real expected.'');"
        "        return"
        "    end"
        "    k = rem(k,4);"
        "    if k < 0"
        "        k = k + 4;"
        "    end"
        "end"
        "if k == 1"
        "    A = A.'';"
        "    B = A(n:-1:1,:);"
        "elseif k == 2"
        "    B = A(m:-1:1,n:-1:1);"
        "elseif k == 3"
        "    B = A(m:-1:1,:);"
        "    B = B.'';"
        "else"
        "    B = A;"
        "end"];
    `mputl`_(rot90m, TMPDIR + "/rot90.m")
    
    // Convert it to scilab
    mfile2sci(TMPDIR + "/rot90.m",TMPDIR)
    
    // Show the new code
    `mgetl`_(TMPDIR + "/rot90.sci")
    
    // Load it into scilab
    `exec`_(TMPDIR+'/rot90.sci')
    
    // Execute it
    m=`rand`_(4,2);
    rot90(m,1)




See Also
~~~~~~~~


+ `translatepaths`_ convert a set of Matlab M-files directories to
  Scilab


.. _translatepaths: translatepaths.html


