


error_table
===========

table of error messages



Description
~~~~~~~~~~~

This page gives the table of the predefined error messages, and their
associated error number. Some of these error messages are used by
Scilab itself for parser errors or specific builtin errors. Some
others are of a more general use and can be used in Scilab functions.
The starred one are those for which the syntax `error(n,pos)` is
handled.

1 "Incorrect assignment."

2 "Invalid factor."

3 "Waiting for right parenthesis."

4 "Undefined variable: %s"

5 "Inconsistent column/row dimensions."

6 "Inconsistent row/column dimensions."

7 "Dot cannot be used as modifier for this operator."

8 "Inconsistent addition."

9 "Inconsistent subtraction."

10 "Inconsistent multiplication."

11 "Inconsistent right division."

12 "Inconsistent left division."

13 "Redefining permanent variable."

14 "Eye variable undefined in this context."

15 "Submatrix incorrectly defined."

16 "Incorrect command!"

17 "stack size exceeded! Use stacksize function to increase it."

18 "Too many variables!"

19 "Problem is singular."

* 20 "Wrong type for argument %d: Square matrix expected."

21 "Invalid index."

22 "Recursion problems. Sorry..."

23 "Matrix norms available are 1, 2, inf, and fro."

24 "Convergence problem..."

25 "Bad call to primitive: %s"

26 "Too complex recursion! (recursion tables are full)"

27 "Division by zero..."

28 "Empty function..."

29 "Matrix is not positive definite."

30 "Invalid exponent."

31 "Incorrect string."

32 "singularity of log or tan function"

33 "too many "":"""

34 "Incorrect control intruction syntax."

34 "Syntax error in a '%s' instruction." (if,while,select/case)

* 36 "Wrong input argument %d."

* 37 "Incorrect function at line %d."

38 "Wrong file name."

39 "Incorrect number of input arguments."

40 "Waiting for end of command."

41 "Incompatible output argument."

42 "Incompatible input argument."

43 "Not implemented in scilab..."

* 44 "Wrong argument %d."

* 45 "null matrix (argument # %d)."

46 "Incorrect syntax."

47 " end or else is missing..."

* 48 " input line longer than buffer size: %d"

49 "Incorrect file or format."

50 "subroutine not found: %s"

* 52 "Wrong type for argument %d: Real matrix expected."

* 53 "Wrong type for input argument %d: Real or complex matrix
expected."

* 54 "Wrong type for input argument %d: Polynomial expected."

* 55 "Wrong type for argument %d: String expected."

* 56 "Wrong type for argument %d: List expected."

57 "Problem with comparison symbol..."

58 "Function has no input argument..."

59 "Function has no output."

60 "Wrong size for argument: Incompatible dimensions."

61 "Direct access : give format."

* 62 "End of file at line %d."

* 63 "%d graphic terminal?"

64 "Integration fails."

* 65 "%d: logical unit already used."

66 "No more logical units available!"

67 "Unknown file format."

68 "Fatal error!!! Your variables have been saved in the file : %s"

69 "Floating point exception."

70 "Too many arguments in fort (max 30)."

71 "This variable is not valid in fort."

72 "%s is not valid in this context."

73 "Error while linking."

74 "Leading coefficient is zero."

75 "Too high degree (max 100)."

* 76 "for x=val with type(val)=%d is not implemented in Scilab."

77 "%s: Wrong number of input arguments."

78 "%s: Wrong number of output arguments."

79 "Indexing not allowed for output arguments of resume."

80 "Incorrect function (argument n: %d)."

81 "%s: Wrong type for argument %d: Real or complex matrix expected."

82 "%s: Wrong type for argument %d: Real matrix expected."

83 "%s: Wrong type for argument %d: Real vector expected."

84 "%s: Wrong type for argument %d: Scalar expected."

85 "Host does not answer..."

86 "Uncontrollable system."

87 "Unobservable system."

88 "sfact: singular or asymmetric problem."

* 89 "Wrong size for argument %d."

* 90 "Wrong type for argument %d: Transfer matrix expected."

* 91 "Wrong type for argument %d: In state space form expected."

* 92 "Wrong type for argument %d: Rational matrix expected."

* 93 "Wrong type for argument %d: In continuous time expected."

* 94 "Wrong type for argument %d: In discrete time expected."

* 95 "Wrong type for argument %d: SISO expected."

* 96 "time domain of argument %d is not defined."

* 97 "Wrong type for argument %d: A system in state space or transfer
matrix form expected."

98 "Variable returned by scilab argument function is incorrect."

* 99 "Elements of %dth argument must be in increasing order."

* 100 "Elements of %dth argument are not in (strictly) decreasing
order."

* 101 "Last element of %dth argument <> first."

102 "Variable or function %s are not in file."

103 "Variable %s is not a valid rational function."

104 "Variable %s is not a valid state space representation."

105 "Undefined function."

106 "Function name already used."

* 107 "Too many functions are defined (maximum #:%d)."

108 "Too complex for scilab, may be a too long control instruction."

109 "Too large, can't be displayed."

110 "%s was a function when compiled but is now a primitive!"

111 "Trying to re-define function %s."

112 "No more memory."

113 "Too large string."

114 "Too many linked routines."

115 "Stack problem detected within a loop."

* 116 "Wrong value for argument %d."

* 117 "List element number %d is Undefined."

* 118 "Wrong type for argument %d: Named variable not an expression
expected."

120 "Indices for non-zero elements must be given by a 2 column
matrix."

121 "Incompatible indices for non-zero elements."

