


Boolean management
==================

How to manage Scilab's boolean read and write process using
call_scilab and api_scilab



Description
~~~~~~~~~~~

This help describes how boolean and matrix of booleans can be handle
through the `Call Scilab API`_ and `api Scilab`_.

There are several functions which can be used to read / write from the
memory of Scilab. These functions are described in dedicated pages.

Note: Access to variables is done through `api Scilab`_ (named
variable).



Examples
~~~~~~~~


::

    /* 
     * Write a `matrix`_ of boolean into Scilab
     * B=[F F T F; 
     *    F F F T ]
     * Note that it is done column by column
     */ 
    `int`_ B[]={0,0,0,0,1,0,0,1};   /* Declare the `matrix`_ */
    `int`_ rowB=2, colB=4; /* Size of the `matrix`_ */
    `char`_ variableNameB[] = "B";
    SciErr sciErr;
    
    /* Write it into Scilab's memory */
    sciErr = createNamedMatrixOfBoolean(pvApiCtx, variableNameB, rowB, colB, B);
    if(sciErr.iErr)
    {
        printError(&sciErr, 0);
    }
    
    /*
     * Prior to Scilab 5.2:
     * C2F(cwritebmat)(variableNameB, &rowB, &colB, B, strlen(variableNameB)); 
     */
    
    printf("Display from Scilab of B:\n");
    SendScilabJob("disp(B);"); /* Display B */



::

    /* Read the previously declared `matrix`_ of boolean B */
    `int`_ rowB_ = 0, colB_ = 0, lp_ = 0;
    `int`_ i = 0, j = 0;
    `int`_ *matrixOfBooleanB = NULL; /* Int instead of `double`_ */
    
    `char`_ variableToBeRetrievedB[] = "B";
    SciErr sciErr;
    /* First, retrieve the `size`_ of the matrix */
    sciErr = readNamedMatrixOfBoolean(pvApiCtx, variableToBeRetrievedB, &rowB_, &colB_, NULL);
    if(sciErr.iErr)
    {
        printError(&sciErr, 0);
    }
    
    /*
     * Prior to Scilab 5.2:
     * C2F(cmatbptr)(variableToBeRetrievedB, &rowB_, &colB_, &lp_, strlen(variableToBeRetrievedB));
     */
    
    /* Alloc the memory */
    matrixOfBooleanB=(`int`_*)malloc((rowB_*colB_)*sizeof(`int`_));
    
    /* Load the `matrix`_ */
    sciErr = readNamedMatrixOfBoolean(pvApiCtx, variableToBeRetrievedB, &rowB_, &colB_, matrixOfBooleanB);
    if(sciErr.iErr)
    {
        printError(&sciErr, 0);
    }
    
    /*
     * Prior to Scilab 5.2:
     * C2F(creadbmat)(variableToBeRetrievedB,&rowB_,&colB_,matrixOfBooleanB,strlen(variableToBeRetrievedB) );
     */
    
    printf("\n");
    printf("Display from B formated (size: %d, %d):\n",rowB_, colB_);
    for(j = 0 ; j < rowB_ ; j++)
    {
     for(i = 0 ; i < colB_ ; i++)
     {
      /* Display the formated `matrix`_ ... the way the user expects */
      printf("%d ",matrixOfBooleanB[i * rowB_ + j]);
     }
     printf("\n"); /* New row of the `matrix`_ */
    }




See Also
~~~~~~~~


+ `api Scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory
+ `call_scilab`_ call_scilab is an interface which provides the
  ability to call Scilab engine from C/C++ code
+ `API_Scilab: Boolean reading`_ How to read matrix of boolean.
+ `API_Scilab: Boolean writing`_ How to write matrices of boolean.
+ `SendScilabJob`_ Send a Scilab task from a C/C++ code (call_scilab)
+ `StartScilab`_ Initializes and starts Scilab engine in Call Scilab
+ `Call_Scilab: Double Management`_ How to manage Scilab's variable
  read and write process using call_scilab and api_scilab
+ `Call_Scilab: Complex Management`_ How to manage Scilab's complex
  variable read and write process using call_scilab
+ `Call_Scilab: String Management`_ How to manage Scilab's String read
  and write process using call_scilab and api_scilab
+ `API_Scilab: Double Reading`_ How to read matrices of double in a
  gateway.
+ `API_Scilab: Double Writing`_ How to write matrices of doubles in a
  gateway.
+ `API_Scilab: String Reading`_ How to read matrices of strings in a
  gateway.
+ `API_Scilab: String Writing`_ How to write matrices of string in a
  gateway.


.. _Call_Scilab: String Management: StringManagement_callscilab.html
.. _API_Scilab: Boolean writing: boolean_writing_API.html
.. _Call_Scilab: Double Management: DoubleManagement_callscilab.html
.. _call_scilab: call_scilab.html
.. _API_Scilab: String Reading: String_management_reading_API.html
.. _api Scilab: api_scilab.html
.. _Call_Scilab: Complex Management: ComplexManagement_callscilab.html
.. _API_Scilab: String Writing: String_management_writing_API.html
.. _API_Scilab: Boolean reading: boolean_reading_API.html
.. _API_Scilab: Double Reading: Double_management_reading_API.html
.. _API_Scilab: Double Writing: Double_management_writing_API.html
.. _SendScilabJob: SendScilabJob.html
.. _StartScilab: StartScilab.html


