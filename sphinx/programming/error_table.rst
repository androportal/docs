table

Last update : 24/05/2006

**error\_table** - table of error messages

Description
~~~~~~~~~~~

This page gives the table of the predefined error messages, and their
associated error number. Some of these error messages are used by Scilab
itself for parser errors or specific builtin errors. Some others are of
a more general use and can be used in Scilab functions. The starred one
are those for which the syntax ``         error(n,pos)       `` is
handled.

1 "incorrect assignment"

2 "invalid factor"

3 "waiting for right parenthesis"

4 "undefined variable : %s"

5 "inconsistent column/row dimensions"

6 "inconsistent row/column dimensions"

7 "dot cannot be used as modifier for this operator"

8 "inconsistent addition"

9 "inconsistent subtraction"

10 "inconsistent multiplication"

11 "inconsistent right division "

12 "inconsistent left division"

13 "redefining permanent variable"

14 "eye variable undefined in this context"

15 "submatrix incorrectly defined"

16 "incorrect command!"

17 "stack size exceeded! (Use stacksize function to increase it)"

18 "too many variables!"

19 "Problem is singular"

\* 20 "%dth argument must be square matrix"

21 "invalid index"

22 "recursion problems. Sorry...."

23 "Matrix norms available are 1, 2, inf, and fro"

24 "convergence problem..."

25 "bad call to primitive :%s"

26 "too complex recursion! (recursion tables are full)"

27 "division by zero..."

28 "empty function..."

29 "matrix is not positive definite"

30 "invalid exponent"

31 "incorrect string"

32 "singularity of log or tan function"

33 "too many "":"""

34 "incorrect control intruction syntax"

35 "Syntax error in an if,a while or a select instruction"

\* 36 "%dth argument is incorrect here"

\* 37 "incorrect function at line %d"

38 "file name incorrect"

39 "incorrect number of arguments"

40 "waiting for end of command"

41 "incompatible LHS"

42 "incompatible RHS"

43 "not implemented in scilab...."

\* 44 "%dth argument is incorrect"

\* 45 "null matrix (argument # %d)"

46 "incorrect syntax"

47 "end or else is missing..."

\* 48 "input line longer than buffer size %d"

49 "incorrect file or format"

50 "subroutine not found : %s"

\* 52 "%dth argument must be a real matrix"

\* 53 "%dth input is invalid (waiting for real or complex matrix) "

\* 54 "%dth argument type must be polynomial"

\* 55 "%dth argument type must be character string"

\* 56 "%dth argument must be a list"

57 "problem with comparison symbol..."

58 "incorrect number of arguments in function call..."

59 "incorrect # of outputs in the function"

60 "argument with incompatible dimensions"

61 "direct acces file : give format"

\* 62 "end of file at line %d"

\* 63 "%d graphic terminal?"

64 "integration fails"

\* 65 "%d: logical unit already used"

66 "no more logical units available!"

67 "unknown file format "

69 "floating point exception"

70 "too many arguments in fort (max 30)"

71 "this variable is not valid in fort"

72 "%s is not valid in this context"

73 "error while linking"

74 "Leading coefficient is zero"

75 "Too high degree (max 100)"

\* 76 "for x=val with type(val)="%d is not implemented in Scilab"

77 "%s : wrong number of rhs arguments"

78 "%s : wrong number of lhs arguments"

80 "incorrect function (argument n:%s)"

81 "Argument "%d of %s: wrong type argument, expecting a real or complex
matrix"

82 "Argument %d of %s: wrong type argument, expecting a real matrix"

83 "Argument %d of %s: wrong type argument, expecting a real vector"

84 "Argument %d of %s: wrong type argument, expecting a scalar"

85 "host does not answer..."

86 "uncontrollable system"

87 "unobservable system"

88 "sfact : singular or assymetric problem"

\* 89 "%dth argument has incorrect dimensions"

\* 90 "%dth argument must be a transfer matrix"

\* 91 "%dth argument must be in state space form"

\* 92 "%dth argument must be a rational matrix"

\* 93 "%dth argument must be in continuous time"

\* 94 "%dth argument must be in discrete time"

\* 95 "%dth argument must "be SISO"

\* 96 "time domain of %dth argument is not defined"

\* 97 "%dth argument must be a system in state space or transfer matrix
form"

98 "variable returned by scilab argument function is incorrect"

\* 99 "elements of %dth argument must be in increasing order!"

\* 100 "the elements of %dth argument are not in (strictly) decreasing
order"

\* 101 "last element of %dth argument is not equal to the first"

102 "variable or function %s is not in file %s"

103 "variable %s is not a valid rational function "

104 "variable %s is not a valid state space representation"

105 "undefined fonction"

106 "function name already used"

\* 107 "too many functions are defined (maximum #:%d)"

108 "too complex for scilab, may be a too long control instruction"

109 "too large, can""t be displayed"

110 "%s was a function when compiled but is now a primitive!"

111 "trying to re-define function %s "

112 "Cannot allocate more memory"

113 "too large string"

114 "too many linked entry points"

115 "Stack problem detected within a loop"

\* 116 "%dth argument has incorrect value"

\* 117 "list element number %d is Undefined"

\* 118 "%dth argument must be a named variable not an expression"

