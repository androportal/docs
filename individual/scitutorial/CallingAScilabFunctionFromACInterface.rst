


Calling a scilab function (macros) from a C gateway
===================================================

Calling a scilab function (macros) from a C interface



Calling a scilab function (macros) from a C interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

WARNING: This API is deprecated from Scilab 5.2.0 and is going to be
removed with Scilab 6.0. Please use `API Scilab`_ (the new Scilab
API).

When you write a interface with scilab, you can need to call another
function directly from your function. You can pass a pointer on scilab
function to your function.

The source files of this example are stored in the directory
examples/call_scifunction.

How to use this example:


::

    `exec`_ call_scifunction.sce; // launch scilab 
    v = call_scifunc(30,12,scilabfoo);


you pass a pointer on a scilab function (scilabfoo macro) to your
function 'call_scifunc'.

C2F(scifunction) calls another scilab function (here scilabfoo).

You need to indicate :


+ position of the first element (Rhs) in the Scilab memory
+ pointer on scilab function
+ number of Lhs (output of scilab function called)
+ number of Rhs (input of scilab function called)


The script call_scifunction.sce used to build and load the C interface
into Scilab is the following:


::

    files=['sci_call_scifunc.c']; // Defines the list of file
    `ilib_build`_('callscifunc',['call_scifunc','sci_call_scifunc'],files,[]); // Build the files and creates the loader
    
    `exec`_ loader.sce;
    
    function r=scilabfoo(x, y)
      r = x + y;
    endfunction
    
    v = call_scifunc(30,12,scilabfoo);
    `disp`_('result : ' + `string`_(v));
    
    v = call_scifunc(300,120,scilabfoo);
    `disp`_('result : ' + `string`_(v));
    
    `ulink`_(); // unload the dynamic library


The file sci_call_scifunc.c is the following:


::

    #include "stack-c.h"
    #include "Scierror.h"
    #include "localization.h"
    
    #error This code is deprecated
    
    int sci_call_scifunc(char *fname) 
    {
      int m1    = 0, n1    = 0, l1    = 0;
      int m2    = 0, n2    = 0, l2    = 0;
      int m3    = 0, n3    = 0, l3    = 0;
      int rm1   = 0, rn1   = 0, rl1   = 0;
      int m_out = 1, n_out = 1, l_out = 0;
      double v1 = 0, v2 = 0, r = 0;
      int positionFirstElementOnStackForScilabFunction = 0;
      int numberOfRhsOnScilabFunction = 0;
      int numberOfLhsOnScilabFunction = 0;
      int pointerOnScilabFunction     = 0;
            
      CheckRhs(3,3);
      CheckLhs(1,1);
            
      if (GetType(1) != sci_matrix)
      {
        Scierror(999,_("%s: Wrong type for input argument #%d: A real expected.\n"),fname,1);
        return 0;
      }
            
      GetRhsVar(1, MATRIX_OF_DOUBLE_DATATYPE, &m1, &n1, &l1);
      if ( (m1 == n1) && (n1 == 1) )
      {
        v1 = *stk(l1);
      }
      else
      {
        Scierror(999,_("%s: Wrong size for input argument #%d: A scalar expected.\n"),fname,1);
        return 0;
      }
      
      if (GetType(2) != sci_matrix)
      {
        Scierror(999,_("%s: Wrong type for input argument #%d: A real expected.\n"),fname,2);
        return 0;
      }
      
      GetRhsVar(2, MATRIX_OF_DOUBLE_DATATYPE, &m2, &n2, &l2);
      if ( (m2 == n2) && (n2 == 1) )
      {
        v2 = *stk(l2);
      }
      else
      {
        Scierror(999,_("%s: Wrong size for input argument #%d: A scalar expected.\n"),fname,2);
        return 0;
      }
      
      if (GetType(3) != sci_c_function)
      {
        Scierror(999,_("%s: Wrong type for input argument #%d: A scilab function expected.\n"),fname,3);
        return 0;
      }
      
      // get pointer on external function (here scilabfoo)
      GetRhsVar(3, EXTERNAL_DATATYPE, &m3, &n3, &l3);
            
      // r = scilabfoo(x, y)  
      // rhs eq. 2
      // lhs eq. 1
            
      // Position first element in the Scilab memory to use by Scilab Function 
      // v = call_scifunc(300,120,scilabfoo);
      // On stack : 300 is on Top position (1)
      // 120 second position
      // scilabfoo third position
      // we want to pass 300 & 120 to scilab Function
      // First position is here : 1
            
      positionFirstElementOnStackForScilabFunction = 1;
      numberOfRhsOnScilabFunction = 2;
      numberOfLhsOnScilabFunction = 1;
      pointerOnScilabFunction     = l3;
    
      // r = scilabfoo(x, y)  
      // Scifunction call a scilab function
      Scifunction(&positionFirstElementOnStackForScilabFunction,
                  &pointerOnScilabFunction,
                  &numberOfLhsOnScilabFunction,
                  &numberOfRhsOnScilabFunction);  
    
      // result r is now on position positionFirstElementOnStackForScilabFunction on stack
      GetRhsVar(1, MATRIX_OF_DOUBLE_DATATYPE, &rm1, &rn1, &rl1);
      r = *stk(rl1);
            
      CreateVar(Rhs+1, MATRIX_OF_DOUBLE_DATATYPE, &m_out, &n_out, &l_out);
      *stk(l_out) = r;
      
      LhsVar(1) = Rhs + 1;
      
      return 0;
    }


The main function in this C file is Scifunction. It allows to call a
Scilab function inside a C interface.



See Also
~~~~~~~~


+ `Scierror`_ C gateway function which displays an error message to
  the user (same profil as the printf function) and returns an integer
  value specifying an error level
+ `sci_types`_ a C enumeration which defines the types available for a
  variable


.. _sci_types: sci_types.html
.. _Scierror: Scierror.html
.. _API Scilab: api_scilab.html


