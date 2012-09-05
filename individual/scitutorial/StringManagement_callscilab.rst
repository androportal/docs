


String management
=================

How to manage Scilab's String read and write process using call_scilab
and api_scilab



Description
~~~~~~~~~~~

This help describes how strings and matrix of strings can be handle
through the `Call Scilab API`_ and `api Scilab`_.

There are several functions which can be used to read / write from the
memory of Scilab. These functions are described in dedicated pages.

Note: Access to variables is done through `api Scilab`_ (named
variable).



Examples
~~~~~~~~


::

    // This example shows how to write a Scilab string in Scilab engine
    // It is the equivalent to A="my Message"; in Scilab interpretor
    // See: modules/call_scilab/examples/basicExamples/readwritestring.c
    
    // StartScilab
    `int`_ row = 1, col = 1; /* Size of the `matrix`_ */
    /* Declare the `string`_ */
    `char`_ **myMatrixOfString = (char**)malloc(sizeof(char*) * row * col);
    myMatrixOfString[0]="my Message";
    `char`_ variableName[] = "A";
    SciErr sciErr;
    
    /* Write it into Scilab's memory */
    sciErr = createNamedMatrixOfString(pvApiCtx, variableName, row, col, myMatrixOfString);
    if(sciErr.iErr)
    {
        printError(&sciErr, 0);
    }
    
    /*
     * Prior to Scilab 5.2
     * C2F(cwritechain)(variableName, &sizeOfMyString  , myString, strlen(variableName), sizeOfMyString); 
    */
    
    printf("Display from Scilab of A:\n");
    SendScilabJob("disp(A);"); /* Display A */



::

    /* Load the previously `set`_ variable A */
    // See: modules/call_scilab/examples/basicExamples/readwritestring.c
    
    `char`_ variableToBeRetrieved[]="A";
    `int`_ iRows       = 0;
    `int`_ iCols       = 0;
    `int`_ i,j;
    `int`_* piAddr     = NULL;
    `int`_* piLen      = NULL;
    `char`_** pstData  = NULL;
    SciErr sciErr;
    
    //fisrt call to retrieve dimensions
    sciErr = readNamedMatrixOfString(pvApiCtx,variableToBeRetrieved,&iRows, &iCols, NULL, NULL);
    if(sciErr.iErr)
    {
        printError(&sciErr, 0);
    }
    
    piLen = (`int`_*)malloc(sizeof(`int`_) * iRows * iCols);
    //second call to retrieve length of each string
    sciErr = readNamedMatrixOfString(pvApiCtx,variableToBeRetrieved, &iRows, &iCols, piLen, NULL);
    if(sciErr.iErr)
    {
        printError(&sciErr, 0);
    }
    
    pstData = (`char`_**)malloc(sizeof(`char`_*) * iRows * iCols);
    for(i = 0 ; i < iRows * iCols ; i++)
        {
            pstData[i] = (`char`_*)malloc(sizeof(`char`_) * (piLen[i] + 1));//+ 1 for null termination
        }
    //third call to retrieve data
    sciErr = readNamedMatrixOfString(pvApiCtx, variableToBeRetrieved, &iRows, &iCols, piLen, pstData);
    if(sciErr.iErr)
    {
        printError(&sciErr, 0);
    }
    
    printf("\n");
    printf("Load and display of A:\n");
    for(j = 0 ; j < iCols ; j++)
    {
        for(i = 0 ; i < iRows ; i++)
        {
            /* Display the formated `matrix`_ with same scilab indice */
            printf("[%d,%d] = %s\n",j+1,i+1,pstData[j* iRows + i]);
        }
    }
    
    printf("\n");
    free(piLen);
    for(i = 0 ; i < iRows * iCols ; i++)
        {
            free(pstData[i]);
        }
    free(pstData);




See Also
~~~~~~~~


+ `Call_Scilab`_ call_scilab is an interface which provides the
  ability to call Scilab engine from C/C++ code
+ `api Scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory
+ `SendScilabJob`_ Send a Scilab task from a C/C++ code (call_scilab)
+ `StartScilab`_ Initializes and starts Scilab engine in Call Scilab
+ `Call_Scilab: Boolean Management`_ How to manage Scilab's boolean
  read and write process using call_scilab and api_scilab
+ `Call_Scilab: Double Management`_ How to manage Scilab's variable
  read and write process using call_scilab and api_scilab
+ `API_Scilab: Boolean Reading`_ How to read matrix of boolean.
+ `API_Scilab: Boolean Writing`_ How to write matrices of boolean.
+ `API_Scilab: Double Reading`_ How to read matrices of double in a
  gateway.
+ `API_Scilab: Double Writing`_ How to write matrices of doubles in a
  gateway.
+ `Complex Management`_ How to manage Scilab's complex variable read
  and write process using call_scilab


.. _StartScilab: StartScilab.html
.. _Call_Scilab: Double Management: DoubleManagement_callscilab.html
.. _Call_Scilab: call_scilab.html
.. _Complex Management: ComplexManagement_callscilab.html
.. _api Scilab: api_scilab.html
.. _Call_Scilab: Boolean Management: BooleanManagement_callscilab.html
.. _API_Scilab: Boolean Reading: boolean_reading_API.html
.. _API_Scilab: Double Reading: Double_management_reading_API.html
.. _API_Scilab: Double Writing: Double_management_writing_API.html
.. _SendScilabJob: SendScilabJob.html
.. _API_Scilab: Boolean Writing: boolean_writing_API.html


