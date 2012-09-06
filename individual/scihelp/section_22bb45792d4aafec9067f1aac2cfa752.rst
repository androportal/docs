


API Scilab
~~~~~~~~~~


+ `boolean`_

    + `isBooleanType`_ Check if it is a boolean variable.
    + `getScalarBoolean`_ Read scalar boolean data from a gateway
      argument.
    + `createScalarBoolean`_ Create scalar boolean variable in Scilab
      memory.
    + `booleanExample`_ Boolean use case.

+ `Boolean Sparse`_

    + `isBooleanSparseType`_ Check if it is a boolean sparse variable.
    + `getAllocatedBooleanSparseMatrix`_ Get sparse matrix attributs.
    + `freeAllocatedBooleanSparse`_ Free memory allocated by
      getAllocatedBooleanSparseMatrix function.
    + `booleanSparseExample`_ Boolean sparse use case.

+ `Scilab Gateway API`_

    + `How to`_

        + `CallingAScilabFunctionFromACInterface`_ Calling a scilab function
          (macros) from a C interface

    + `CheckLhs`_ C macro which checks the number of output arguments
      present in the calling Scilab function.
    + `CheckRhs`_ C macro which checks the number of input arguments
      present in the calling Scilab function.
    + `Lhs`_ A C gateway function which provides the number of output
      arguments present in the calling Scilab function
    + `LhsVar`_ a C gateway function which specifies which parameters
      created inside the C gateway will be returned as an output argument
      into Scilab.
    + `Rhs`_ A C gateway function which provides the number of input
      arguments present in the calling Scilab function
    + `Scierror`_ C gateway function which displays an error message to
      the user (same profil as the printf function) and returns an integer
      value specifying an error level
    + `sci_types`_ a C enumeration which defines the types available for a
      variable
    + `sciprint`_ A C gateway function which displays standard messages to
      the user (same profil as the C printf function)

+ `double`_

    + `isDoubleType`_ Check if it is a double variable.
    + `getScalarDouble`_ Get scalar double variable.
    + `getScalarComplexDouble`_ Get scalar complex double variable.
    + `createScalarDouble`_ Create a scalar double in Scilab memory.
    + `createScalarComplexDouble`_ Create a scalar complex double in
      Scilab memory.
    + `doubleExample`_ Double use case.

+ `integer`_

    + `isIntegerType`_ Check if it is a double variable.
    + `getScalarInteger8`_ Get scalar integer variable.
    + `createScalarInteger8`_ Create scalar integer variable.
    + `integerExample`_ Integer use case.

+ `List manipulation`_

    + `isListType`_ Check if it is a list, mlist, tlist variable.
    + `list_boolean_reading_API`_ How to read matrix of boolean in a list.
    + `list_boolean_writing_API`_ How to add matrix of boolean in a list.
    + `list_bsparse_reading_API`_ How to read boolean sparse in a list.
    + `list_bsparse_writing_API`_ How to add boolean sparse matrix in a
      list.
    + `list_createlist_API`_ How to get create a list in Scilab memory.
    + `list_double_reading_API`_ How to read matrix of double in a list.
    + `list_double_writing_API`_ How to add matrix of double in a list.
    + `list_getlistitemaddress_API`_ How to get the address of a list
      child.
    + `list_getlistitemnumber_API`_ How to get the number of items in a
      list (list, mlist, tlist).
    + `list_integer_reading_API`_ How to read matrix of integer in a list.
    + `list_integer_writing_API`_ How to add matrix of integer in a list.
    + `list_pointer_reading_API`_ How to read pointer in a list.
    + `list_pointer_writing_API`_ How to add pointer in a list.
    + `list_poly_reading_API`_ How to read matrix of polynomial in a list.
    + `list_poly_writing_API`_ How to add matrix of polynomial in a list.
    + `list_sparse_reading_API`_ How to read sparse in a list.
    + `list_sparse_writing_API`_ How to add sparse matrix in a list.
    + `list_string_reading_API`_ How to read matrix of string in a list.
    + `list_string_writing_API`_ How to add matrix of string in a list.