119 "indices for non-zero elements must be given by a 2 column matrix"

121 "incompatible indices for non-zero elements "

\* 122 "logical unit number should be larger than %d"

123 "fonction not bounded from below"

124 "problem may be unbounded :too high distance between two consecutive
iterations"

126 "Inconsistent constraints"

127 "no feasible solution"

128 "degenerate starting point"

129 "no feasible point has been found"

130 "optimization fails: back to initial point"

131 "optim: stop requested by simulator (ind=0)"

132 "optim: incorrect input parameters"

133 "too small memory"

134 "optim: problem with initial constants in simul "

135 "optim : bounds and initial guess are incompatible"

136 "optim : this method is NOT implemented "

137 "NO hot restart available in this method"

138 "optim : incorrect stopping parameters"

139 "optim : incorrect bounds"

\* 141 "incorrect function (argument n:%d)"

\* 142 "hot restart : dimension of working table (argument n:%d)"

143 "optim : df0 must be positive !"

144 "Undefined operation for the given operands check or define function
%s for overloading"

201 "Argument %d of %s: wrong type argument, expecting a real or complex
matrix"

202 "Argument %d of %s: wrong type argument, expecting a real matrix"

203 "Argument %d of %s : wrong type argument, expecting a real vector"

\* 204 "Argument %d, wrong type argument: expecting a scalar"

205 "Argument %d of %s: wrong matrix size (%d) expected "

206 "Argument %d of %s: wrong vector size (%d) expected "

207 "Argument %d of %s: wrong type argument, expecting a matrix of
strings"

208 "Argument %d of %s: wrong type argument, expecting a booleen matrix"

209 "Argument %d of %s: wrong type argument, expecting a matrix"

210 "Argument %d of %s: wrong type argument, expecting a list"

211 "Argument %d of %s: wrong type argument, expecting a function or
string (external function)"

212 "Argument %d of %s: wrong type argument, expecting a polynomial
matrix"

213 "Argument %d of %s: wrong type argument, expecting a working integer
matrix"

214 "Argument %d of %s: wrong type argument, expecting a vector"

\* 215 "%dth argument type must be boolean"

\* 216 "%dth argument type must be boolean or scalar"

\* 217 "%dth argument must be a sparse matrix of scalars"

\* 218 "%dth argument must be a handle to sparse lu factors"

\* 219 "%dth argument must be a sparse or full scalar matrix"

220 "null variable cannot be used here"

221 "A sparse matrix entry is defined with two differents values"

222 "lusolve not yet implemented for full RHS"

223 "It is not possible to redefine the %s primitive this way (see
clearfun)."

224 "Type data base is full"

225 "This data type is already defined"

226 "Inequality comparison with empty matrix"

227 "Missing index"

228 "reference to the cleared global variable %s"

230 "semidef fails"

231 "First argument must be a single string"

232 "Entry name not found"

233 "Maximum number of dynamic interfaces reached"

234 "link: expecting more than one argument"

235 "link: problem with one of the entry point"

236 "link: the shared archive was not loaded"

237 "link: Only one entry point allowed On this operating system"

238 "link: First argument cannot be a number"

239 "You cannot link more functions, maxentry reached"

240 "File %s already exists or directory write access denied "

241 "File %s does not exist or read access denied "

242 "binary direct acces files must be opened by ""file"""

243 "C file logical unit not allowed here"

244 "Fortran file logical unit not allowed here"

\* 245 "No input file associated to logical unit %d"

246 "function not defined for given argument type(s)"

\* 248 "%dth argument is not a valid variable name"

\* 249 "%dth argument must not be an empty string"

250 "Recursive extraction is not valid in this context"

251 "bvode: ipar dimensioned at least 11"

252 "bvode: ltol must be of size ipar(4)"

253 "bvode: fixpnt must be of size ipar(11)"

254 "bvode: ncomp must be less than 20"

255 "bvode: m must be of size ncomp"

256 "bvode: sum(m) must be less than 40"

257 "bvode: sum(m) must be less than 40"

258 "bvode: input data error"

259 "bvode: no. of subintervals exceeds storage"

260 "bvode: Th colocation matrix is singular"

261 "Interface property table is full"

\* 262 "too many global variables!,max number is %d"

263 "Error while writing in file,(disk full or deleted file)"

\* 264 "%dth argument must not contain NaN or Inf"

265 "A and B must have equal number of rows"

266 "A and B must have equal number of columns"

267 "A and B must have equal dimensions"

\* 268 "invalid return value for function passed in argument %d"

\* 269 "%dth argument eigenvalues must have negative real parts"

\* 270 "%dth argument eigenvalues modulus must be less than one"

\* 271 "Size varying argument aeye(), (arg %d) not allowed here"

272 "endfunction is missing"

273 "Instruction left hand side: waiting for a dot or a left
parenthesis"

274 "Instruction left hand side: waiting for a name"

275 "varargout keyword cannot be used here"

276 "Missing operator, comma, or semicolon"

277 "Too many commands defined"

See Also
~~~~~~~~

```           warning         `` <../fileio/warning.htm>`_,
```           errcatch         `` <errcatch.htm>`_,
```           execstr         `` <execstr.htm>`_,
```           lasterror         `` <lasterror.htm>`_,
