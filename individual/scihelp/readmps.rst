


readmps
=======

Reads a Linear Program from a MPS file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mps= readmps (file-name, bounds);
    mps= readmps (file-name, bounds,maxsizes);




Arguments
~~~~~~~~~

:file-name a string, the name of the mps file
: :bounds 2-vector `[lowbound,upbound]` , default lower and upper
  bounds
: :maxsizes 3-vector `[maxm,maxn,maxnza]` Maximum number of
  constraints and variables, maximum number of nonzeros entries in the
  LP constraint matrix. If omitted readmps reads the file once just to
  compute these numbers.
: :mps a tlist, with type "mps" and with following fields
    :irobj integer (index of the objective row).
    : :namec character string (Name of the objective).
    : :nameb character string (Name of the right hand side).
    : :namran character string (Name of the ranges section).
    : :nambnd character string (Name of the bounds section).
    : :name character string (Name of the LP problem).
    : :rownames character string column vector (Name of the rows).
    : :colnames character string row vector (Name of the columns).
    : :rowstat integer vector, row types:
        :1 row type is "="
        : :2 row type is ">="
        : :3 row type is "<="
        : :4 objective row
        : :5 other free row
        :

    : :rowcode real matrix `[hdrowcd,lnkrow]` with
        :hdrowcd real vector (Header to the linked list of rows with the same
          codes).
        : :lnkrow integer vector (Linked list of rows with the same codes).
        :

    : :colcode real matrix `[hdcolcd,lnkcol]` with
        :hdcolcd integer vector (Header to the linked list of columns with the
          same codes).
        : :lnkcol integer vector (Linked list of columns with the same codes).
        :

    : :rownmbs integer vector (Row numbers of nonzeros in columns of
      matrix A.)
    : :colpnts integer vector (Pointers to the beginning of columns of
      matrix A).
    : :acoeff real vector (Array of nonzero elements for each column).
    : :rhs real vector ( Right hand side of the linear program).
    : :ranges real vector of constraint ranges.
    : :bounds real matrix `[lbounds,ubounds]` with
        :ubounds full column vector of upper bounds
        : :lbounds full column vector of lower bounds
        :

    : :stavar full column vector of variable status
        :0 standard (non negative) variable
        : :1 upper bounded variable
        : :2 lower bounded variable
        : :3 lower and upper bounded variable
        : :4 minus infinity type variable i.e -inf<x<=u
        : :5 plus infinity type variable i.e l<=x< inf
        : :6 fixed type variable i.e l=x=u
        : :-k free variable
        :

    :

:



Description
~~~~~~~~~~~

Reads a file containing description of an LP problem given in MPS
format and returns a `tlist` which describes the problem.

MPS format is a standard ASCII medium for Linear Programs. MPS format
is described in more detail in Murtagh's book "Advanced Linear
Programming".



Examples
~~~~~~~~


::

    //Let the LP problem:
    //objective:
    //   min     XONE + 4 YTWO + 9 ZTHREE
    //constraints:
    //  LIM1:    XONE +   YTWO            < = 5
    //  LIM2:    XONE +            ZTHREE > = 10
    // MYEQN:         -   YTWO  +  ZTHREE   = 7
    //Bounds
    //  0 < = XONE < = 4
    // -1 < = YTWO < = 1
    
    path = `fullfile`_(SCI,"modules","optimization","tests","unit_tests");
    filename = `fullfile`_(path,"test1.mps");
    //Read the MPS file
    P=readmps(filename,[0 10^30])
    `disp`_(P)
    //
    // Loads the 25FV47 problem.
    // An LP, contributed by John Reid.
    // Source: The NETLIB collection of test problems.
    path = `fullfile`_(SCI,"modules","optimization","tests","unit_tests");
    filename = `fullfile`_(path,"25FV47.SIF");
    huge = `number_properties`_("huge");
    P=readmps(filename,[-huge huge])




Implementation notes
~~~~~~~~~~~~~~~~~~~~

This function provides an interface to the program `rdmps1.f` of hopdm
(J. Gondzio).



References
~~~~~~~~~~

"Advanced Linear Programming", Murtagh B. (1981). McGrew-Hill, New
York, 1981.