+ `Low level functions`_

    + `AssignOutputVariable`_ a C gateway function which specifies which
      parameters created inside the C gateway will be returned as an output
      argument into Scilab.
    + `CallOverloadFunction`_ a C gateway function uses to call overload
      function or macro
    + `CheckInputArgument`_ C function which checks the number of input
      arguments present in the calling Scilab function.
    + `CheckOutputArgument`_ C function which checks the number of output
      arguments present in the calling Scilab function.
    + `ReturnArguments`_ A C gateway function which returns the various
      variables.
    + `boolean_reading_API`_ How to read matrix of boolean.
    + `boolean_writing_API`_ How to write matrices of boolean.
    + `bsparse_reading_API`_ How to read boolean sparse in a gateway.
    + `bsparse_writing_API`_ How to add boolean sparse matrix in a
      gateway.
    + `check_matrix_dimension`_ A C gateway functions which check
      dimensions of a variable.
    + `Common_getvaraddr_API`_ How to get the address of an argument or a
      variable in a gateway.
    + `Common_getvardimension_API`_ How to get the dimensions of an
      argument or a variable stored as matrix.
    + `Common_getvartype_API`_ How to get the type of an argument or a
      variable within a gateway.
    + `Common_iscomplex_API`_ How to get the argument or variable
      complexity.
    + `Common_isvarmatrixtype_API`_ How to know if an argument or a
      variable is stored as a matrix.
    + `deleteNamedVariable`_ a C gateway function uses to delete a
      variable from name
    + `Double_management_reading_API`_ How to read matrices of double in a
      gateway.
    + `Double_management_writing_API`_ How to write matrices of doubles in
      a gateway.
    + `getNbInputArgument`_ A C gateway function which provides the number
      of input arguments present in the calling Scilab function
    + `getNbOutputArgument`_ A C gateway function which provides the
      number of output arguments present in the calling Scilab function
    + `int_getmatrixofintegerprecision_API`_ How to get precision of an
      integer matrix.
    + `Integer_management_reading_API`_ How to read matrices of integer in
      a gateway.
    + `Integer_management_writing_API`_ How to write matrices of integers
      in a gateway.
    + `Pointer_reading_API`_ How to read pointer in a gateway.
    + `Pointer_writing_API`_ How to write pointer in a gateway.
    + `poly_getpolyvariablename_API`_ How to get the symbolic variable
      name.
    + `Polynomial_management_reading_API`_ How to read matrices of
      polynomials in a gateway.
    + `Polynomial_management_writing_API`_ How to write matrices of
      polynomials in a gateway.
    + `Sparse_management_reading_API`_ How to read sparse matrices in a
      gateway.
    + `Sparse_management_writing_API`_ How to write sparse matrix in a
      gateway.
    + `String_management_reading_API`_ How to read matrices of strings in
      a gateway.
    + `String_management_writing_API`_ How to write matrices of string in
      a gateway.

+ `polynomial`_

    + `isPolyType`_ Check if it is a polynomial variable.
    + `getAllocatedSinglePoly`_ Get single polynomial variable.
    + `getAllocatedSingleComplexPoly`_ Get single complex polynomial
      variable.
    + `getAllocatedMatrixOfPoly`_ Get matrix of polynomial variable.
    + `getAllocatedMatrixOfComplexPoly`_ Get matrix of complex polynomial
      variable.
    + `freeAllocatedSinglePoly`_ Free memory allocated by
      getAllocatedSinglePoly function.
    + `freeAllocatedSingleComplexPoly`_ Free memory allocated by
      getAllocatedSingleComplexPoly function.
    + `freeAllocatedMatrixOfPoly`_ Free memory allocated by
      getAllocatedSinglePoly function.
    + `freeAllocatedMatrixOfComplexPoly`_ Free memory allocated by
      getAllocatedSinglePoly function.
    + `polyExample`_ Polynom use case.

+ `sparse`_

    + `isSparseType`_ Check if it is a sparse variable.
    + `getAllocatedSparseMatrix`_ Get sparse matrix variable.
    + `getAllocatedComplexSparseMatrix`_ Get complex sparse matrix
      variable.
    + `freeAllocatedSparseMatrix`_ Free memory allocated by
      getAllocatedSparseMatrix function.
    + `freeAllocatedComplexSparseMatrix`_ Free memory allocated by
      getAllocatedComplexSparseMatrix function.
    + `sparseExample`_ Sparse use case.

