


Double management
=================

How to manage Scilab's variable read and write process using
call_scilab and api_scilab



Description
~~~~~~~~~~~

This help describes how doubles and matrix of doubles can be handle
through the `Call Scilab API`_ and `api Scilab`_.

There are several functions which can be used to read / write from the
memory of Scilab. These functions are described in dedicated pages.

Note that the default type of a numeric value in Scilab is double. For
example, in *a=1* or *a=[1,2]*, *a* will be consider as a double.

Note: Access to variables is done through `api Scilab`_ (named
variable).



Examples
~~~~~~~~


::

    /* 
     * Write a `matrix`_ into Scilab
     * B=[1 4 2 3; 
     *    3 9 8 2 ]
     * Note that it is done column by column
     */ 
    `double`_ B[] = {1,3,4,9,2,8,3,2};   /* Declare the `matrix`_ */
    `int`_ rowB = 2, colB = 4; /* Size of the `matrix`_ */
    `char`_ variableNameB[] = "B";
    SciErr sciErr;
    
    /*
     * Write it into Scilab's memory 
     */
    sciErr = createNamedMatrixOfDouble(pvApiCtx,variableNameB,rowB,colB, B); /* pvApiCtx is a `global`_ variable */
    if(sciErr.iErr)
    {
        printError(&sciErr, 0);
    }
    
    /*
     * Prior to Scilab 5.2:
     * C2F(cwritemat)(variableNameB, &rowB, &colB, B, strlen(variableNameB));
    */
    
    printf("\n");
    printf("Display from Scilab of B:\n");
    SendScilabJob("disp(B);"); /* Display B */



::

    /* Read the previously declared `matrix`_ of double B */
    `int`_ rowB_ = 0, colB_ = 0, lp_ = 0;
    `double`_ *matrixOfDoubleB = NULL;
    `int`_ i = 0, j = 0;
    `char`_ variableToBeRetrievedB[] = "B";
    SciErr sciErr;
    
    /* First, retrieve the `size`_ of the matrix */
    sciErr = readNamedMatrixOfDouble(pvApiCtx, variableToBeRetrievedB, &rowB_, &colB_, NULL);
    if(sciErr.iErr)
    {
        printError(&sciErr, 0);
    }
    
    /* 
     * Prior to Scilab 5.2:
     * C2F(cmatptr)(variableToBeRetrievedB, &rowB_, &colB_, &lp_, strlen(variableToBeRetrievedB));
     */
    
    /* Alloc the memory */
    matrixOfDoubleB = (`double`_*)malloc((rowB_*colB_)*sizeof(`double`_));
    
    /* Load the `matrix`_ */
    sciErr = readNamedMatrixOfDouble(pvApiCtx, variableToBeRetrievedB, &rowB_, &colB_, matrixOfDoubleB);
    if(sciErr.iErr)
    {
        printError(&sciErr, 0);
    }
    
    /* 
     * Prior to Scilab 5.2:
     * C2F(creadmat)(variableToBeRetrievedB,&rowB_,&colB_,matrixOfDoubleB,strlen(variableToBeRetrievedB) );
     */
    
    printf("\n");
    printf("Display from B formated (size: %d, %d):\n",rowB_, colB_);
    for(j = 0 ; j < rowB_ ; j++)
     {
      for(i = 0 ; i < colB_ ; i++)
       {
        /* Display the formated `matrix`_ ... the way the user
         * expect */
        printf("%5.2f ",matrixOfDoubleB[i * rowB_ + j]);
       }
      printf("\n"); /* New row of the `matrix`_ */
     }




See Also
~~~~~~~~


+ `Call_Scilab`_ call_scilab is an interface which provides the
  ability to call Scilab engine from C/C++ code
+ `api Scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory
+ `API_Scilab: Double reading`_ How to read matrices of double in a
  gateway.
+ `API_Scilab: Double writing`_ How to write matrices of doubles in a
  gateway.
+ `SendScilabJob`_ Send a Scilab task from a C/C++ code (call_scilab)
+ `StartScilab`_ Initializes and starts Scilab engine in Call Scilab
+ `Call_Scilab: BooleanManagement`_ How to manage Scilab's boolean
  read and write process using call_scilab and api_scilab
+ `Call_Scilab: ComplexManagement`_ How to manage Scilab's complex
  variable read and write process using call_scilab
+ `Call_Scilab: StringManagement`_ How to manage Scilab's String read
  and write process using call_scilab and api_scilab
+ `API_Scilab: Boolean Reading`_ How to read matrix of boolean.
+ `API_Scilab: Boolean Writing`_ How to write matrices of boolean.
+ `API_Scilab: String Reading`_ How to read matrices of strings in a
  gateway.
+ `API_Scilab: String Writing`_ How to write matrices of string in a
  gateway.


.. _StartScilab: StartScilab.html
.. _Call_Scilab: call_scilab.html
.. _API_Scilab: Boolean Reading: boolean_reading_API.html
.. _API_Scilab: String Reading: String_management_reading_API.html
.. _api Scilab: api_scilab.html
.. _Call_Scilab: BooleanManagement: BooleanManagement_callscilab.html
.. _API_Scilab: String Writing: String_management_writing_API.html
.. _Call_Scilab: StringManagement: StringManagement_callscilab.html
.. _API_Scilab: Double reading: Double_management_reading_API.html
.. _API_Scilab: Boolean Writing: boolean_writing_API.html
.. _API_Scilab: Double writing: Double_management_writing_API.html
.. _SendScilabJob: SendScilabJob.html
.. _Call_Scilab: ComplexManagement: ComplexManagement_callscilab.html