* 122 "Logical unit number should be larger than %d."

123 "Function not bounded from below."

125 "Problem may be unbounded: too high distance between two
consecutive iterations."

126 "Inconsistent constraints."

127 "No feasible solution."

128 "Degenerate starting point."

129 "No feasible point has been found."

130 "Optimization fails: back to initial point."

131 "optim: Stop requested by simulator (ind=0)"

132 "optim: Wrong input parameters."

133 "Too small memory."

134 "optim: Problem with initial constants in simul."

135 "optim : Bounds and initial guess are incompatible."

136 "optim : This method is NOT implemented."

137 "NO hot restart available in this method."

138 "optim: Incorrect stopping parameters."

139 "optim: Incorrect bounds."

140 "Variable : %s must be a list"

* 141 "Incorrect function (argument n: %d)."

* 142 "Hot restart: dimension of working table (argument n:%d)."

143 "optim:: df0 must be positive !"

144 "Undefined operation for the given operands."

201 "%s: Wrong type for argument %d: Real or complex matrix expected."

202 "%s: Wrong type for argument %d: Real matrix expected."

203 "%s: Wrong type for argument %d: Real vector expected."

* 204 "%s: Wrong type for argument %d: Scalar expected."

205 "%s: Wrong size for argument %d: (%d,%d) expected."

206 "%s: Wrong size for argument %d: %d expected."

207 "%s: Wrong type for argument %d: Matrix of strings expected."

208 "%s: Wrong type for argument %d: Boolean matrix expected."

209 "%s: Wrong type for argument %d: Matrix expected."

210 "%s: Wrong type for argument %d: List expected."

211 "%s: Wrong type for argument %d: Function or string (external
function) expected."

212 "%s: Wrong type for argument %d: Polynomial expected."

213 "%s: Wrong type for argument %d: Working integer matrix expected."

214 "Argument %d of %s: wrong type argument, expecting a vector"

* 215 "%dth argument type must be boolean."

* 216 "Wrong type for argument %d: Boolean or scalar expected."

* 217 "Wrong type for argument %d: Sparse matrix of scalars expected."

* 218 "Wrong type for argument %d: Handle to sparse lu factors
expected."

* 219 "Wrong type argument %d: Sparse or full scalar matrix expected."

220 "Null variable cannot be used here."

221 "A sparse matrix entry is defined with two differents values."

222 "%s not yet implemented for full input parameter."

223 "It is not possible to redefine the %s primitive this way (see
clearfun)."

224 "Type data base is full."

225 "This data type is already defined."

226 "Inequality comparison with empty matrix."

227 "Missing index."

228 "reference to the cleared global variable %s."

229 "Operands of / and \\ operations must not contain NaN of Inf."

230 "semi def fails."

231 "Wrong type for first input argument: Single string expected."

232 "Entry name not found."

233 "Maximum number of dynamic interfaces reached."

234 "link: expecting more than one argument."

235 "link: problem with one of the entry point."

236 "link: the shared archive was not loaded."

237 "link: Only one entry point allowed on this operating system."

238 "link: First argument cannot be a number."

239 "You cannot link more functions, maxentry reached."

240 "File '%s' already exists or directory write access denied."

241 "File '%s' does not exist or read access denied."

242 "Binary direct access files must be opened by 'file'."

243 "C file logical unit not allowed here."

244 "Fortran file logical unit not allowed here."

* 245 "No input file associated to logical unit %d."

246 "function not defined for given argument type(s)"

247 "Wrong value for argument %d: the lu handle is no more valid."

* 248 "Wrong value for argument %d: Valid variable name expected."

* 249 "Wrong value for argument %d: Empty string expected."

250 "Recursive extraction is not valid in this context."

251 "bvode: ipar dimensioned at least 11."

252 "bvode: ltol must be of size ipar(4)."

253 "bvode: fixpnt must be of size ipar(11)."

254 "bvode: ncomp < 20 requested."

255 "bvode: m must be of size ncomp."

256 "bvode: sum(m) must be less than 40."

257 "bvode: sum(m) must be less than 40."

258 "bvode: input data error."

259 "bvode: no. of subintervals exceeds storage."

260 "bvode: Th colocation matrix is singular."

261 "Interface property table is full."

* 262 "Too many global variables! , max number is %d."

263 "Error while writing in file,(disk full or deleted file."

* 264 "Wrong value for argument %d: Must not contain NaN or Inf."

265 "A and B must have equal number of rows."

266 "A and B must have equal number of columns."

267 "A and B must have equal dimensions."

* 268 "Invalid return value for function passed in arg %d."

* 269 "Wrong value for argument %d: eigenvalues must have negative
real parts."

* 270 "Wrong value for argument %d: eigenvalues modulus must be less
than one."

* 271 "Size varying argument a*eye(), (arg %d) not allowed here."

272 "endfunction is missing."

273 "Instruction left hand side: waiting for a dot or a left
parenthesis."

274 "Instruction left hand side: waiting for a name."

275 "varargout keyword cannot be used here."

276 "Missing operator, comma, or semicolon."

277 "Too many commands defined."

278 "%s: Input arguments should have the same formal variable name."



See Also
~~~~~~~~


+ `error`_ error message
+ `warning`_ warning messages
+ `errcatch`_ error trapping
+ `execstr`_ execute Scilab code in strings
+ `lasterror`_ get last recorded error message


.. _execstr: execstr.html
.. _warning: warning.html
.. _errcatch: errcatch.html
.. _lasterror: lasterror.html
.. _error: error.html