+ `string`_

    + `isStringType`_ Check if it is a string variable.
    + `getAllocatedSingleString`_ Get single string variable.
    + `getAllocatedMatrixOfString`_ Get matrix of string variable.
    + `createSingleString`_ create a single string variable.
    + `freeAllocatedSingleString`_ Free memory allocated by
      getAllocatedSinglePoly function.
    + `freeAllocatedMatrixOfString`_ Free memory allocated by
      freeAllocatedMatrixOfString function.
    + `stringExample`_ String use case.

+ `api_scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory
+ `api_scilab_getting_started`_ How to load a C, C++ or fortran code
  in the Scilab engine as a new function


.. _createScalarInteger8: createScalarInteger8.html
.. _list_pointer_writing_API: list_pointer_writing_API.html
.. _deleteNamedVariable: deleteNamedVariable.html
.. _Rhs: Rhs.html
.. _Common_getvartype_API: Common_getvartype_API.html
.. _boolean_reading_API: boolean_reading_API.html
.. _freeAllocatedComplexSparseMatrix: freeAllocatedComplexSparseMatrix.html
.. _polynomial: section_74dc8c59f2e04f6dfe1f3c5000f9cf00.html
.. _list_bsparse_reading_API: list_bsparse_reading_API.html
.. _list_double_writing_API: list_double_writing_API.html
.. _Lhs: Lhs.html
.. _Integer_management_reading_API: Integer_management_reading_API.html
.. _createScalarBoolean: createScalarBoolean.html
.. _Low level functions: section_35082c0c82a3e209d74d06a02e1cc382.html
.. _list_poly_writing_API: list_poly_writing_API.html
.. _Scierror: Scierror.html
.. _bsparse_writing_API: bsparse_writing_API.html
.. _sciprint: sciprint.html
.. _integer: section_ebce74f6ed7547252ba6f18ecee955dc.html
.. _isBooleanType: isBooleanType.html
.. _freeAllocatedSinglePoly: freeAllocatedSinglePoly.html
.. _doubleExample: doubleExample.html
.. _list_getlistitemaddress_API: list_getlistitemaddress_API.html
.. _Common_getvardimension_API: Common_getvardimension_API.html
.. _boolean_writing_API: boolean_writing_API.html
.. _getAllocatedComplexSparseMatrix: getAllocatedComplexSparseMatrix.html
.. _AssignOutputVariable: AssignOutputVariable.html
.. _List manipulation: section_83d0f114f02f02653725f7a4d4fdbd72.html
.. _polyExample: polyExample.html
.. _integerExample: integerExample.html
.. _freeAllocatedMatrixOfComplexPoly: freeAllocatedMatrixOfComplexPoly.html
.. _list_double_reading_API: list_double_reading_API.html
.. _CheckRhs: CheckRhs.html
.. _Pointer_writing_API: Pointer_writing_API.html
.. _Integer_management_writing_API: Integer_management_writing_API.html
.. _boolean: section_a67ef8db90b71526457f25ee51f5325b.html
.. _Sparse_management_reading_API: Sparse_management_reading_API.html
.. _isSparseType: isSparseType.html
.. _list_sparse_reading_API: list_sparse_reading_API.html
.. _Common_getvaraddr_API: Common_getvaraddr_API.html
.. _freeAllocatedSparseMatrix: freeAllocatedSparseMatrix.html
.. _list_createlist_API: list_createlist_API.html
.. _check_matrix_dimension: check_matrix_dimension.html
.. _string: section_3d8f654dcb037b1052edb7b8089fd21d.html
.. _getAllocatedSinglePoly: getAllocatedSinglePoly.html
.. _sci_types: sci_types.html
.. _Boolean Sparse: section_82bb08bf7c3ba2571a30615c80fff84c.html
.. _Double_management_writing_API: Double_management_writing_API.html
.. _getNbOutputArgument: getNbOutputArgument.html
.. _Common_iscomplex_API: Common_iscomplex_API.html
.. _getScalarComplexDouble: getScalarComplexDouble.html
.. _list_string_reading_API: list_string_reading_API.html
.. _createScalarComplexDouble: createScalarComplexDouble.html
.. _double: section_6a7221af202e5a72f2dc870be57e7abc.html
.. _freeAllocatedMatrixOfPoly: freeAllocatedMatrixOfPoly.html
.. _String_management_writing_API: String_management_writing_API.html
.. _isListType: isListType.html
.. _CheckInputArgument: CheckInputArgument.html
.. _list_boolean_writing_API: list_boolean_writing_API.html
.. _freeAllocatedBooleanSparse: freeAllocatedBooleanSparse.html
.. _getScalarDouble: getScalarDouble.html
.. _How to: section_f4c0046e94e1db84a36d793fd8cb58c2.html
.. _getAllocatedSingleString: getAllocatedSingleString.html
.. _Sparse_management_writing_API: Sparse_management_writing_API.html
.. _stringExample: stringExample.html
.. _getScalarBoolean: getScalarBoolean.html
.. _CallingAScilabFunctionFromACInterface: CallingAScilabFunctionFromACInterface.html
.. _Scilab Gateway API: section_e56385980798411b94d297d989499642.html
.. _getAllocatedSparseMatrix: getAllocatedSparseMatrix.html
.. _list_string_writing_API: list_string_writing_API.html
.. _getScalarInteger8: getScalarInteger8.html
.. _api_scilab: api_scilab.html
.. _Polynomial_management_reading_API: Polynomial_management_reading_API.html
.. _bsparse_reading_API: bsparse_reading_API.html
.. _CheckLhs: CheckLhs.html
.. _getAllocatedBooleanSparseMatrix: getAllocatedBooleanSparseMatrix.html
.. _getAllocatedMatrixOfString: getAllocatedMatrixOfString.html
.. _createSingleString: createSingleString.html
.. _list_integer_reading_API: list_integer_reading_API.html
.. _Polynomial_management_writing_API: Polynomial_management_writing_API.html
.. _list_bsparse_writing_API: list_bsparse_writing_API.html
.. _isStringType: isStringType.html
.. _int_getmatrixofintegerprecision_API: int_getmatrixofintegerprecision_API.html
.. _getAllocatedSingleComplexPoly: getAllocatedSingleComplexPoly.html
.. _freeAllocatedMatrixOfString: freeAllocatedMatrixOfString.html
.. _getAllocatedMatrixOfPoly: getAllocatedMatrixOfPoly.html
.. _isDoubleType: isDoubleType.html
.. _CallOverloadFunction: CallOverloadFunction.html
.. _String_management_reading_API: String_management_reading_API.html
.. _api_scilab_getting_started: api_scilab_getting_started.html
.. _CheckOutputArgument: CheckOutputArgument.html
.. _getAllocatedMatrixOfComplexPoly: getAllocatedMatrixOfComplexPoly.html
.. _Double_management_reading_API: Double_management_reading_API.html
.. _list_getlistitemnumber_API: list_getlistitemnumber_API.html
.. _list_boolean_reading_API: list_boolean_reading_API.html
.. _freeAllocatedSingleString: freeAllocatedSingleString.html
.. _booleanSparseExample: booleanSparseExample.html
.. _Pointer_reading_API: Pointer_reading_API.html
.. _sparse: section_0abddeeb6ab9673004367c36a3db5c0a.html
.. _Common_isvarmatrixtype_API: Common_isvarmatrixtype_API.html
.. _createScalarDouble: createScalarDouble.html
.. _LhsVar: LhsVar.html
.. _booleanExample: booleanExample.html
.. _list_sparse_writing_API: list_sparse_writing_API.html
.. _isBooleanSparseType: isBooleanSparseType.html
.. _list_pointer_reading_API: list_pointer_reading_API.html
.. _poly_getpolyvariablename_API: poly_getpolyvariablename_API.html
.. _ReturnArguments: ReturnArguments.html
.. _getNbInputArgument: getNbInputArgument.html
.. _sparseExample: sparseExample.html
.. _isPolyType: isPolyType.html
.. _freeAllocatedSingleComplexPoly: freeAllocatedSingleComplexPoly.html
.. _list_poly_reading_API: list_poly_reading_API.html
.. _list_integer_writing_API: list_integer_writing_API.html
.. _isIntegerType: isIntegerType.html


