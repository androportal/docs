Scilab-5.4 help
~~~~~~~~~~~~~~~

+ `Scilab`_

    + `Configuration`_

        + `banner`_ shows Scilab banner
        + `getdebuginfo`_ get information about Scilab to debug
        + `getmemory`_ returns free and total system memory
        + `getmodules`_ returns list of modules installed in Scilab
        + `getos`_ return Operating System name and version
        + `getscilabmode`_ returns scilab mode
        + `getshell`_ returns current command interpreter.
        + `getversion`_ get scilab and modules version information
        + `gstacksize`_ set/get scilab global stack size
        + `stacksize`_ set scilab stack size
        + `ver`_ Version information for Scilab
        + `with_javasci`_ Checks if Scilab has been built with the Java
          interface
        + `with_macros_source`_ Checks if macros sources are installed
        + `with_module`_ Checks if a Scilab module is installed
        + `with_texmacs`_ Checks if Scilab has been called by texmacs
        + `with_tk`_ Checks if Scilab has been built with TCL/TK

    + `Control flow`_

        + `abort`_ interrupt evaluation.
        + `break`_ keyword to interrupt loops
        + `case`_ keyword used in statement "select"
        + `continue`_ keyword to pass control to the next iteration of a loop
        + `for`_ language keyword for loops
        + `if`_ keyword for conditional execution
        + `pause`_ pause mode, invoke keyboard
        + `resume`_ return or resume execution and copy some local variables
        + `return`_ return or resume execution and copy some local variables
        + `select`_ select keyword
        + `then`_ keyword in control flows 'if' and 'select'
        + `while`_ while keyword

    + `Debugging`_

        + `debug`_ debugging level
        + `delbpt`_ delete breakpoints
        + `dispbpt`_ display breakpoints
        + `setbpt`_ set breakpoints
        + `where`_ get current instruction calling tree
        + `whereami`_ display current instruction calling tree

    + `Error handling`_

        + `errcatch`_ error trapping
        + `errclear`_ error clearing
        + `error`_ error message
        + `error_table`_ table of error messages
        + `iserror`_ error occurrence test
        + `lasterror`_ get last recorded error message
        + `warning`_ warning messages

    + `Scilab keywords`_

        + `ans`_ answer
        + `backslash`_ (\) left matrix division.
        + `brackets`_ ([,]) left and right brackets
        + `colon`_ (:) colon operator
        + `comma`_ (,) comma; instruction, argument separator
        + `comments`_ (//) comments
        + `comparison`_ comparison, relational operators
        + `do`_ language keyword for loops
        + `dollar`_ ($) last index
        + `dot`_ (.) symbol
        + `else`_ keyword in if-then-else and select-case-then-else
        + `elseif`_ keyword in if-then-else
        + `empty`_ ([]) empty matrix
        + `end`_ end keyword
        + `equal`_ (=) assignment , comparison, equal sign
        + `extraction`_ matrix and list entry extraction
        + `global`_ Define global variable
        + `hat`_ (^) exponentiation
        + `insertion`_ partial variable assignation
        + `left`_ ([) left bracket
        + `less`_ (>) greater than comparison
        + `minus`_ (-) subtraction operator, sign changes
        + `not`_ (~) logical not
        + `parents`_ ( ) left and right parenthesis
        + `percent`_ (%) special character
        + `plus`_ (+) addition operator
        + `power`_ (^,.^) power operation
        + `quote`_ (') transpose operator, string delimiter
        + `semicolon`_ (;) ending expression and row separator
        + `slash`_ (/) right division and feed back
        + `star`_ (*) multiplication operator
        + `symbols`_ scilab operator names
        + `tilda`_ (~) logical not
        + `try`_ beginning of catch block in try-catch control instruction

    + `Variables`_

        + `Predefined variables`_

            + `SCI`_ variable containing the value of the root path of Scilab.
            + `SCIHOME`_ contains the path to preferences, history files of your
              Scilab session.
            + `TMPDIR`_ temporary directory path.

        + `clear`_ kills variables
        + `clearglobal`_ kills global variables
        + `exists`_ checks variable existence
        + `getvariablesonstack`_ get variable names on stack of scilab
        + `isglobal`_ check if a variable is global
        + `names`_ Scilab names syntax
        + `predef`_ variable protection
        + `who`_ listing of variables
        + `who_user`_ listing of user's variables
        + `whos`_ listing of variables in long form

    + `exit`_ Ends the current Scilab session
    + `perl`_ Call Perl script using appropriate operating system
      executable
    + `quit`_ Terminates Scilab or decreases the pause level
    + `scilab`_ Main script to start Scilab and miscellaneous tools
      (GNU/Linux, Unix and Mac OS X)
    + `startup`_ startup files
    + `testmatrix`_ generate special matrices, such as Hilbert, Franck

+ `Differential calculus, Integration`_

    + `bvode`_ Simplified call to bvode
    + `dae`_ Differential algebraic equations solver
    + `daeoptions`_ set options for dae solver
    + `dasrt`_ DAE solver with zero crossing
    + `dassl`_ differential algebraic equation
    + `feval`_ multiple evaluation
    + `impl`_ differential algebraic equation
    + `int2d`_ definite 2D integral by quadrature and cubature method
    + `int3d`_ definite 3D integral by quadrature and cubature method
    + `intc`_ Cauchy integral
    + `integrate`_ integration of an expression by quadrature
    + `intg`_ definite integral
    + `intl`_ Cauchy integral
    + `intsplin`_ integration of experimental data by spline interpolation
    + `inttrap`_ integration of experimental data by trapezoidal
      interpolation
    + `ode`_ ordinary differential equation solver
    + `ode_discrete`_ ordinary differential equation solver, discrete time
      simulation
    + `ode_optional_output`_ ode solvers optional outputs description
    + `ode_root`_ ordinary differential equation solver with root finding
    + `odedc`_ discrete/continuous ode solver
    + `odeoptions`_ set options for ode solvers

+ `Elementary Functions`_

    + `Bitwise operations`_

        + `bitand`_ bitwise AND
        + `bitcmp`_ bitwise complement
        + `bitget`_ bit at specified position
        + `bitor`_ bitwise OR
        + `bitset`_ set bit at specified position
        + `bitxor`_ bitwise XOR

    + `Complex`_

        + `complex`_ Create a complex number.
        + `imag`_ imaginary part
        + `imult`_ multiplication by i the imaginary unitary
        + `isreal`_ check if a variable has real or complex entries
        + `real`_ real part

    + `Discrete mathematics`_

        + `binomial`_ binomial distribution probabilities
        + `factor`_ factor function
        + `factorial`_ The factorial function
        + `perms`_ all permutations of vector components
        + `primes`_ primes function
        + `rat`_ Floating point rational approximation

    + `Elementary matrices`_

        + `diag`_ diagonal including or extracting
        + `eye`_ identity matrix
        + `ind2sub`_ linear index to matrix subscript values
        + `linspace`_ linearly spaced vector
        + `logspace`_ logarithmically spaced vector
        + `meshgrid`_ create matrices or 3-D arrays
        + `ndgrid`_ arrays for multidimensional function evaluation on grid
        + `ones`_ matrix made of ones
        + `rand`_ Random numbers
        + `sub2ind`_ matrix subscript values to linear index
        + `zeros`_ matrix made of zeros

    + `Exponential`_

        + `exp`_ element-wise exponential
        + `log`_ natural logarithm
        + `log10`_ base 10 logarithm
        + `log1p`_ computes with accuracy the natural logarithm of its
          argument added by one
        + `log2`_ base 2 logarithm
        + `logm`_ square matrix logarithm

    + `Floating point`_

        + `ceil`_ round up
        + `double`_ conversion from integer to double precision representation
        + `fix`_ round towards zero
        + `floor`_ round down
        + `format`_ number printing and display format
        + `frexp`_ dissect floating-point numbers into base 2 exponent and
          mantissa
        + `ieee`_ set floating point exception mode
        + `int`_ round towards zero
        + `isinf`_ check for infinite entries
        + `isnan`_ check for "Not a Number" entries
        + `nearfloat`_ get previous or next floating-point number
        + `nextpow2`_ next higher power of 2.
        + `number_properties`_ determine floating-point parameters
        + `round`_ round to nearest integer

    + `Integer representation`_

        + `base2dec`_ convert from base b to decimal
        + `bin2dec`_ convert from binary to decimal
        + `dec2base`_ Convert decimal to base N number in string
        + `dec2bin`_ convert from decimal to binary
        + `dec2hex`_ convert from decimal to hexadecimal
        + `dec2oct`_ convert from decimal to octal
        + `hex2dec`_ convert from hexadecimal to decimal
        + `oct2dec`_ convert from octal to decimal

    + `Matrix manipulation`_

        + `flipdim`_ flip x components along a given dimension
        + `matrix`_ reshape a vector or a matrix to a different size matrix
        + `permute`_ permute the dimensions of an array
        + `repmat`_ Replicate and tile an array
        + `resize_matrix`_ create a new matrix with a different size

    + `Matrix operations`_

        + `cumprod`_ cumulative product of array elements
        + `cumsum`_ cumulative sum of array elements
        + `kron`_ Kronecker product (.*.)
        + `prod`_ product of array elements
        + `sum`_ sum of array elements
        + `tril`_ lower triangular part of matrix
        + `triu`_ upper triangle

    + `Search and sort`_

        + `dsearch`_ search in ordered sets
        + `gsort`_ sorting by quick sort agorithm
        + `lex_sort`_ lexicographic matrix rows sorting
        + `vectorfind`_ finds in a matrix rows or columns matching a vector

    + `Set operations`_

        + `intersect`_ returns the vector of common values of two vectors
        + `setdiff`_ returns components of a vector which do not belong to
          another one
        + `union`_ extract union components of a vector
        + `unique`_ extract unique components of a vector or matrices

    + `Signal processing`_

        + `bloc2exp`_ Conversion of a block-diagram to its symbolic expression
        + `bloc2ss`_ block-diagram to state-space conversion
        + `pen2ea`_ pencil to E,A conversion
        + `ssrand`_ random system generator
        + `sysconv`_ system conversion
        + `sysdiag`_ block diagonal system connection
        + `syslin`_ linear system definition
        + `trfmod`_ poles and zeros display

    + `Symbolic`_

        + `solve`_ symbolic linear system solver
        + `trianfml`_ symbolic triangularization
        + `trisolve`_ symbolic linear system solver

    + `Trigonometry`_

        + `acos`_ element wise cosine inverse (radians)
        + `acosd`_ element wise cosine inverse, result in degree.
        + `acosh`_ hyperbolic cosine inverse
        + `acoshm`_ matrix hyperbolic inverse cosine
        + `acosm`_ matrix wise cosine inverse
        + `acot`_ computes the element-wise inverse cotangeant of the
          argument.
        + `acotd`_ computes the element-wise inverse cotangeant of the
          argument, result in degree.
        + `acoth`_ element wise hyperbolic cotangeant inverse.
        + `acsc`_ computes the element-wise inverse cosecant of the argument.
        + `acscd`_ computes the element-wise inverse cosecant of the argument,
          results in degree.
        + `acsch`_ computes the element-wise inverse hyperbolic cosecant of
          the argument.
        + `asec`_ computes the element-wise inverse secant of the argument.
        + `asecd`_ computes the element-wise inverse secant of the argument,
          results in degree.
        + `asech`_ computes the element-wise inverse hyperbolic secant of the
          argument.
        + `asin`_ sine inverse (radians)
        + `asind`_ sine inverse, results in degree
        + `asinh`_ hyperbolic sine inverse
        + `asinhm`_ matrix hyperbolic inverse sine
        + `asinm`_ matrix wise sine inverse
        + `atan`_ 2-quadrant and 4-quadrant inverse tangent
        + `atand`_ 2-quadrant and 4-quadrant element-wise inverse tangent,
          result in degree.
        + `atanh`_ hyperbolic tangent inverse
        + `atanhm`_ matrix hyperbolic tangent inverse
        + `atanm`_ square matrix tangent inverse
        + `conj`_ conjugate
        + `cos`_ cosine function
        + `cosd`_ element-wise cosine function, argument in degree
        + `cosh`_ hyperbolic cosine
        + `coshm`_ matrix hyperbolic cosine
        + `cosm`_ matrix cosine function
        + `cotd`_ element-wise cotangent function, argument in degree
        + `cotg`_ cotangent
        + `coth`_ hyperbolic cotangent
        + `cothm`_ matrix hyperbolic cotangent
        + `csc`_ Computes the element-wise cosecant of the argument.
        + `cscd`_ Computes the element-wise cosecant of the argument given in
          degree.
        + `csch`_ Computes the element-wise hyperbolic cosecant of the
          argument.
        + `csgn`_ Returns the sign of a vector of real of complex values.
        + `sec`_ Compute the element-wise secant of the argument.
        + `secd`_ Compute the element-wise secant of the argument given in
          degree.
        + `sech`_ Compute the element-wise hyperbolic secant of the argument.
        + `sin`_ sine function
        + `sinc`_ sinc function
        + `sind`_ sine function, argument in degree.
        + `sinh`_ hyperbolic sine
        + `sinhm`_ matrix hyperbolic sine
        + `sinm`_ matrix sine function
        + `tan`_ tangent
        + `tand`_ tangent, argument in degree.
        + `tanh`_ hyperbolic tangent
        + `tanhm`_ matrix hyperbolic tangent
        + `tanm`_ matrix tangent

    + `abs`_ absolute value, magnitude
    + `amell`_ Jacobi's am function
    + `and`_ logical AND of the elements of an array
    + `and_op`_ logical AND operator
    + `cat`_ concatenate several arrays
    + `cell2mat`_ converts a cell array into a matrix
    + `cellstr`_ converts strings vector (or strings matrix) into a cell
      array of strings
    + `char`_ converts in a character array
    + `delip`_ complete and incomplete elliptic integral of first kind
    + `diff`_ Difference and discrete derivative
    + `isdef`_ checks variable existence
    + `isempty`_ check if a variable is an empty matrix or an empty list
    + `isequal`_ objects comparison
    + `isequalbitwise`_ bitwise comparison of variables
    + `isvector`_ check if a variable is a vector
    + `lstsize`_ list, tlist, mlist numbers of entries
    + `max`_ maximum
    + `min`_ minimum
    + `modulo`_ positive arithmetic remainder modulo m
    + `ndims`_ number of dimensions of an array
    + `norm`_ matrix norm
    + `nthroot`_ Real nth root of real numbers
    + `or`_ logical OR of the elements of an array
    + `or_op`_ logical OR operator
    + `percenteps`_ epsilon (floating-point relative accuracy)
    + `percenti`_ imaginary unit
    + `percentinf`_ infinity
    + `percentnan`_ not-a-number
    + `percentpi`_ ratio of circle's circumference to its diameter
    + `pertrans`_ simultaneous permutation and transposition
    + `sign`_ signum function
    + `signm`_ matrix signum function
    + `size`_ size of objects
    + `sqrt`_ square root
    + `sqrtm`_ matrix square root
    + `squarewave`_ generates a square wave with period 2*%pi
    + `toeplitz`_ Toeplitz matrix

+ `Linear Algebra`_

    + `aff2ab`_ linear (affine) function to A,b conversion
    + `balanc`_ matrix or pencil balancing
    + `bdiag`_ block diagonalization, generalized eigenvectors
    + `chol`_ Cholesky factorization
    + `classmarkov`_ recurrent and transient classes of Markov matrix
    + `cmb_lin`_ symbolic linear combination
    + `coff`_ resolvent (cofactor method)
    + `colcomp`_ column compression, kernel, nullspace
    + `companion`_ companion matrix
    + `cond`_ condition number
    + `det`_ determinant
    + `eigenmarkov`_ normalized left and right Markov eigenvectors
    + `ereduc`_ computes matrix column echelon form by qz transformations
    + `expm`_ square matrix exponential
    + `fstair`_ computes pencil column echelon form by qz transformations
    + `fullrf`_ full rank factorization
    + `fullrfk`_ full rank factorization of A^k
    + `genmarkov`_ generates random markov matrix with recurrent and
      transient classes
    + `givens`_ Givens transformation
    + `glever`_ inverse of matrix pencil
    + `gschur`_ generalized Schur form (obsolete).
    + `gspec`_ eigenvalues of matrix pencil (obsolete)
    + `hess`_ Hessenberg form
    + `householder`_ Householder orthogonal reflexion matrix
    + `im_inv`_ inverse image
    + `inv`_ matrix inverse
    + `kernel`_ kernel, nullspace
    + `kroneck`_ Kronecker form of matrix pencil
    + `linsolve`_ linear equation solver
    + `lsq`_ linear least square problems.
    + `lu`_ LU factorization with pivoting
    + `lyap`_ Lyapunov equation
    + `nlev`_ Leverrier's algorithm
    + `orth`_ orthogonal basis
    + `pbig`_ eigen-projection
    + `pencan`_ canonical form of matrix pencil
    + `penlaur`_ Laurent coefficients of matrix pencil
    + `pinv`_ pseudoinverse
    + `polar`_ polar form
    + `proj`_ projection
    + `projspec`_ spectral operators
    + `psmall`_ spectral projection
    + `qr`_ QR decomposition
    + `quaskro`_ quasi-Kronecker form
    + `randpencil`_ random pencil
    + `range`_ range (span) of A^k
    + `rank`_ rank
    + `rankqr`_ rank revealing QR factorization
    + `rcond`_ inverse condition number
    + `rowcomp`_ row compression, range
    + `rowshuff`_ shuffle algorithm
    + `rref`_ computes matrix row echelon form by lu transformations
    + `schur`_ [ordered] Schur decomposition of matrix and pencils
    + `spaninter`_ subspace intersection
    + `spanplus`_ sum of subspaces
    + `spantwo`_ sum and intersection of subspaces
    + `spec`_ eigenvalues of matrices and pencils
    + `sqroot`_ W*W' hermitian factorization
    + `squeeze`_ squeeze
    + `sva`_ singular value approximation
    + `svd`_ singular value decomposition
    + `sylv`_ Sylvester equation.
    + `trace`_ trace

+ `Interpolation`_

    + `bsplin3val`_ 3d spline arbitrary derivative evaluation function
    + `cshep2d`_ bidimensional cubic shepard (scattered) interpolation
    + `eval_cshep2d`_ bidimensional cubic shepard interpolation evaluation
    + `interp`_ cubic spline evaluation function
    + `interp1`_ one_dimension interpolation function
    + `interp2d`_ bicubic spline (2d) evaluation function
    + `interp3d`_ 3d spline evaluation function
    + `interpln`_ linear interpolation
    + `linear_interpn`_ n dimensional linear interpolation
    + `lsq_splin`_ weighted least squares cubic spline fitting
    + `smooth`_ smoothing by spline functions
    + `splin`_ cubic spline interpolation
    + `splin2d`_ bicubic spline gridded 2d interpolation
    + `splin3d`_ spline gridded 3d interpolation

+ `CACSD (Computer Aided Control Systems Design)`_

    + `abcd`_ state-space matrices
    + `abinv`_ AB invariant subspace
    + `arhnk`_ Hankel norm approximant
    + `arl2`_ SISO model realization by L2 transfer approximation
    + `arma`_ Scilab arma library
    + `arma2p`_ extract polynomial matrices from ar representation
    + `arma2ss`_ transform an armax data structure into state space
      representation.
    + `armac`_ Scilab description of an armax process
    + `armax`_ armax identification
    + `armax1`_ armax identification
    + `arsimul`_ armax simulation
    + `augment`_ augmented plant
    + `balreal`_ balanced realization
    + `bilin`_ general bilinear transform
    + `black`_ Black-Nichols diagram of a linear dynamical system
    + `bode`_ Bode plot
    + `bstap`_ hankel approximant
    + `cainv`_ Dual of abinv
    + `calfrq`_ frequency response discretization
    + `canon`_ canonical controllable form
    + `ccontrg`_ Central H-infinity continuous time controller
    + `chart`_ Nichols chart
    + `cls2dls`_ bilinear transform
    + `colinout`_ inner-outer factorization
    + `colregul`_ removing poles and zeros at infinity
    + `cont_frm`_ transfer to controllable state-space
    + `cont_mat`_ controllability matrix
    + `contr`_ controllability, controllable subspace, staircase
    + `contrss`_ controllable part
    + `copfac`_ right coprime factorization of continuous time dynamical
      systems
    + `csim`_ simulation (time response) of linear system
    + `ctr_gram`_ controllability gramian
    + `damp`_ Natural frequencies and damping factors.
    + `dbphi`_ frequency response to phase and magnitude representation
    + `dcf`_ double coprime factorization
    + `ddp`_ disturbance decoupling
    + `des2ss`_ descriptor to state-space
    + `des2tf`_ descriptor to transfer function conversion
    + `dhinf`_ H_infinity design of discrete-time systems
    + `dhnorm`_ discrete H-infinity norm
    + `dscr`_ discretization of linear system
    + `dsimul`_ state space discrete time simulation
    + `dt_ility`_ detectability test
    + `dtsi`_ Continuous time dynamical systems stable anti-stable
      decomposition
    + `equil`_ balancing of pair of symmetric matrices
    + `equil1`_ balancing (nonnegative) pair of matrices
    + `evans`_ Evans root locus
    + `feedback`_ feedback operation
    + `findABCD`_ discrete-time system subspace identification
    + `findAC`_ discrete-time system subspace identification
    + `findBD`_ initial state and system matrices B and D of a discrete-
      time system
    + `findBDK`_ Kalman gain and B D system matrices of a discrete-time
      system
    + `findR`_ Preprocessor for estimating the matrices of a linear time-
      invariant dynamical system
    + `findx0BD`_ Estimates state and B and D matrices of a discrete-time
      linear system
    + `flts`_ time response (discrete time, sampled system)
    + `fourplan`_ augmented plant to four plants
    + `frep2tf`_ transfer function realization from frequency response
    + `freq`_ frequency response
    + `freson`_ peak frequencies
    + `fspecg`_ stable factorization of continuous time dynamical systems
    + `fstabst`_ Youla's parametrization of continuous time linear
      dynmaical systems
    + `g_margin`_ gain margin and associated crossover frequency
    + `gainplot`_ magnitude plot
    + `gamitg`_ H-infinity gamma iterations for continuous time systems
    + `gcare`_ Continuous time control Riccati equation
    + `gfare`_ Continuous time filter Riccati equation
    + `gfrancis`_ Francis equations for tracking
    + `gtild`_ tilde operation
    + `h2norm`_ H2 norm of a continuous time proper dynamical system
    + `h_cl`_ closed loop matrix
    + `h_inf`_ Continuous time H-infinity (central) controller
    + `h_inf_st`_ static H_infinity problem
    + `h_norm`_ H-infinity norm
    + `hallchart`_ Draws the Hall chart
    + `hankelsv`_ Hankel singular values
    + `hinf`_ H_infinity design of continuous-time systems
    + `imrep2ss`_ state-space realization of an impulse response
    + `inistate`_ Estimates the initial state of a discrete-time system
    + `invsyslin`_ system inversion
    + `kpure`_ continuous SISO system limit feedback gain
    + `krac2`_ continuous SISO system limit feedback gain
    + `lcf`_ Continuous time dynamical systems normalized coprime
      factorization
    + `leqr`_ H-infinity LQ gain (full state)
    + `lft`_ linear fractional transformation
    + `lin`_ linearization
    + `linf`_ infinity norm
    + `linfn`_ infinity norm
    + `linmeq`_ Sylvester and Lyapunov equations solver
    + `lqe`_ linear quadratic estimator (Kalman Filter)
    + `lqg`_ LQG compensator
    + `lqg2stan`_ LQG to standard problem
    + `lqg_ltr`_ LQG with loop transform recovery
    + `lqr`_ LQ compensator (full state)
    + `ltitr`_ discrete time response (state space)
    + `m_circle`_ plots the complex plane iso-gain contours of y/(1+y)
      (obsolete)
    + `macglov`_ Continuous time dynamical systems Mac Farlane Glover
      problem
    + `markp2ss`_ Markov parameters to state-space
    + `minreal`_ minimal balanced realization
    + `minss`_ minimal realization
    + `mucomp`_ mu (structured singular value) calculation
    + `narsimul`_ armax simulation ( using rtitr)
    + `nehari`_ Nehari approximant of continuous time dynamical systems
    + `nicholschart`_ Nichols chart
    + `noisegen`_ noise generation
    + `nyquist`_ nyquist plot
    + `nyquistfrequencybounds`_ Computes the frequencies for which the
      nyquist locus enters and leaves a given rectangle.
    + `obs_gram`_ observability gramian
    + `obscont`_ observer based controller
    + `observer`_ observer design
    + `obsv_mat`_ observability matrix
    + `obsvss`_ observable part
    + `p_margin`_ phase margin and associated crossover frequency
    + `parrot`_ Parrot's problem
    + `pfss`_ partial fraction decomposition
    + `phasemag`_ phase and magnitude computation
    + `phaseplot`_ frequency phase plot
    + `ppol`_ pole placement
    + `prbs_a`_ pseudo random binary sequences generation
    + `projsl`_ linear system projection
    + `reglin`_ Linear regression
    + `repfreq`_ frequency response
    + `ric_desc`_ Riccati equation
    + `ricc`_ Riccati equation
    + `riccati`_ Riccati equation
    + `routh_t`_ Routh's table
    + `rowinout`_ inner-outer factorization
    + `rowregul`_ removing poles and zeros at infinity
    + `rtitr`_ discrete time response (transfer matrix)
    + `sensi`_ sensitivity functions
    + `sgrid`_ s-plane grid lines.
    + `show_margins`_ display gain and phase margin and associated
      crossover frequencies
    + `sident`_ discrete-time state-space realization and Kalman gain
    + `sm2des`_ system matrix to descriptor
    + `sm2ss`_ system matrix to state-space
    + `sorder`_ computing the order of a discrete-time system
    + `specfact`_ spectral factor
    + `ss2des`_ (polynomial) state-space to descriptor form
    + `ss2ss`_ state-space to state-space conversion, feedback, injection
    + `ss2tf`_ conversion from state-space to transfer function
    + `st_ility`_ stabilizability test
    + `stabil`_ stabilization
    + `svplot`_ singular-value sigma-plot
    + `sysfact`_ system factorization
    + `syssize`_ size of state-space system
    + `tf2des`_ transfer function to descriptor
    + `tf2ss`_ transfer to state-space
    + `time_id`_ SISO least square identification
    + `trzeros`_ transmission zeros and normal rank
    + `ui_observer`_ unknown input observer
    + `unobs`_ unobservable subspace
    + `zeropen`_ zero pencil
    + `zgrid`_ zgrid plot

+ `Polynomials`_

    + `bezout`_ Bezout equation for polynomials or integers
    + `clean`_ cleans matrices (round to zero small entries)
    + `cmndred`_ common denominator form
    + `coeff`_ coefficients of matrix polynomial
    + `coffg`_ inverse of polynomial matrix
    + `colcompr`_ column compression of polynomial matrix
    + `degree`_ degree of polynomial matrix
    + `denom`_ denominator
    + `derivat`_ rational matrix derivative
    + `determ`_ determinant of polynomial matrix
    + `detr`_ polynomial determinant
    + `diophant`_ diophantine (Bezout) equation
    + `factors`_ numeric real factorization
    + `gcd`_ gcd calculation
    + `hermit`_ Hermite form
    + `horner`_ polynomial/rational evaluation
    + `hrmt`_ gcd of polynomials
    + `htrianr`_ triangularization of polynomial matrix
    + `inv_coeff`_ build a polynomial matrix from its coefficients
    + `invr`_ inversion of (rational) matrix
    + `lcm`_ least common multiple
    + `lcmdiag`_ least common multiple diagonal factorization
    + `ldiv`_ polynomial matrix long division
    + `numer`_ numerator
    + `pdiv`_ polynomial division
    + `pol2des`_ polynomial matrix to descriptor form
    + `pol2str`_ polynomial to string conversion
    + `polfact`_ minimal factors
    + `poly`_ polynomial definition
    + `rational`_ Scilab objects, rational in Scilab
    + `residu`_ residue
    + `roots`_ roots of polynomials
    + `rowcompr`_ row compression of polynomial matrix
    + `sfact`_ discrete time spectral factorization
    + `simp`_ rational simplification
    + `simp_mode`_ toggle rational simplification
    + `sylm`_ Sylvester matrix
    + `systmat`_ system matrix
    + `varn`_ symbolic variable of a polynomial

+ `Signal Processing`_

    + `How to`_

        + `DesignEllipticFilter`_ How to design an elliptic filter (analog and
          digital)

    + `Signal`_ Signal manual description
    + `analpf`_ create analog low-pass filter
    + `bilt`_ bilinear or biquadratic transform SISO system given by a
      zero/poles representation
    + `buttmag`_ Power transmission of a Butterworth filter
    + `casc`_ cascade realization of filter from coefficients
    + `cepstrum`_ cepstrum calculation
    + `cheb1mag`_ response of Chebyshev type 1 filter
    + `cheb2mag`_ response of type 2 Chebyshev filter
    + `chepol`_ Chebychev polynomial
    + `conv`_ discrete 1-D convolution.
    + `conv2`_ discrete 2-D convolution.
    + `convol`_ convolution
    + `convol2d`_ discrete 2-D convolution, using fft.
    + `corr`_ correlation, covariance
    + `cspect`_ two sided cross-spectral estimate between 2 discrete time
      signals using the correlation method
    + `czt`_ chirp z-transform algorithm
    + `detrend`_ remove constant, linear or piecewise linear trend from a
      vector
    + `dft`_ discrete Fourier transform
    + `ell1mag`_ magnitude of elliptic filter
    + `eqfir`_ minimax approximation of FIR filter
    + `eqiir`_ Design of iir filters
    + `faurre`_ filter computation by simple Faurre algorithm
    + `ffilt`_ coefficients of FIR low-pass
    + `fft`_ fast Fourier transform.
    + `fft2`_ two-dimension fast Fourier transform
    + `fftshift`_ rearranges the fft output, moving the zero frequency to
      the center of the spectrum
    + `filt_sinc`_ samples of sinc function
    + `filter`_ filters a data sequence using a digital filter
    + `find_freq`_ parameter compatibility for elliptic filter design
    + `findm`_ for elliptic filter design
    + `frfit`_ frequency response fit
    + `frmag`_ magnitude of FIR and IIR filters
    + `fsfirlin`_ design of FIR, linear phase filters, frequency sampling
      technique
    + `group`_ group delay for digital filter
    + `hank`_ covariance to hankel matrix
    + `hilb`_ FIR approximation to a Hilbert transform filter
    + `hilbert`_ Discrete-time analytic signal computation of a real
      signal using Hilbert transform
    + `iir`_ iir digital filter
    + `iirgroup`_ group delay Lp IIR filter optimization
    + `iirlp`_ Lp IIR filter optimization
    + `intdec`_ Changes sampling rate of a signal
    + `jmat`_ row or column block permutation
    + `kalm`_ Kalman update
    + `lattn`_ recursive solution of normal equations
    + `lattp`_ lattp
    + `lev`_ Yule-Walker equations (Levinson's algorithm)
    + `levin`_ Toeplitz system solver by Levinson algorithm
      (multidimensional)
    + `lindquist`_ Lindquist's algorithm
    + `mese`_ maximum entropy spectral estimation
    + `mfft`_ multi-dimensional fft
    + `mrfit`_ frequency response fit
    + `percentasn`_ elliptic integral
    + `percentk`_ Jacobi's complete elliptic integral
    + `percentsn`_ Jacobi 's elliptic function
    + `phc`_ Markovian representation
    + `pspect`_ two sided cross-spectral estimate between 2 discrete time
      signals using the Welch's average periodogram method.
    + `remez`_ Remez exchange algorithm for the weighted chebyshev
      approximation of a continuous function with a sum of cosines.
    + `remezb`_ Minimax approximation of magnitude response
    + `rpem`_ Recursive Prediction-Error Minimization estimation
    + `sincd`_ digital sinc function or Direchlet kernel
    + `srfaur`_ square-root algorithm
    + `srkf`_ square root Kalman filter
    + `sskf`_ steady-state Kalman filter
    + `syredi`_ Design of iir filters, syredi code interface
    + `system`_ observation update
    + `trans`_ low-pass to other filter transform
    + `wfir`_ linear-phase FIR filters
    + `wfir_gui`_ Graphical user interface that can be used to
      interactively design wfir filters
    + `wiener`_ Wiener estimate
    + `wigner`_ 'time-frequency' wigner spectrum
    + `window`_ compute symmetric window of various type
    + `xcorr`_ Computes discrete auto or cross correlation
    + `xcov`_ Computes discrete auto or cross covariance
    + `yulewalk`_ least-square filter design
    + `zpbutt`_ Butterworth analog filter
    + `zpch1`_ Chebyshev analog filter
    + `zpch2`_ Chebyshev analog filter
    + `zpell`_ lowpass elliptic filter

+ `FFTW`_

    + `fftw_flags`_ set method for fft planner algorithm selection
    + `fftw_forget_wisdom`_ Reset fftw wisdom
    + `get_fftw_wisdom`_ return fftw wisdom
    + `set_fftw_wisdom`_ set fftw wisdom

+ `Special Functions`_

    + `bessel`_ Bessel functions of the third kind (aka Hankel functions)
    + `beta`_ beta function
    + `calerf`_ computes error functions.
    + `dlgamma`_ derivative of gammaln function, psi function
    + `erf`_ The error function.
    + `erfc`_ The complementary error function.
    + `erfcx`_ scaled complementary error function.
    + `erfinv`_ inverse error function
    + `gamma`_ The gamma function.
    + `gammaln`_ The logarithm of gamma function.
    + `legendre`_ associated Legendre functions

+ `Randlib`_

    + `grand`_ Random numbers

+ `ARnoldi PACKage (ARPACK binding)`_

    + `dnaupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
      to compute approximations to a few eigenpairs of a real linear
      operator
    + `dneupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
      to compute the converged approximations to eigenvalues of A * z =
      lambda * B * z approximations to a few eigenpairs of a real linear
      operator
    + `dsaupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
      to compute approximations to a few eigenpairs of a real and symmetric
      linear operator
    + `dseupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
      to compute approximations to the converged approximations to
      eigenvalues of A * z = lambda * B * z
    + `eigs`_ calculates eigenvalues and eigenvectors of matrices
    + `znaupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
      to compute a few eigenpairs of a complex linear operator OP with
      respect to a semi-inner product defined by a hermitian positive semi-
      definite real matrix B.
    + `zneupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
      to compute approximations to the converged approximations to
      eigenvalues of A * z = lambda * B * z

+ `Statistics`_

    + `Cumulated Distribution Functions`_

        + `cdfbet`_ cumulative distribution function Beta distribution
        + `cdfbin`_ cumulative distribution function Binomial distribution
        + `cdfchi`_ cumulative distribution function chi-square distribution
        + `cdfchn`_ cumulative distribution function non-central chi-square
          distribution
        + `cdff`_ cumulative distribution function F distribution
        + `cdffnc`_ cumulative distribution function non-central
          f-distribution
        + `cdfgam`_ cumulative distribution function gamma distribution
        + `cdfnbn`_ cumulative distribution function negative binomial
          distribution
        + `cdfnor`_ cumulative distribution function normal distribution
        + `cdfpoi`_ cumulative distribution function poisson distribution
        + `cdft`_ cumulative distribution function Student's T distribution

    + `Central Tendency`_

        + `geomean`_ geometric mean
        + `harmean`_ harmonic mean
        + `mean`_ mean (row mean, column mean) of vector/matrix entries
        + `meanf`_ weighted mean of a vector or a matrix
        + `trimmean`_ trimmed mean of a vector or a matrix

    + `Data with Missing Values`_

        + `nancumsum`_ Thos function returns the cumulative sum of the values
          of a matrix
        + `nand2mean`_ difference of the means of two independent samples
        + `nanmax`_ max (ignoring Nan's)
        + `nanmean`_ mean (ignoring Nan's)
        + `nanmeanf`_ mean (ignoring Nan's) with a given frequency.
        + `nanmedian`_ median of the values of a numerical vector or matrix
        + `nanmin`_ min (ignoring Nan's)
        + `nanstdev`_ standard deviation (ignoring the NANs).
        + `nansum`_ Sum of values ignoring NAN's
        + `thrownan`_ Eliminates nan values

    + `Descriptive Statistics`_

        + `center`_ center
        + `correl`_ correlation of two variables
        + `covar`_ covariance of two variables
        + `median`_ median (row median, column median,...) of
          vector/matrix/array entries
        + `msd`_ mean squared deviation
        + `mvvacov`_ computes variance-covariance matrix
        + `st_deviation`_ standard deviation (row or column-wise) of
          vector/matrix entries
        + `stdevf`_ standard deviation
        + `variance`_ variance of the values of a vector or matrix
        + `variancef`_ standard deviation of the values of a vector or matrix
        + `wcenter`_ center and weight

    + `Hypothesis Testing`_

        + `ftest`_ Fisher ratio
        + `ftuneq`_ Fisher ratio for samples of unequal size.

    + `Measures of Dispersion`_

        + `iqr`_ interquartile range
        + `mad`_ mean absolute deviation
        + `strange`_ range

    + `Measures of Shape`_

        + `cmoment`_ central moments of all orders
        + `moment`_ non central moments of all orders
        + `perctl`_ computation of percentils
        + `quart`_ computation of quartiles

    + `Principal Component Analysis`_

        + `pca`_ Computes principal components analysis with standardized
          variables
        + `princomp`_ Principal components analysis
        + `show_pca`_ Visualization of principal components analysis results

    + `Regression`_

        + `regress`_ regression coefficients of two variables

    + `Sampling`_

        + `sample`_ Sampling with replacement
        + `samplef`_ sample with replacement from a population and frequences
          of his values.
        + `samwr`_ Sampling without replacement

    + `Summaries`_

        + `nfreq`_ frequence of the values in a vector or matrix
        + `tabul`_ frequency of values of a matrix or vector


+ `Sparse Matrix`_

    + `Sparse Decompositions`_

        + `ludel`_ utility function used with lufact
        + `lufact`_ sparse lu factorization
        + `luget`_ extraction of sparse LU factors
        + `lusolve`_ sparse linear system solver
        + `spchol`_ sparse cholesky factorization

    + `Linear Equations (Iterative Solvers)`_

        + `gmres`_ Generalized Minimum RESidual method
        + `pcg`_ precondioned conjugate gradient
        + `qmr`_ quasi minimal resiqual method with preconditioning

    + `Sparse Matrix Manipulation`_

        + `issparse`_ determine whether input is sparse
        + `nnz`_ number of non zero entries in a matrix
        + `speye`_ sparse identity matrix
        + `spones`_ sparse matrix
        + `sprand`_ sparse random matrix
        + `spzeros`_ sparse zero matrix

    + `Sparse Matrix Conversion`_

        + `adj2sp`_ converts adjacency form into sparse matrix.
        + `full`_ sparse to full matrix conversion
        + `mtlb_sparse`_ convert sparse matrix
        + `sp2adj`_ converts sparse matrix into adjacency form
        + `sparse`_ sparse matrix definition
        + `spcompack`_ converts a compressed adjacency representation
        + `spget`_ retrieves entries of sparse matrix

    + `chfact`_ sparse Cholesky factorization
    + `chsolve`_ sparse Cholesky solver
    + `ordmmd`_ Compute multiple minimum degree ordering

+ `UMFPACK Interface (sparse)`_

    + `PlotSparse`_ plot the pattern of non nul elements of a sparse
      matrix
    + `ReadHBSparse`_ read a Harwell-Boeing sparse format file
    + `cond2sp`_ computes an approximation of the 2-norm condition number
      of a s.p.d. sparse matrix
    + `condestsp`_ estimate the condition number of a sparse matrix
    + `rafiter`_ (obsolete) iterative refinement for a s.p.d. linear
      system
    + `res_with_prec`_ computes the residual r = Ax-b with precision
    + `taucs_chdel`_ utility function used with taucs_chfact
    + `taucs_chfact`_ cholesky factorisation of a sparse s.p.d. matrix
    + `taucs_chget`_ retrieve the Cholesky factorization at the scilab
      level
    + `taucs_chinfo`_ get information on Cholesky factors
    + `taucs_chsolve`_ solve a linear sparse (s.p.d.) system given the
      Cholesky factors
    + `taucs_license`_ display the taucs license
    + `umf_license`_ display the umfpack license
    + `umf_ludel`_ utility function used with umf_lufact
    + `umf_lufact`_ lu factorisation of a sparse matrix
    + `umf_luget`_ retrieve lu factors at the scilab level
    + `umf_luinfo`_ get information on LU factors
    + `umf_lusolve`_ solve a linear sparse system given the LU factors
    + `umfpack`_ solve sparse linear system

+ `Optimization and Simulation`_

    + `Neldermead`_

        + `fminsearch`_ Computes the unconstrained minimimum of given function
          with the Nelder-Mead algorithm.
        + `neldermead`_ Provides direct search optimization algorithms.
        + `neldermead_overview`_ An overview of the Nelder-Mead toolbox.
        + `nmplot`_ Provides direct search optimization algorithms.
        + `optimget`_ Queries an optimization data structure.
        + `optimplotfunccount`_ Plot the number of function evaluations of an
          optimization algorithm
        + `optimplotfval`_ Plot the function value of an optimization
          algorithm
        + `optimplotx`_ Plot the value of the parameters of an optimization
          algorithm
        + `optimset`_ Configures and returns an optimization data structure.

    + `Optimization base`_

        + `optimbase`_ Provides an abstract class for a general optimization
          component.

    + `Optimization simplex`_

        + `optimsimplex`_ Manage a simplex with arbitrary number of points.

    + `Semidefinite Programming`_

        + `aplat`_ Flattens a list.
        + `list2vec`_ Concatenates list entries in a matrix.
        + `lmisolver`_ Solve linear matrix inequations.
        + `lmitool`_ Graphical tool for solving linear matrix inequations.
        + `pack`_ Compress a list of block-diagonal symmetric matrices.
        + `recons`_ Inverse function for aplat.
        + `semidef`_ Solve semidefinite problems.
        + `unpack`_ Uncompress a list of block-diagonal symmetric matrices.
        + `vec2list`_ Inverse function of list2vec.

    + `NDcost`_ generic external for optim computing gradient using finite
      differences
    + `datafit`_ Parameter identification based on measured data
    + `derivative`_ approximate derivatives of a function
    + `fit_dat`_ Parameter identification based on measured data
    + `fsolve`_ find a zero of a system of n nonlinear functions
    + `karmarkar`_ Solves a linear optimization problem.
    + `leastsq`_ Solves non-linear least squares problems
    + `lsqrsolve`_ minimize the sum of the squares of nonlinear functions,
      levenberg-marquardt algorithm
    + `numdiff`_ numerical gradient estimation
    + `optim`_ non-linear optimization routine
    + `qld`_ linear quadratic programming solver
    + `qp_solve`_ linear quadratic programming solver builtin
    + `qpsolve`_ linear quadratic programming solver
    + `readmps`_ Reads a Linear Program from a MPS file.

+ `Genetic Algorithms`_

    + `algorithms`_

        + `optim_ga`_ A flexible genetic algorithm
        + `optim_moga`_ multi-objective genetic algorithm
        + `optim_nsga`_ A multi-objective Niched Sharing Genetic Algorithm
        + `optim_nsga2`_ A multi-objective Niched Sharing Genetic Algorithm
          version 2

    + `utilities`_

        + `coding_ga_binary`_ A function which performs conversion between
          binary and continuous representation
        + `coding_ga_identity`_ A "no-operation" conversion function
        + `crossover_ga_binary`_ A crossover function for binary code
        + `crossover_ga_default`_ A crossover function for continuous variable
          functions
        + `init_ga_default`_ A function a initialize a population
        + `mutation_ga_binary`_ A function which performs binary mutation
        + `mutation_ga_default`_ A continuous variable mutation function
        + `pareto_filter`_ A function which extracts non dominated solution
          from a set
        + `selection_ga_elitist`_ An 'elitist' selection function
        + `selection_ga_random`_ A function which performs a random selection
          of individuals


+ `Simulated Annealing`_

    + `Algorithms`_

        + `optim_sa`_ A Simulated Annealing optimization method

    + `Utilities`_

        + `accept_func_default`_ The default Simulated Annealing acceptation
          function.
        + `accept_func_vfsa`_ The Very Fast Simulated Annealing acceptation
          function.
        + `compute_initial_temp`_ A SA function which allows to compute the
          initial temperature of the simulated annealing
        + `neigh_func_csa`_ The classical neighborhood relationship for the
          simulated annealing
        + `neigh_func_default`_ A SA function which computes a neighbor of a
          given point
        + `neigh_func_fsa`_ The Fast Simulated Annealing neghborhood
          relationship
        + `neigh_func_vfsa`_ The Very Fast Simulated Annealing neighborhood
          relationship
        + `temp_law_csa`_ The classical temperature decrease law
        + `temp_law_default`_ A SA function which computed the temperature of
          the next temperature stage
        + `temp_law_fsa`_ The Szu and Hartley Fast simulated annealing
        + `temp_law_huang`_ The Huang temperature decrease law for the
          simulated annealing
        + `temp_law_vfsa`_ This function implements the Very Fast Simulated
          Annealing from L. Ingber


+ `Symbolic`_

    + `addf`_ symbolic addition
    + `ldivf`_ left symbolic division
    + `mulf`_ symbolic multiplication
    + `rdivf`_ right symbolic division
    + `subf`_ symbolic subtraction

+ `XML Management`_

    + `XMLObjects`_ Describe the properties of the different XML objects
    + `xmlAddNs`_ Add a namespace to a XML Element
    + `xmlAsNumber`_ Convert the result of a XPath query into a row of
      numbers
    + `xmlAsText`_ Convert the result of a XPath query into a row of
      strings
    + `xmlDTD`_ Create a XML DTD object
    + `xmlDelete`_ Delete a XML document
    + `xmlDocument`_ Create a new XML document
    + `xmlDump`_ Dump a XML object
    + `xmlElement`_ Create a new XML element
    + `xmlFormat`_ Format a Scilab variable into XML
    + `xmlGetNsByHref`_ Get a namespace by its href
    + `xmlGetNsByPrefix`_ Get a namespace by prefix
    + `xmlGetOpenDocs`_ Get all open XML documents or all open XML
      Validation files.
    + `xmlIsValidObject`_ Test the existence of an XML object
    + `xmlNs`_ Create a new XML Namespace
    + `xmlRead`_ Read a XML stream from a local or distant file
    + `xmlReadStr`_ Read a XML tree from a string
    + `xmlRelaxNG`_ Create a XML Relax NG object
    + `xmlRemove`_ Remove an element or a list of elements from their
      parents
    + `xmlSchema`_ Create a XML Schema object
    + `xmlSetAttributes`_ Set the attributes name and value.
    + `xmlValidate`_ Validate a document in using a DTD, a Relax NG or a
      Schema.
    + `xmlWrite`_ Write a XML document in a file
    + `xmlXPath`_ Make an XPath query on a XML document

+ `Files : Input/Output functions`_

    + `basename`_ strip directory and suffix from filenames
    + `chdir`_ changes Scilab current directory
    + `copyfile`_ copies a file
    + `createdir`_ makes new directory
    + `deletefile`_ deletes a file
    + `dir`_ gets file list
    + `dirname`_ gets directory from filenames
    + `dispfiles`_ displays opened files properties
    + `fileext`_ returns extension for a file path
    + `fileinfo`_ provides information about a file
    + `fileparts`_ returns the path, filename and extension for a file
      path
    + `filesep`_ returns directory separator for current platform
    + `findfiles`_ finding all files with a given file specification
    + `fprintf`_ Emulator of C language fprintf function. *This function
      is obsolete*
    + `fprintfMat`_ writes a matrix in a file
    + `fscanf`_ Converts formatted input read on a file
    + `fscanfMat`_ reads a matrix from a text file
    + `fullfile`_ builds a full filename from parts
    + `fullpath`_ creates an full path name for the specified relative
      path name.
    + `get_absolute_file_path`_ gives an absolute pathname of a file
      opened in Scilab
    + `getdrives`_ gets the drive letters of all mounted filesystems on
      the computer
    + `getlongpathname`_ gets long path name
    + `getmd5`_ get md5 checksum
    + `getrelativefilename`_ given an absolute directory and an absolute
      filename, returns a relative file name
    + `getshortpathname`_ gets short path name
    + `percentio`_ a variable, which keeps standard input and standard
      output (file descriptor)
    + `isdir`_ checks if argument is a directory path
    + `isfile`_ checks whether argument is an existing file
    + `listfiles`_ list of files
    + `listvarinfile`_ list of variables in a saved data file
    + `ls`_ shows files
    + `maxfiles`_ sets the limit for the number of files a Scilab is
      allowed to have open simultaneously
    + `mclearerr`_ resets binary file access errors
    + `mclose`_ closes an opened file
    + `mdelete`_ deletes file(s)
    + `meof`_ check if end of file has been reached
    + `merror`_ tests the file access errors indicator
    + `mfprintf`_ converts, formats, and writes data to a file
    + `mfscanf`_ reads its input from the character string (interface to
      the C sscanf function)
    + `mget`_ reads byte or word in a given binary format and returns an
      int type
    + `mgetl`_ reads lines from an text file
    + `mgetstr`_ reads a character string from a file
    + `mkdir`_ Make new directory
    + `mopen`_ open a file in Scilab
    + `movefile`_ Move file or directory
    + `mput`_ writes byte or word in a given binary format
    + `mputl`_ writes strings in an ascii file
    + `mputstr`_ write a character string in a file
    + `mseek`_ set current position in binary file.
    + `mtell`_ binary file management
    + `newest`_ returns newest file of a set of files
    + `pathconvert`_ pathnames convertion between POSIX and windows.
    + `pathsep`_ returns path separator for current platform
    + `pwd`_ get Scilab current directory
    + `removedir`_ Remove a directory
    + `rmdir`_ Remove a directory
    + `save_format`_ format of files produced by "save"
    + `scanf`_ Converts formatted input on standard input
    + `scanf_conversion`_ scanf, sscanf, fscanf conversion specifications
    + `sscanf`_ Converts formatted input given by a string
    + `tempname`_ Unique name for temporary file

+ `Input/Output functions`_

    + `file`_ file management
    + `getenv`_ get the value of an environment variable
    + `getio`_ get Scilab input/output logical units
    + `getpid`_ get Scilab process identificator
    + `getscilabkeywords`_ returns a list with all scilab keywords.
    + `halt`_ stop execution
    + `host`_ Unix or DOS command execution
    + `input`_ prompt for user input
    + `load`_ Load a saved variable or a serie of variables
    + `read`_ matrices read
    + `read4b`_ fortran file binary read
    + `readb`_ fortran file binary read
    + `save`_ Save a variable or a serie of variables in a binary file
    + `setenv`_ set the value of an environment variable
    + `unix`_ shell (sh) command execution
    + `unix_g`_ shell (sh) command execution, output redirected to a
      variable
    + `unix_s`_ shell (sh) command execution, no output
    + `unix_w`_ shell (sh) command execution, output redirected to scilab
      window
    + `unix_x`_ shell (sh) command execution, output redirected to a
      window
    + `writb`_ fortran file binary write
    + `write`_ write in a formatted file
    + `write4b`_ fortran file binary write

+ `Graphics`_

    + `2d_plot`_

        + `LineSpec`_ to quickly customize the lines appearance in a plot
        + `Matplot`_ 2D plot of a matrix using colors
        + `Matplot1`_ 2D plot of a matrix using colors
        + `Matplot_properties`_ description of the Matplot entities properties
        + `Sfgrayplot`_ smooth 2D plot of a surface defined by a function
          using colors
        + `Sgrayplot`_ smooth 2D plot of a surface using colors
        + `champ`_ 2D vector field plot
        + `champ1`_ 2D vector field plot with colored arrows
        + `champ_properties`_ description of the 2D vector field entity
          properties
        + `comet`_ 2D comet animated plot.
        + `contour2d`_ level curves of a surface on a 2D plot
        + `contour2di`_ compute level curves of a surface on a 2D plot
        + `contourf`_ filled level curves of a surface on a 2D plot
        + `errbar`_ Add vertical error bars on a 2D plot
        + `fchamp`_ direction field of a 2D first order ODE
        + `fcontour2d`_ Level curves of a surface defined by a function on a
          2D plot (obsolete function)
        + `fec`_ pseudo-color plot of a function defined on a triangular mesh
        + `fec_properties`_ description of the fec entities properties
        + `fgrayplot`_ 2D plot of a surface defined by a function using colors
        + `fplot2d`_ 2D plot of a curve defined by a function
        + `grayplot`_ 2D plot of a surface using colors
        + `grayplot_properties`_ description of the grayplot entities
          properties
        + `graypolarplot`_ Polar 2D plot of a surface using colors
        + `histplot`_ plot a histogram
        + `paramfplot2d`_ animated plot of a 2D parametrized curve.
        + `plot`_ 2D plot
        + `plot2d`_ 2D plot
        + `plot2d1`_ 2D plot (logarithmic axes) (obsolete)
        + `plot2d2`_ 2D plot (step function)
        + `plot2d3`_ 2D plot (vertical bars)
        + `plot2d4`_ 2D plot (arrows style)
        + `polarplot`_ Plot polar coordinates

    + `3d_plot`_

        + `comet3d`_ 3D comet animated plot.
        + `contour`_ level curves on a 3D surface
        + `eval3d`_ values of a function on a grid
        + `eval3dp`_ compute facets of a 3D parametric surface
        + `fac3d`_ 3D plot of a surface (obsolete)
        + `fcontour`_ level curves on a 3D surface defined by a function
          (obsolete function)
        + `fplot3d`_ 3D plot of a surface defined by a function
        + `fplot3d1`_ 3D gray or color level plot of a surface defined by a
          function
        + `genfac3d`_ Compute facets of a 3D surface
        + `geom3d`_ projection from 3D on 2D after a 3D plot
        + `hist3d`_ 3D representation of a histogram
        + `mesh`_ 3D mesh plot
        + `milk_drop`_ Milk drop 3D function
        + `nf3d`_ Rectangular facets to plot3d parameters
        + `param3d`_ 3D plot of a parametric curve
        + `param3d1`_ 3D plot of parametric curves
        + `param3d_properties`_ description of the 3D curves entities
          properties
        + `plot3d`_ 3D plot of a surface
        + `plot3d1`_ 3D gray or color level plot of a surface
        + `plot3d2`_ plot surface defined by rectangular facets
        + `plot3d3`_ mesh plot surface defined by rectangular facets
        + `secto3d`_ 3D surfaces conversion
        + `surf`_ 3D surface plot
        + `surface_properties`_ description of the 3D entities properties

    + `annotation`_

        + `captions`_ draw graph captions
        + `label_properties`_ description of the Label entity properties
        + `legend`_ draw graph legend
        + `legend_properties`_ description of the Legend entity properties.
        + `legends`_ draw graph legend
        + `title`_ display a title on a graphic window
        + `xlabel`_ label z-axis
        + `xtitle`_ add titles on a graphics window

    + `axes_operations`_

        + `axes_properties`_ description of the axes entity properties
        + `gca`_ Return handle of current axes.
        + `gda`_ Return handle of default axes.
        + `graduate`_ Pretty axis graduations
        + `isoview`_ set scales for isometric plot (do not change the size of
          the window)
        + `newaxes`_ Creates a new Axes entity
        + `plotframe`_ plot a frame with scaling and grids. **This function is
          obsolete.**
        + `replot`_ redraw the current graphics window with new boundaries
        + `rotate_axes`_ Interactive rotation of an Axes handle.
        + `sca`_ set the current axes entity
        + `sda`_ Set default axes.
        + `subplot`_ divide a graphics window into a matrix of sub-windows
        + `unzoom`_ unzoom graphics
        + `zoom_rect`_ zoom a selection of the current graphic figure

    + `axis`_

        + `axis_properties`_ description of the axis entity properties
        + `drawaxis`_ draw an axis

    + `bar_histogram`_

        + `bar`_ bar histogram
        + `barh`_ horizontal display of bar histogram
        + `barhomogenize`_ homogenize all the bars included in the current
          working axes

    + `Color management`_

        + `addcolor`_ add new colors to the current colormap
        + `autumncolormap`_ red through orange to yellow colormap
        + `bonecolormap`_ gray colormap with a light blue tone
        + `color`_ returns the color id of a color
        + `color_list`_ list of named colors
        + `colorbar`_ draw a colorbar
        + `colordef`_ Set default color values to display different color
          schemes
        + `colormap`_ using colormaps
        + `coolcolormap`_ cyan to magenta colormap
        + `coppercolormap`_ black to a light copper tone colormap
        + `getcolor`_ opens a dialog to show colors in the current colormap
        + `graycolormap`_ linear gray colormap
        + `hotcolormap`_ red to yellow colormap
        + `hsv2rgb`_ Converts HSV colors to RGB
        + `hsvcolormap`_ Hue-saturation-value colormap
        + `jetcolormap`_ blue to red colormap
        + `name2rgb`_ returns the RGB values of a named color
        + `oceancolormap`_ linear blue colormap
        + `pinkcolormap`_ sepia tone colorization on black and white images
        + `rainbowcolormap`_ red through orange, yellow, green,blue to violet
          colormap
        + `rgb2name`_ returns the name of a color
        + `springcolormap`_ magenta to yellow colormap
        + `summercolormap`_ green to yellow colormap
        + `whitecolormap`_ completely white colormap
        + `wintercolormap`_ blue to green colormap

    + `Datatips`_

        + `datatipCreate`_ Create a data tip on a polyline by program
        + `datatipGetEntities`_ Get all the entities compatible with datatips
          in the given axes.
        + `datatipGetStruct`_ Retreive the datatips data structure from the
          polyline entity.
        + `datatipInitStruct`_ Initialize the datatip structure associated
          with the given polyline.
        + `datatipManagerMode`_ Set or toggles the data tips mode.
        + `datatipMove`_ Move a specified datatip using the mouse.
        + `datatipRedraw`_ Redraw all datatips after a 3D rotation to adjust
          their positions
        + `datatipRemove`_ Removes a selected datatip
        + `datatipRemoveAll`_ Removes all datatips on a set of polylines.
        + `datatipSetDisplay`_ Set the function used to compute the datatip
          string.
        + `datatipSetInterp`_ Set the interpolation mode for tip location.
        + `datatipSetOrientation`_ Set the position of the text box associated
          with the given tip.
        + `datatipSetStruct`_ Stores the datatips data structure in the
          polyline entity.
        + `datatipSetStyle`_ Set the tip style for the given polyline
          datatips.
        + `datatipToggle`_ toggles the data tips mode.
        + `datatips`_ Tool for placing and editing tips along the plotted
          curves.
        + `orthProj`_ Computes the orthogonal projection of a point to a
          polyline in the plane.

    + `figure_operations`_

        + `clf`_ clear or reset the current graphic figure (window) to default
          values
        + `drawlater`_ makes axes children invisible.
        + `drawnow`_ draw hidden graphics entities.
        + `figure_properties`_ description of the graphics figure entity
          properties
        + `gcf`_ Return handle of current graphic window.
        + `gdf`_ Return handle of default figure.
        + `scf`_ set the current graphic figure (window)
        + `sdf`_ Set default figure.

    + `geometric_shapes`_

        + `arc_properties`_ description of the Arc entity properties
        + `rectangle_properties`_ description of the Rectangle entity
          properties
        + `xarc`_ draw a part of an ellipse
        + `xarcs`_ draw parts of a set of ellipses
        + `xarrows`_ draw a set of arrows
        + `xfarc`_ Fill a part of an ellipse
        + `xfarcs`_ Fill parts of a set of ellipses
        + `xfrect`_ fill a rectangle
        + `xrect`_ draw a rectangle
        + `xrects`_ draw or fill a set of rectangles

    + `handle`_

        + `copy`_ copy a graphics entity.
        + `delete`_ delete a graphic entity and its children.
        + `draw`_ draw an entity. **This function is obsolete.**
        + `gce`_ Get current entity handle.
        + `ged`_ Scilab Graphic Editor
        + `get_figure_handle`_ get a figure handle from its id
        + `glue`_ glue a set of graphics entities into an Compound.
        + `is_handle_valid`_ Check wether a set of graphic handles is still
          valid.
        + `relocate_handle`_ Move handles inside the graphic hierarchy.
        + `swap_handles`_ Permute two handles in the graphic Hierarchy.
        + `unglue`_ unglue a coumpound object and replace it by individual
          children.

    + `interaction`_

        + `dragrect`_ Drag rectangle(s) with mouse
        + `edit_curv`_ interactive graphic curve editor
        + `eventhandlerfunctions`_ Prototype of functions which may be used as
          event handler.
        + `locate`_ mouse selection of a set of points
        + `seteventhandler`_ set an event handler for the current graphic
          window
        + `xclick`_ Wait for a mouse click or an event in a graphic window.
        + `xgetmouse`_ get the mouse events and current position

    + `load_save`_

        + `xload`_ load a saved graphics
        + `xsave`_ save graphics into a file

    + `pie`_

        + `pie`_ draw a pie

    + `polygon`_

        + `polyline_properties`_ description of the Polyline entity properties
        + `xfpoly`_ fill a polygon
        + `xfpolys`_ fill a set of polygons
        + `xpoly`_ draw a polyline or a polygon
        + `xpolys`_ draw a set of polylines or polygons
        + `xrpoly`_ draw a regular polygon

    + `property`_

        + `get`_ Retrieve a property value from a graphics entity or an User
          Interface object.
        + `set`_ set a property value of a graphic entity object or of a User
          Interface object.

    + `style`_

        + `getlinestyle`_ dialog to select linestyle. **Obsolete function.**
        + `getmark`_ dialog to select mark (symbol). **Obsolete function**
        + `getsymbol`_ dialog to select a symbol and its size. **Obsolete
          function**

    + `text`_

        + `getfont`_ dialog to select font **.Obsolete function.**
        + `graphics_fonts`_ description of fonts used in graphic figures
        + `math_rendering_features_in_graphic`_ Display mathematical equations
          in Scilab graphics through the LaTeX or MathML languages.
        + `stringbox`_ Compute the bounding rectangle of a text or a label.
        + `text_properties`_ description of the Text entity properties
        + `titlepage`_ add a title in the middle of a graphics window
        + `xinfo`_ draw an info string in the message subwindow
        + `xlfont`_ load a font in the graphic context or query loaded font
        + `xstring`_ draw strings
        + `xstringb`_ draw strings into a box
        + `xstringl`_ compute a box which surrounds strings

    + `transform`_

        + `move`_ move, translate, a graphic entity and its children.
        + `rotate`_ rotation of a set of points
        + `scaling`_ affine transformation of a set of points

    + `window_control`_

        + `havewindow`_ return scilab window mode
        + `show_window`_ raises a graphics window
        + `winsid`_ return the list of graphics windows
        + `xselect`_ raise the current graphics window

    + `GlobalProperty`_ to customize the objects appearance (curves,
      surfaces...) in a plot or surf command.
    + `Graphics`_ graphics library overview
    + `alufunctions`_ pixel drawing functions. **This function is
      obsolete.**
    + `clear_pixmap`_ erase the pixmap buffer **This function is
      obsolete.**
    + `Compound_properties`_ description of the Compound entity properties
    + `graphics_entities`_ description of the graphics entities data
      structures
    + `object_editor`_ description of the graphic object editor capacities
    + `pixel_drawing_mode`_ bitwise pixel rendering functions.
    + `plzr`_ pole-zero plot
    + `rubberbox`_ Rubberband box for rectangle selection
    + `segs_properties`_ description of the Segments entity properties
    + `show_pixmap`_ send the pixmap buffer to the screen **This function
      is obsolete.**
    + `square`_ set scales for isometric plot (change the size of the
      window)
    + `twinkle`_ is used to have a graphics entity twinkle
    + `xbasr`_ redraw a graphics window
    + `xchange`_ transform real to pixel coordinates
    + `xclear`_ clears a graphics window
    + `xdel`_ delete a graphics window
    + `xget`_ get current values of the graphics context. **This function
      is obsolete.**
    + `xgetech`_ get the current graphics scale
    + `xgraduate`_ axis graduation
    + `xgrid`_ add a grid on a 2D plot
    + `xname`_ change the name of the current graphics window
    + `xnumb`_ draw numbers
    + `xpause`_ suspend Scilab
    + `xsegs`_ draw unconnected segments
    + `xset`_ set values of the graphics context. **This function is
      obsolete.**
    + `xsetech`_ set the sub-window of a graphics window for plotting
    + `xsetm`_ dialog to set values of the graphics context. **Obsolete
      function.**

+ `Graphics : exporting and printing`_

    + `driver`_ Select a graphics driver
    + `xend`_ Close a graphics export session
    + `xinit`_ Initialization of a graphics driver
    + `xs2bmp`_ Export graphics to BMP.
    + `xs2emf`_ Export graphics to EMF (Only under Windows).
    + `xs2eps`_ Export graphics to EPS.
    + `xs2gif`_ Export graphics to GIF.
    + `xs2jpg`_ Export graphics to JPG.
    + `xs2pdf`_ Export graphics to PDF.
    + `xs2png`_ Export graphics to PNG.
    + `xs2ppm`_ Export graphics to PPM.
    + `xs2ps`_ Export graphics to PS.
    + `xs2svg`_ Export graphics to SVG.

+ `GUI`_

    + `Tree`_

        + `uiConcatTree`_ Concatenation of Trees
        + `uiCreateNode`_ Creation of node (for Scilab Tree)
        + `uiCreateTree`_ Creation of a Tree
        + `uiDeleteNode`_ Deletion in a Tree
        + `uiDisplayTree`_ Printing a Tree in GUI mode
        + `uiDumpTree`_ Printing a Tree in the console (text mode)
        + `uiEqualsTree`_ Comparing two trees
        + `uiFindNode`_ Find node in Tree
        + `uiGetChildrenNode`_ Get Children of a node
        + `uiGetNodePosition`_ Get the position(s) of a node
        + `uiGetParentNode`_ Get Parent of a node
        + `uiInsertNode`_ Insertion in a Tree

    + `about`_ show "about scilab" dialog box
    + `addmenu`_ interactive button or menu definition
    + `clipboard`_ Copy and paste strings to and from the system
      clipboard.
    + `close`_ close a figure
    + `delmenu`_ interactive button or menu deletion
    + `exportUI`_ Call the file export graphical interface
    + `figure`_ create a figure
    + `findobj`_ find an object with specified property
    + `gcbo`_ Handle of the object whose callback is executing.
    + `getcallbackobject`_ Return the handle of the object whose callback
      is executing.
    + `getinstalledlookandfeels`_ returns a string matrix with all Look
      and Feels.
    + `getlookandfeel`_ gets the current default look and feel.
    + `getvalue`_ xwindow dialog for data acquisition
    + `messagebox`_ Open a message box.
    + `printfigure`_ Opens a printing dialog and prints a figure.
    + `printsetupbox`_ Display print dialog box.
    + `progressionbar`_ Draw a progression bar
    + `root_properties`_ description of the root object properties.
    + `setlookandfeel`_ sets the current default look and feel.
    + `setmenu`_ interactive button or menu activation
    + `toolbar`_ show or hide a toolbar
    + `toprint`_ Send text or figure to the printer.
    + `tree_show`_ Display a tree view of a list
    + `uicontextmenu`_ Creates a context menu
    + `uicontrol`_ create a Graphic User Interface object
    + `uigetcolor`_ Opens a dialog for selecting a color.
    + `uigetdir`_ dialog for selecting a directory
    + `uigetfile`_ dialog window to get a file(s) name(s), path and filter
      index
    + `uigetfont`_ Opens a dialog for selecting a font.
    + `uimenu`_ Create a menu or a submenu in a figure
    + `uiputfile`_ Open standard dialog box for selecting and saving file.
    + `unsetmenu`_ interactive button or menu or submenu de-activation
    + `usecanvas`_ Get/Set the main component used for Scilab graphics.
    + `waitbar`_ Draw a waitbar
    + `x_choices`_ interactive Xwindow choices through toggle buttons
    + `x_choose`_ interactive window choice (modal dialog)
    + `x_choose_modeless`_ interactive window choice (not modal dialog)
    + `x_dialog`_ Dialog for interactive multi-lines input.
    + `x_matrix`_ Xwindow editing of matrix
    + `x_mdialog`_ Dialog for interactive vector/matrix input.

+ `Data Structures`_

    + `boolean`_ Scilab Objects, boolean variables and operators & | ~
    + `cell`_ Create a cell array of empty matrices.
    + `definedfields`_ return index of list's defined fields
    + `fieldnames`_ get a tlist, mlist or struct fields names
    + `getfield`_ list field extraction
    + `hypermat`_ initialize an N dimensional matrices
    + `hypermatrices`_ Scilab object, N dimensional matrices in Scilab
    + `iscell`_ Check if a variable is a cell array
    + `iscellstr`_ Check if a variable is a cell array of strings
    + `isfield`_ Checks if the given fieldname exists in the structure
    + `isstruct`_ Check if a variable is a structure array
    + `list`_ Scilab object and list function definition
    + `lsslist`_ Scilab linear state space function definition
    + `lstcat`_ list concatenation
    + `matrices`_ Scilab object, matrices in Scilab
    + `mlist`_ Scilab object, matrix oriented typed list definition.
    + `null`_ delete an element in a list
    + `rlist`_ Scilab rational fraction function definition
    + `setfield`_ list field insertion
    + `struct`_ create a struct
    + `tlist`_ Scilab object and typed list definition.
    + `type`_ Returns the type of a variable
    + `typename`_ associates a name to variable type
    + `typeof`_ object type

+ `Parameters`_

    + `add_param`_ Add a parameter to a list of parameters
    + `get_param`_ Get the value of a parameter in a parameter list
    + `init_param`_ Initialize the structure which will handles the
      parameters list
    + `is_param`_ Check if a parameter is present in a parameter list
    + `list_param`_ List all the parameters name in a list of parameters
    + `remove_param`_ Remove a parameter and its associated value from a
      list of parameters
    + `set_param`_ Set the value of a parameter in a parameter list

+ `Boolean`_

    + `bool2s`_ convert boolean matrix to a zero one matrix.
    + `find`_ find indices of boolean vector or matrix true elements

+ `Integers`_

    + `iconvert`_ conversion to 1 or 4 byte integer representation
    + `int8`_ conversion to 4 bytes unsigned integer representation
    + `inttype`_ type integers used in integer data types

+ `Strings`_

    + `ascii`_ string ascii conversions
    + `blanks`_ Create string of blank characters
    + `code2str`_ returns character string associated with Scilab integer
      codes. **This function is obsolete.**
    + `convstr`_ case conversion
    + `emptystr`_ zero length string
    + `eval`_ evaluation of a matrix of strings
    + `evstr`_ evaluation of expressions
    + `grep`_ find matches of a string in a vector of strings
    + `isalphanum`_ check that characters of a string are alphanumerics
    + `isascii`_ tests if character is a 7-bit US-ASCII character
    + `isdigit`_ check that characters of a string are digits between 0
      and 9
    + `isletter`_ check that characters of a string are alphabetics
      letters
    + `isnum`_ tests if a string represents a number
    + `justify`_ Justify character array.
    + `length`_ length of object
    + `part`_ extraction of strings
    + `regexp`_ find a substring that matches the regular expression
      string
    + `sci2exp`_ converts an expression to a string
    + `str2code`_ return scilab integer codes associated with a character
      string. **This function is obsolete.**
    + `strcat`_ concatenate character strings
    + `strchr`_ Find the first occurrence of a character in a string
    + `strcmp`_ compare character strings
    + `strcmpi`_ compare character strings (case independent)
    + `strcspn`_ Get span until character in string
    + `strindex`_ search position of a character string in an other
      string.
    + `string`_ conversion to string
    + `strings`_ Scilab Object, character strings
    + `stripblanks`_ Strips / trims leading and trailing blanks (and tabs)
      of strings
    + `strncpy`_ Copy characters from strings
    + `strrchr`_ Find the last occurrence of a character in a string
    + `strrev`_ returns string reversed
    + `strsplit`_ split a string into a vector of strings
    + `strspn`_ Get span of character set in string
    + `strstr`_ Locate substring
    + `strsubst`_ substitute a character string by another in a character
      string.
    + `strtod`_ Convert string to double.
    + `strtok`_ Split string into tokens
    + `tokenpos`_ returns the tokens positions in a character string.
    + `tokens`_ returns the tokens of a character string.
    + `tree2code`_ generates ascii definition of a Scilab function

+ `Sound file handling`_

    + `analyze`_ frequency plot of a sound signal
    + `auread`_ load .au sound file
    + `auwrite`_ writes .au sound file
    + `beep`_ Produce a beep sound
    + `lin2mu`_ linear signal to mu-law encoding
    + `loadwave`_ load a sound wav file into scilab
    + `mapsound`_ Plots a sound map
    + `mu2lin`_ mu-law encoding to linear signal
    + `playsnd`_ sound player facility
    + `savewave`_ save data into a sound wav file.
    + `sound`_ sound player facility
    + `soundsec`_ generates n sampled seconds of time parameter
    + `wavread`_ load .wav sound file
    + `wavwrite`_ writes .wav sound file

+ `Time and Date`_

    + `calendar`_ Calendar
    + `clock`_ Return current time as date vector
    + `date`_ Current date as date string
    + `datenum`_ Convert to serial date number
    + `datevec`_ Date components
    + `eomday`_ Return last day of month
    + `etime`_ Elapsed time
    + `getdate`_ get date and time information
    + `now`_ Return current date and time
    + `realtime`_ set dates origin or waits until date
    + `sleep`_ suspend Scilab
    + `tic`_ start a stopwatch timer
    + `timer`_ cpu time
    + `toc`_ Read the stopwatch timer
    + `weekday`_ Return day of week

+ `Output functions`_

    + `diary`_ diary of session
    + `disp`_ displays variables
    + `mprintf`_ converts, formats, and writes data to the main scilab
      window
    + `msprintf`_ converts, formats, and writes data in a string
    + `prettyprint`_ From any Scilab datatype and provide a representation
      to the TeX, LaTeX or MathML formats
    + `print`_ prints variables in a file
    + `printf_conversion`_ mprintf, msprintf, mfprintf conversion
      specifications
    + `ssprint`_ pretty print for linear system

+ `Xcos`_

    + `Batch functions`_

        + `lincos`_ Constructs by linearization a linear state-space model
          from a general dynamical system described by a xcos diagram
        + `scicos`_ OBSOLETE - see xcos
        + `scicos_simulate`_ Function for running xcos simulation in batch
          mode
        + `scicosim`_ xcos (batch) simulation function
        + `steadycos`_ Finds an equilibrium state of a general dynamical
          system described by a xcos diagram
        + `xcosValidateBlockSet`_ Function to validate Xcos Block interface
          function.
        + `xcosValidateCompareBlock`_ Function to compare two Xcos Blocks.
        + `xcos_simulate`_ Function for running xcos simulation in batch mode

    + `palettes`_

        + `Annotations palette`_

            + `Annotations_pal`_ Annotations palette
            + `TEXT_f`_ Free annotation

        + `Commonly used blocks palette`_

            + `Commonlyusedblocks_pal`_ Commonly used blocks palette
            + `LOGICAL_OP`_ Logical operation
            + `RELATIONALOP`_ Relational operation

        + `Continuous time systems palette`_

            + `Continuous_pal`_ Continuous time systems palette
            + `CLINDUMMY_f`_ Dummy
            + `CLR`_ Continuous transfer function
            + `CLSS`_ Continuous state-space system
            + `DERIV`_ Derivative
            + `INTEGRAL_f`_ Integration
            + `INTEGRAL_m`_ Integration
            + `PID`_ PID regulator
            + `TCLSS`_ Continuous linear system with jump
            + `TIME_DELAY`_ Time delay
            + `VARIABLE_DELAY`_ Variable delay

        + `Demonstrations blocks palette`_

            + `Demonstrationsblocks_pal`_ Demonstrations blocks palette
            + `AUTOMAT`_ automata (finite state machine)
            + `BOUNCE`_ Balls coordinates generator
            + `BOUNCEXY`_ Balls viewer
            + `BPLATFORM`_ Balls under a platform viewer
            + `PDE`_ 1D PDE block

        + `Discontinuities palette`_

            + `discontinuities_pal`_ discontinuities palette
            + `BACKLASH`_ Backlash
            + `DEADBAND`_ Deadband
            + `HYSTHERESIS`_ Hystheresis
            + `RATELIMITER`_ Rate limiter
            + `SATURATION`_ Saturation

        + `Discrete time systems palette`_

            + `Discrete_pal`_ Discrete time systems palette
            + `DELAYV_f`_ Variable delay
            + `DELAY_f`_ Discrete time delay
            + `DLR`_ Discrete transfer function
            + `DLRADAPT_f`_ Discrete Zero-Pole
            + `DLSS`_ Discrete state-space system
            + `DOLLAR_f`_ Delay operator
            + `REGISTER`_ Shift Register

        + `Electrical palette`_

            + `Electrical_pal`_ Electrical palette
            + `CCS`_ Controllable Modelica current source
            + `CVS`_ Controllable Modelica voltage source
            + `Capacitor`_ Electrical capacitor
            + `ConstantVoltage`_ Electrical DC voltage source
            + `CurrentSensor`_ Electrical current sensor
            + `Diode`_ Electrical diode
            + `Ground`_ Ground (zero potential reference)
            + `Gyrator`_ Modelica Gyrator
            + `IdealTransformer`_ Ideal Transformer
            + `Inductor`_ Electrical inductor
            + `NMOS`_ Simple NMOS Transistor
            + `NPN`_ NPN transistor
            + `OpAmp`_ Ideal opamp (norator-nullator pair)
            + `PMOS`_ Simple PMOS Transistor
            + `PNP`_ PNP transistor
            + `PotentialSensor`_ Potential sensor
            + `Resistor`_ Electrical resistor
            + `SineVoltage`_ Sine voltage source
            + `Switch`_ Non-ideal electrical switch
            + `VVsourceAC`_ Variable AC voltage source
            + `VariableResistor`_ Electrical variable resistor
            + `VoltageSensor`_ Electrical voltage sensor
            + `VsourceAC`_ Electrical AC voltage source

        + `Event handling palette`_

            + `Events_pal`_ Event handling palette
            + `ANDBLK`_ Activation and
            + `ANDLOG_f`_ Logical and
            + `CEVENTSCOPE`_ Activation scope
            + `CLKFROM`_ Receives data from a corresponding CLKGOTO
            + `CLKGOTO`_ Pass block input to CLKFROM block
            + `CLKGotoTagVisibility`_ Define Scope of CLKGOTO tag visibility
            + `CLKSOMV_f`_ Activation union
            + `EDGE_TRIGGER`_ EDGE_TRIGGER block
            + `ESELECT_f`_ Synchronous block Event-Select
            + `EVTDLY_c`_ Event delay
            + `EVTGEN_f`_ Event generator
            + `EVTVARDLY`_ Event variable delay
            + `Extract_Activation`_ Extract_Activation block
            + `HALT_f`_ Halt
            + `IFTHEL_f`_ Synchronous block If-Then-Else
            + `MCLOCK_f`_ MCLOCK_f title
            + `MFCLCK_f`_ MFCLCK_f title
            + `M_freq`_ Multiple Frequencies
            + `VirtualCLK0`_ Triggered Always Active Blocks
            + `freq_div`_ Frequency division

        + `Implicit palette`_

            + `Implicit_pal`_ Implicit palette
            + `CONSTRAINT_c`_ Constraint
            + `DIFF_f`_ Derivative

        + `Integer palette`_

            + `Integer_pal`_ Integer palette
            + `BITCLEAR`_ Clear a Bit
            + `BITSET`_ Set a Bit
            + `CONVERT`_ Data Type Conversion
            + `DFLIPFLOP`_ D flip-flop
            + `DLATCH`_ D latch flip-flop
            + `EXTRACTBITS`_ Bits Extraction
            + `INTMUL`_ Integer matrix multiplication
            + `JKFLIPFLOP`_ JK flip-flop
            + `LOGIC`_ Combinatorial Logic
            + `SHIFT`_ Shift/Rotates Bits
            + `SRFLIPFLOP`_ SR flip-flop

        + `Lookup tables palette`_

            + `Lookuptables_pal`_ Lookup tables palette
            + `INTRP2BLK_f`_ 2D interpolation
            + `INTRPLBLK_f`_ Interpolation
            + `LOOKUP_f`_ Lookup table

        + `Math operations palette`_

            + `Mathoperations_pal`_ Math operations palette
            + `ABS_VALUE`_ Absolute value
            + `BIGSOM_f`_ Scalar or vector Addition/Soustraction
            + `COSBLK_f`_ Cosine
            + `EXPBLK_m`_ Exponential of a scalar
            + `GAINBLK_f`_ Gain
            + `INVBLK`_ Inverse
            + `LOGBLK_f`_ Logarithm
            + `MATMAGPHI`_ Complex from/to Magnitude and Angle Conversion
            + `MATZREIM`_ Complex decomposition/composition
            + `MAXMIN`_ Maximum or minimum value of vectors's elements
            + `MAX_f`_ Maximum value of a vector's elements
            + `MIN_f`_ Minimum value of a vector's elements
            + `POWBLK_f`_ Array power
            + `PRODUCT`_ Element-wise vector multiplication/division
            + `PROD_f`_ Element-wise product
            + `SIGNUM`_ Sign
            + `SINBLK_f`_ Sine
            + `SQRT`_ Square root
            + `SUMMATION`_ Matrix Addition/Subtraction
            + `SUM_f`_ Addition
            + `TANBLK_f`_ Tangent
            + `TrigFun`_ Trigonometric function

        + `Matrix operation palette`_

            + `Matrix_pal`_ Matrix operation palette
            + `CUMSUM`_ Cumulative Sum
            + `EXTRACT`_ Matrix extractor
            + `EXTTRI`_ Triangular or Diagonal Extraction
            + `MATBKSL`_ Left matrix division
            + `MATCATH`_ Horizontal Concatenation
            + `MATCATV`_ Vertical Concatenation
            + `MATDET`_ Matrix Determinant
            + `MATDIAG`_ Create Diagonal Matrix
            + `MATDIV`_ Matrix division
            + `MATEIG`_ Matrix Eigenvalues
            + `MATEXPM`_ Matrix Exponential
            + `MATINV`_ Matrix Inverse
            + `MATLU`_ LU Factorization
            + `MATMUL`_ Matrix Multiplication
            + `MATPINV`_ Matrix PseudoInverse
            + `MATRESH`_ Matrix Reshape
            + `MATSING`_ SVD Decomposition
            + `MATSUM`_ Sum of Matrix's Elements
            + `MATTRAN`_ Matrix Transpose
            + `MATZCONJ`_ Conjugate of Matrix's Elements
            + `RICC`_ Riccati Equation
            + `ROOTCOEF`_ Polynomial Coefficient Computation
            + `SUBMAT`_ Sub-matrix Extraction

        + `Port & Subsystem palette`_

            + `Portaction_pal`_ Port & Subsystem palette
            + `CLKINV_f`_ Input activation port
            + `CLKOUTV_f`_ Output activation port
            + `INIMPL_f`_ Implicit Input port
            + `IN_f`_ Regular Input Port
            + `OUTIMPL_f`_ Output implicit port
            + `OUT_f`_ Regular Output Port

        + `Signal processing palette`_

            + `Signalprocessing_pal`_ Signal processing palette
            + `QUANT_f`_ Quantization
            + `SAMPHOLD_m`_ Sample and hold

        + `Signal routing palette`_

            + `Signalrouting_pal`_ Signal routing palette
            + `DEMUX`_ Demultiplexer
            + `EXTRACTOR`_ Extractor
            + `FROM`_ FROM Receives data from a corresponding GOTO
            + `FROMMO`_ Receives data from a corresponding GOTOMO
            + `GOTO`_ GOTO Pass block input to From block
            + `GOTOMO`_ Pass block input to FROMMO block
            + `GotoTagVisibility`_ Define Scope of GOTO tag visibility
            + `GotoTagVisibilityMO`_ Define Scope of GOTOMO tag visibility
            + `ISELECT_m`_ Iselect
            + `MUX`_ Multiplexer
            + `M_SWITCH`_ Multi-port switch
            + `NRMSOM_f`_ Merge data
            + `RELAY_f`_ Relay
            + `SELECT_m`_ Select
            + `SELF_SWITCH`_ Switch
            + `SWITCH2_m`_ Switch2
            + `SWITCH_f`_ Switch

        + `Sinks palette`_

            + `Sinks_pal`_ Sinks palette
            + `AFFICH_m`_ Display
            + `BARXY`_ y=f(x) animated viewer
            + `CANIMXY`_ y=f(x) animated viewer
            + `CANIMXY3D`_ z=f(x,y) animated viewer
            + `CFSCOPE`_ Floating point scope
            + `CMAT3D`_ Matrix z values 3D viewer
            + `CMATVIEW`_ Matrix Colormapped viewer
            + `CMSCOPE`_ Multi display scope
            + `CSCOPE`_ Single Display Scope
            + `CSCOPXY`_ y=f(x) permanent viewer
            + `CSCOPXY3D`_ z=f(x,y) permanent viewer
            + `ENDBLK`_ END block
            + `END_c`_ END_c block
            + `TOWS_c`_ Data to Scilab worspace
            + `TRASH_f`_ Trash block
            + `WFILE_f`_ Write to output file
            + `WRITEAU_f`_ Write AU sound file
            + `WRITEC_f`_ Write to C binary file

        + `Sources palette`_

            + `Sources_pal`_ Sources palette
            + `CLOCK_c`_ Activation clock
            + `CONST_m`_ Constant
            + `CURV_f`_ Curve
            + `Counter`_ Counter
            + `FROMWSB`_ Data from Scilab workspace to Xcos
            + `GENSIN_f`_ Sine wave generator
            + `GENSQR_f`_ Square wave generator
            + `Modulo_Count`_ Modulo counter (0 to N counter)
            + `PULSE_SC`_ Pulse Generator
            + `RAMP`_ Ramp
            + `RAND_m`_ Random generator
            + `READAU_f`_ Read AU sound file
            + `READC_f`_ Read binary data
            + `RFILE_f`_ Read from input file
            + `SAWTOOTH_f`_ Sawtooth generator
            + `STEP_FUNCTION`_ Step Function
            + `SampleCLK`_ Sample Time Clock
            + `Sigbuilder`_ Signal creator/generator
            + `TIME_f`_ Time
            + `TKSCALE`_ Adjust value with a graphical widget.

        + `Thermohydraulics palette`_

            + `ThermoHydraulics_pal`_ Thermal-Hydraulics toolbox
            + `Bache`_ Thermal-hydraulic tank (reservoir)
            + `PerteDP`_ Thermal-hydraulic pipe
            + `PuitsP`_ Thermal-hydraulic drain (well)
            + `SourceP`_ Thermal-hydraulic constant pressure source
            + `VanneReglante`_ Thermal-hydraulic control valve

        + `User defined functions palette`_

            + `Userdefinedfunctions_pal`_ User defined functions palette
            + `CBLOCK`_ New C
            + `DSUPER`_ Masked super block
            + `EXPRESSION`_ Mathematical expression
            + `MBLOCK`_ Modelica generic block
            + `SUPER_f`_ Super block
            + `c_block`_ C language
            + `fortran_block`_ Fortran
            + `generic_block3`_ Generic block
            + `scifunc_block_m`_ Scilab function block

        + `Zero crossing detection palette`_

            + `Zerocrossingdetection_pal`_ Zero crossing detection palette
            + `GENERAL_f`_ GENERAL_f title
            + `NEGTOPOS_f`_ Threshold negative to positive
            + `POSTONEG_f`_ Threshold positive to negative
            + `ZCROSS_f`_ Threshold detection at zero


    + `Programming xcos Blocks`_

        + `C Computational Functions`_

            + `C_macros`_ Utilities C macros
            + `C_struct`_ C Block structure of a computational function
            + `C_utils`_ Utilities C functions

        + `Scilab Computational Functions`_

            + `sci_struct`_ Scicos block structure of a scilab computational
              function

        + `Utilities Functions`_

            + `curblock`_ Return the current called xcos block during the
              simulation
            + `getblocklabel`_ Get the label of a scicos block
            + `getscicosvars`_ Supervisor utility function
            + `phase_simulation`_ Get the current simulation phase
            + `pointer_xproperty`_ Get the type of a continuous time state
              variable
            + `scicos_time`_ Returns the current time during simulation
            + `set_blockerror`_ set the block error number
            + `set_xproperty`_ Set the type of a continuous time state variable


    + `Scilab/Xcos Data Structures`_

        + `Blocks`_

            + `scicos_block`_ Define a block structure
            + `scicos_graphics`_ Define a graphics structure
            + `scicos_model`_ Define a model structure

        + `Compilation/Simulation`_

            + `scicos_cpr`_ Compiled Scicos structure
            + `scicos_sim`_ Define a sim structure
            + `scicos_state`_ Define a state structure

        + `Diagram`_

            + `scicos_diagram`_ Define a scs_m structure
            + `scicos_params`_ Define a param structure

        + `Links`_

            + `scicos_link`_ Define a link structure


    + `Scilab Utilities Functions`_

        + `block_parameter_error`_ Displays a parameter input error box for an
          Xcos block
        + `buildouttb`_ Build of the sublist %cpr.state.outtb
        + `create_palette`_ Palette generator
        + `getModelicaPath`_ Get the Modelica directory path needed by Xcos
          diagram containing Modelica blocks
        + `get_scicos_version`_ Get the current Scicos version
        + `importXcosDiagram`_ Import an Xcos diagram on Scilab
        + `loadScicos`_ Load the Xcos simulation native library.
        + `loadXcosLibs`_ Load most of the Xcos macros
        + `scicos_debug`_ Set the level of the Scicos debugging
        + `scicos_getvalue`_ xwindow dialog for Xcos
        + `standard_inputs`_ Get the position of the input ports of a block in
          Xcos editor.
        + `standard_origin`_ Get the position of a block in the Xcos editor.
        + `standard_outputs`_ Get the position of the output ports of a block
          in Xcos editor.
        + `var2vec`_ Transform a scilab variable in a vector of double
        + `vec2var`_ Transform a vector of double in a scilab variable
        + `xcosPal`_ Instanciate a new Xcos palette on Scilab.
        + `xcosPalAdd`_ Add a palette to the Scilab/Xcos palette manager.
          Optional property can be added to set the category of the palette.
        + `xcosPalAddBlock`_ Add a block to a Scilab/Xcos palette instance.
          Some optional properties can be added to customize the palette icon
          and the style of the block.
        + `xcosPalExport`_ Export a palette instance to a path.

    + `xcos`_ Block diagram editor and GUI for the hybrid simulator
    + `xcos_menu_entries`_ Xcos editor menu entries

+ `Spreadsheet`_

    + `read_csv`_ reads comma-separated value file
    + `readxls`_ reads an Excel file
    + `write_csv`_ writes comma-separated value file
    + `xls_open`_ opens an Excel file for reading
    + `xls_read`_ reads a sheet in an Excel file

+ `Console`_

    + `clc`_ Clear Command Window
    + `completion`_ returns words that start with the text you pass as
      parameter.
    + `console`_ Keyboard Shortcuts in NW/NWNI mode
    + `lines`_ rows and columns used for display
    + `prompt`_ Get/Set current prompt
    + `tohome`_ Move the cursor to the upper left corner of the Command
      Window

+ `History manager`_

    + `addhistory`_ add lines to current history.
    + `browsehistory`_ Open the Scilab history browser
    + `displayhistory`_ displays current scilab history
    + `gethistory`_ returns current scilab history in a string matrix
    + `gethistoryfile`_ get filename used for scilab's history
    + `historymanager`_ enable or disable history manager
    + `historysize`_ get number of lines in history
    + `loadhistory`_ load a history file
    + `removelinehistory`_ remove the Nth line in history.
    + `resethistory`_ Deletes all entries in the scilab history.
    + `saveafterncommands`_ Save the history file after n statements are
      added to the file.
    + `saveconsecutivecommands`_ Save consecutive duplicate commands.
    + `savehistory`_ save the current history in a file
    + `sethistoryfile`_ set filename for scilab history

+ `Matlab binary files I/O`_

    + `loadmatfile`_ loads a Matlab V6 MAT-file (binary or ASCII) into
      Scilab
    + `matfile_close`_ Closes a Matlab V5 binary MAT-file.
    + `matfile_listvar`_ Lists variables of a Matlab V5 binary MAT-file.
    + `matfile_open`_ Opens a Matlab V5 binary MAT-file.
    + `matfile_varreadnext`_ Reads next variable in a Matlab V5 binary
      MAT-file.
    + `matfile_varwrite`_ Write a variable in a Matlab V5 binary MAT-file.
    + `savematfile`_ write a Matlab MAT-file (binary or ASCII)

+ `Matlab to Scilab Conversion Tips`_

    + `Matlab-Scilab equivalents`_

        + `A`_

            + `m2sci_abs`_ Absolute value and complex magnitude
            + `m2sci_acos`_ Inverse cosine
            + `m2sci_acosh`_ Inverse hyperbolic cosine
            + `m2sci_acot`_ Inverse cotangent
            + `m2sci_acoth`_ Inverse hyperbolic cotangent
            + `m2sci_acsc`_ Inverse cosecant
            + `m2sci_acsch`_ Inverse hyperbolic cosecant
            + `m2sci_all`_ Test to determine if all elements are nonzero
            + `m2sci_angle`_ Phase angle
            + `m2sci_any`_ Test to determine if any nonzeros elements
            + `m2sci_asec`_ Inverse secant
            + `m2sci_asech`_ Inverse hyperbolic secant
            + `m2sci_asin`_ Inverse sine
            + `m2sci_asinh`_ Inverse hyperbolic sine
            + `m2sci_atan`_ Two-quadrant inverse tangent
            + `m2sci_atan2`_ Four-quadrant inverse tangent
            + `m2sci_atanh`_ Inverse hyperbolic tangent

        + `B`_

            + `m2sci_balance`_ Diagonal scaling to improve eigenvalue accuracy
            + `m2sci_bar`_ Bar histogram
            + `m2sci_barh`_ Bar histogram horizontal
            + `m2sci_beep`_ Produce a beep sound
            + `m2sci_besseli`_ Modified Bessel functions of the first kind
            + `m2sci_besselj`_ Bessel functions of the first kind
            + `m2sci_besselk`_ Modified Bessel functions of the second kind
            + `m2sci_bessely`_ Bessel functions of the second kind
            + `m2sci_beta`_ Beta function
            + `m2sci_bin2dec`_ Returns the integer corresponding to a Given binary
              representation
            + `m2sci_bitand`_ The AND of two integers
            + `m2sci_bitcmp`_ The binary complementary of an integer
            + `m2sci_bitget`_ Gets the bit of an integer whose the positon is
              given in the input argument
            + `m2sci_bitor`_ The OR of two integers
            + `m2sci_bitxor`_ Returns the exclusive OR of two integers
            + `m2sci_blanks`_ A string of blanks
            + `m2sci_box`_ Display axes border
            + `m2sci_break`_ Terminate execution of a for loop or while loop

        + `C`_

            + `m2sci_case`_ Case switch
            + `m2sci_cat`_ Arrays concatenation
            + `m2sci_cd`_ Change/get working directory
            + `m2sci_ceil`_ Round up
            + `m2sci_cell`_ Create cell array
            + `m2sci_cell2mat`_ Convert a cell array into a matrix
            + `m2sci_cellstr`_ Convert strings vector (or strings matrix) into a
              cell of strings
            + `m2sci_chol`_ Cholesky factorization
            + `m2sci_cla`_ Clear current axes
            + `m2sci_clc`_ Clear Command Window
            + `m2sci_clear`_ Remove items from workspace, freeing up system memory
            + `m2sci_clf`_ Clear current figure window
            + `m2sci_clock`_ Current time as a date vector
            + `m2sci_close`_ Delete specified figure
            + `m2sci_closereq`_ Default figure close request function
            + `m2sci_colordef`_ Set default property values to display different
              color schemes
            + `m2sci_complex`_ Returns the complex form corresponding to the given
              real part and imaginary part
            + `m2sci_continue`_ Keyword to pass control to the next iteration of a
              loop
            + `m2sci_conv`_ 1-D Convolution
            + `m2sci_conv2`_ 2-D Convolution
            + `m2sci_cos`_ Cosine
            + `m2sci_cosh`_ Hyperbolic cosine
            + `m2sci_cot`_ Cotangent
            + `m2sci_coth`_ Hyperbolic cotangent
            + `m2sci_cputime`_ Elapsed CPU time
            + `m2sci_csc`_ Cosecant
            + `m2sci_csch`_ Hyperbolic cosecant
            + `m2sci_cumprod`_ Cumulative product
            + `m2sci_cumsum`_ Cumulative sum
            + `m2sci_conj`_ Complex conjugate

        + `D`_

            + `m2sci_date`_ Current date string
            + `m2sci_dec2bin`_ The binary representation of a decimal number
            + `m2sci_dec2hex`_ Decimal to hexadecimal number conversion
            + `m2sci_delete`_ Delete files or graphics objects
            + `m2sci_det`_ Determinant
            + `m2sci_diag`_ Diagonal including or extracting
            + `m2sci_diary`_ Save session to a file
            + `m2sci_diff`_ Differences and approximate derivatives
            + `m2sci_dir`_ Display directory listing
            + `m2sci_disp`_ Display text or array
            + `m2sci_display`_ Overloaded method to display an object
            + `m2sci_doc`_ Display online documentation
            + `m2sci_docopt`_ Web browser for UNIX platforms
            + `m2sci_dos`_ Execute a UNIX command and return result
            + `m2sci_double`_ Conversion to double precision
            + `m2sci_drawnow`_ Complete pending drawing events

        + `E`_

            + `m2sci_echo`_ Echo lines during execution
            + `m2sci_eig`_ Find eigenvalues and eigenvectors
            + `m2sci_else`_ Conditionally execute statements
            + `m2sci_elseif`_ Conditionally execute statements
            + `m2sci_erf`_ Error function
            + `m2sci_erfc`_ Complementary error function
            + `m2sci_erfcx`_ Scaled complementary error function
            + `m2sci_error`_ Display error messages
            + `m2sci_etime`_ Elapsed time
            + `m2sci_eval`_ Execute a string containing an instruction/expression
            + `m2sci_exist`_ Check if a variable or file exists
            + `m2sci_exit`_ Ends current session
            + `m2sci_exp`_ Exponential
            + `m2sci_expm`_ Matrix exponential
            + `m2sci_eye`_ Identity matrix

        + `F`_

            + `m2sci_factor`_ Prime numbers decomposition
            + `m2sci_false`_ False array
            + `m2sci_fclose`_ Close one or more open files
            + `m2sci_feof`_ Test for end-of-file
            + `m2sci_ferror`_ Query about errors in file input or output
            + `m2sci_feval`_ Function evaluation
            + `m2sci_fft`_ Discrete Fourier transform
            + `m2sci_fftshift`_ Shift zero-frequency component of discrete Fourier
              transform to center of spectrum
            + `m2sci_fgetl`_ Read line(s) from file, discard newline character
            + `m2sci_fgets`_ Read line from file, keep newline character
            + `m2sci_fileparts`_ Return filename parts
            + `m2sci_filesep`_ Return the directory separator for this platform
            + `m2sci_find`_ Find indices and values of nonzero elements
            + `m2sci_findstr`_ Find one string within another
            + `m2sci_fix`_ Round towards zero
            + `m2sci_fliplr`_ Flip matrix in left/right direction
            + `m2sci_flipud`_ Flip matrix in up/down direction
            + `m2sci_floor`_ Round down
            + `m2sci_fopen`_ Open a file or obtain information about open files
            + `m2sci_for`_ Repeat statements a specific number of times
            + `m2sci_format`_ Control display format for output
            + `m2sci_fprintf`_ Write formatted data to file
            + `m2sci_fread`_ Read binary data to a file
            + `m2sci_frewind`_ Move the file position indicator to the beginning
              of an open file
            + `m2sci_fscanf`_ Read formatted data to file
            + `m2sci_fseek`_ Set file position indicator
            + `m2sci_ftell`_ Get file position indicator
            + `m2sci_full`_ Convert sparse matrix to full matrix
            + `m2sci_fullfile`_ Build a full filename from parts
            + `m2sci_function`_ Function definition
            + `m2sci_fwrite`_ Write binary data to a file

        + `G`_

            + `m2sci_gamma`_ Gamma function
            + `m2sci_gammaln`_ Logarithm of gamma function
            + `m2sci_getenv`_ Get environment variable
            + `m2sci_global`_ Define a global variable
            + `m2sci_graymon`_ Set graphics defaults for gray-scale monitors
            + `m2sci_grid`_ Grid lines for two- and three-dimensional plots

        + `H`_

            + `m2sci_hankel`_ Hankel matrix
            + `m2sci_help`_ Display help
            + `m2sci_helpdesk`_ Display Help browser
            + `m2sci_helpwin`_ Provide access to and display help for all
              functions
            + `m2sci_hess`_ Hessenberg form of a matrix
            + `m2sci_hold`_ Hold current graph
            + `m2sci_home`_ Move the cursor to the upper left corner of the
              Command Window
            + `m2sci_horzcat`_ Horizontal concatenation
            + `m2sci_helpbrowser`_ Display Help browser for access to full online
              documentation

        + `I`_

            + `m2sci_if`_ Conditionally execute statements
            + `m2sci_ifft`_ Inverse discrete Fourier transform
            + `m2sci_imag`_ Complex imaginary part
            + `m2sci_input`_ Request user input
            + `m2sci_int16`_ Convert to 16-bit signed integer
            + `m2sci_int32`_ Convert to 32-bit signed integer
            + `m2sci_int8`_ Convert to 8-bit signed integer
            + `m2sci_interp1`_ One_dimension interpolation function
            + `m2sci_inv`_ Matrix inverse
            + `m2sci_isa`_ Detect an object of a given type
            + `m2sci_iscell`_ Determine if input is a cell array
            + `m2sci_ischar`_ Determine if item is a character array
            + `m2sci_isdir`_ Determine if item is a directory
            + `m2sci_isempty`_ True for empty matrix
            + `m2sci_isequal`_ Determine if arrays are numerically equal
            + `m2sci_isfield`_ Determine if input is a structure array field
            + `m2sci_isfinite`_ True for finite elements
            + `m2sci_isglobal`_ Determine if item is a global variable
            + `m2sci_ishandle`_ Determines if values are valid graphics object
              handles
            + `m2sci_ishold`_ Return hold state
            + `m2sci_isinf`_ True for infinite elements
            + `m2sci_isinteger`_ Detect whether an array has integer data type
            + `m2sci_isletter`_ True for letters of the alphabet
            + `m2sci_islogical`_ Determine if item is a logical array
            + `m2sci_isnan`_ Detect NaN elements of an array
            + `m2sci_isnumeric`_ Determine if input is a numeric array
            + `m2sci_ispc`_ Determine if PC (Windows) version
            + `m2sci_isreal`_ Determine if all array elements are real numbers
            + `m2sci_isscalar`_ Determine if input is scalar
            + `m2sci_isspace`_ Detect elements that are ASCII white spaces
            + `m2sci_isstr`_ Determine if item is a character array
            + `m2sci_isstruct`_ Determine if input is a structure array
            + `m2sci_isunix`_ Determine if Unix version
            + `m2sci_isvector`_ Determine if input is a vector
            + `m2sci_issparse`_ Test if matrix is sparse

        + `K`_

            + `m2sci_keyboard`_ Invoke the keyboard in a file
            + `m2sci_kron`_ Kronecker tensor product

        + `L`_

            + `m2sci_length`_ Length of vector
            + `m2sci_linspace`_ Linearly spaced vector
            + `m2sci_load`_ Load workspace variables from disk
            + `m2sci_log`_ Natural logarithm
            + `m2sci_log10`_ Common (base 10) logarithm
            + `m2sci_log2`_ Base 2 logarithm and dissect floating point number
            + `m2sci_logical`_ Convert numeric values to logical
            + `m2sci_lookfor`_ Search for specified keyword in all help entries
            + `m2sci_lower`_ Convert string to lower case
            + `m2sci_lu`_ LU matrix factorization

        + `M`_

            + `m2sci_max`_ Maximum
            + `m2sci_min`_ Minimum
            + `m2sci_mkdir`_ Make new folder
            + `m2sci_mod`_ Modulus after division
            + `m2sci_more`_ Display Command Window output one screenful at a time

        + `N`_

            + `m2sci_nargin`_ Number of function input arguments
            + `m2sci_nargout`_ Number of function output arguments
            + `m2sci_ndims`_ Number of array dimensions
            + `m2sci_norm`_ Vector and matrix norms
            + `m2sci_num2str`_ Number to string conversion

        + `O`_

            + `m2sci_ones`_ Create an array of all ones
            + `m2sci_otherwise`_ Default part of switch/select statement
            + `m2sci_pause`_ Halt execution temporarily

        + `Operators`_

            + `m2sci_addition`_ Plus
            + `m2sci_and`_ Logical AND
            + `m2sci_colon`_ Colon
            + `m2sci_elementwise_left_division`_ Elementwise left division
            + `m2sci_elementwise_multiplication`_ Elementwise multiplication
            + `m2sci_elementwise_power`_ Elementwise exponent
            + `m2sci_elementwise_right_division`_ Elementwise right division
            + `m2sci_elementwise_transpose`_ Elementwise transpose
            + `m2sci_equal`_ Equal to
            + `m2sci_great`_ Greater than
            + `m2sci_great_equal`_ Greater or equal to
            + `m2sci_left_division`_ Left division
            + `m2sci_less`_ Smaller than
            + `m2sci_less_equal`_ Smaller or equal to
            + `m2sci_multiplication`_ Multiplication
            + `m2sci_not`_ Negation
            + `m2sci_not_equal`_ Not equal to
            + `m2sci_or`_ Logical OR
            + `m2sci_power`_ Exponent
            + `m2sci_right_division`_ Right division
            + `m2sci_substraction`_ Minus
            + `m2sci_transpose`_ Transpose

        + `P`_

            + `m2sci_perms`_ Array of all permutations of vector components
            + `m2sci_permute`_ Permute the dimensions of an array
            + `m2sci_pie`_ circular graphic
            + `m2sci_plot`_ Linear 2-D plot
            + `m2sci_pow2`_ Base 2 power and scale floating-point numbers
            + `m2sci_primes`_ Returns the primes numbers included between 1 and
              given number
            + `m2sci_prod`_ Product of array elements

        + `Q`_

            + `m2sci_qr`_ Orthogonal-triangular decomposition
            + `m2sci_quit`_ Terminate session

        + `R`_

            + `m2sci_rand`_ Uniformly distributed random numbers and arrays
            + `m2sci_randn`_ Normally distributed random numbers and arrays
            + `m2sci_rcond`_ Matrix reciprocal condition number estimate
            + `m2sci_real`_ Real part of a complex number
            + `m2sci_realmax`_ Largest positive floating-point number
            + `m2sci_realmin`_ Smallest positive floating-point number
            + `m2sci_rem`_ Remainder after division
            + `m2sci_repmat`_ Replicate and tile an array
            + `m2sci_reshape`_ Reshape array
            + `m2sci_return`_ Return to the invoking function
            + `m2sci_round`_ Round to nearest integer

        + `S`_

            + `m2sci_save`_ Save workspace variables from disk
            + `m2sci_schur`_ Schur decomposition
            + `m2sci_setstr`_ Set string flag
            + `m2sci_sign`_ Signum function
            + `m2sci_sin`_ Sine
            + `m2sci_sinh`_ Hyperbolic sine
            + `m2sci_size`_ Array dimension
            + `m2sci_sort`_ Sort elements in ascending order
            + `m2sci_sparse`_ Create sparse matrix
            + `m2sci_sqrt`_ Square root
            + `m2sci_strcmp`_ Compare strings
            + `m2sci_strcmpi`_ Compare strings ignoring case
            + `m2sci_strfind`_ Find one string within another
            + `m2sci_strrep`_ String search and replace
            + `m2sci_struct`_ Create struct array
            + `m2sci_sum`_ Sum of array elements
            + `m2sci_surf`_ 3-D surface plot
            + `m2sci_svd`_ Singular value decomposition
            + `m2sci_switch`_ Switch among several cases based on expression

        + `T`_

            + `m2sci_tan`_ Tangent
            + `m2sci_tanh`_ Hyperbolic tangent
            + `m2sci_tic`_ Starts a stopwatch timer
            + `m2sci_title`_ Display a title on a graphic window
            + `m2sci_toc`_ Read the stopwatch timer
            + `m2sci_toeplitz`_ Toeplitz matrix
            + `m2sci_tril`_ Lower triangular part of a matrix
            + `m2sci_triu`_ Upper triangular part of a matrix
            + `m2sci_true`_ True array
            + `m2sci_type`_ List file

        + `U`_

            + `m2sci_uigetdir`_ Standard dialog box for selecting a directory
            + `m2sci_uint16`_ Convert to 16-bit unsigned integer
            + `m2sci_uint32`_ Convert to 32-bit unsigned integer
            + `m2sci_uint8`_ Convert to 8-bit unsigned integer
            + `m2sci_unix`_ Execute a UNIX command and return result
            + `m2sci_upper`_ Convert string to upper case

        + `V`_

            + `m2sci_varargin`_ Pass variable numbers of arguments
            + `m2sci_varargout`_ Return variable numbers of arguments
            + `m2sci_vertcat`_ Vertical concatenation

        + `Variables`_

            + `m2sci_ans`_ The most recent answer
            + `m2sci_end`_ Last index
            + `m2sci_eps`_ Floating-point relative accuracy
            + `m2sci_i`_ Imaginary unit
            + `m2sci_j`_ Imaginary unit
            + `m2sci_pi`_ Ratio of a circle's circumference to its diameter

        + `W`_

            + `m2sci_waitforbuttonpress`_ Wait for key or mouse button press
            + `m2sci_warning`_ Display warning messages
            + `m2sci_while`_ Repeat statements an indefinite number of times
            + `m2sci_who`_ List variables in the workspace
            + `m2sci_whos`_ List variables in the workspace
            + `m2sci_winqueryreg`_ Get item from Microsoft Windows registry

        + `X`_

            + `m2sci_xlabel`_ Display a string along the x axis

        + `Y`_

            + `m2sci_ylabel`_ Display a string along the y axis

        + `Z`_

            + `m2sci_zlabel`_ Display a string along the z axis
            + `m2sci_zeros`_ Create an array of all zeros


    + `About_M2SCI_tools`_ Generally speaking about tools to convert
      Matlab files to Scilab
    + `Contents`_ Create a tree containing contents inference data
    + `Cste`_ Create a tree representing a constant
    + `Equal`_ Create a tree representing an instruction
    + `Funcall`_ Create a tree representing a function call
    + `Infer`_ Create a tree containing inference data
    + `MatlabScilab_character_strings`_ Generally speaking about...
    + `Operation`_ Create a tree representing an operation
    + `Type`_ Create a tree containing type inference data
    + `Variable`_ Create a tree representing a variable
    + `get_contents_infer`_ Search for information in a "M2SCi tlist"
      contents
    + `m2scideclare`_ Giving tips to help M2SCI...
    + `matfile2sci`_ converts a Matlab 5 MAT-file into a Scilab binary
      file
    + `mfile2sci`_ Matlab M-file to Scilab conversion function
    + `sci_files`_ How to write conversion functions
    + `translatepaths`_ convert a set of Matlab M-files directories to
      Scilab

+ `Compatibility Functions`_

    + `asciimat`_ string matrix ascii conversions
    + `firstnonsingleton`_ Finds first dimension which is not 1
    + `makecell`_ Creates a cell array.
    + `mstr2sci`_ character string matrix to character matrix conversion
    + `mtlb_0`_ Matlab non-conjugate transposition emulation function
    + `mtlb_a`_ Matlab addition emulation function
    + `mtlb_all`_ Matlab all emulation function
    + `mtlb_any`_ Matlab any emulation function
    + `mtlb_axis`_ Matlab axis emulation function
    + `mtlb_beta`_ Matlab beta emulation function
    + `mtlb_box`_ Matlab box emulation function
    + `mtlb_close`_ Matlab close emulation function
    + `mtlb_colordef`_ Matlab colordef emulation function
    + `mtlb_conv`_ Matlab conv emulation function. **This function is
      obsolete.**
    + `mtlb_cumprod`_ Matlab cumprod emulation function
    + `mtlb_cumsum`_ Matlab cumsum emulation function
    + `mtlb_dec2hex`_ Matlab dec2hex emulation function
    + `mtlb_delete`_ Matlab delete emulation function
    + `mtlb_diag`_ Matlab diag emulation function
    + `mtlb_diff`_ Matlab diff emulation function
    + `mtlb_dir`_ Matlab dir emulation function
    + `mtlb_double`_ Matlab double emulation function
    + `mtlb_e`_ Matlab extraction emulation function
    + `mtlb_echo`_ Matlab echo emulation function
    + `mtlb_eval`_ Matlab eval emulation function
    + `mtlb_exist`_ Matlab exist emulation function
    + `mtlb_eye`_ Matlab eye emulation function
    + `mtlb_false`_ Matlab false emulation function
    + `mtlb_fft`_ Matlab fft emulation function
    + `mtlb_fftshift`_ Matlab fftshift emulation function
    + `mtlb_find`_ Matlab find emulation function
    + `mtlb_findstr`_ Matlab findstr emulation function
    + `mtlb_fliplr`_ Matlab fliplr emulation function
    + `mtlb_fopen`_ Matlab fopen emulation function
    + `mtlb_format`_ Matlab format emulation function
    + `mtlb_fprintf`_ Matlab fprintf emulation function
    + `mtlb_fread`_ Matlab fread emulation function
    + `mtlb_fscanf`_ Matlab fscanf emulation function
    + `mtlb_full`_ Matlab full emulation function
    + `mtlb_fwrite`_ Matlab fwrite emulation function
    + `mtlb_grid`_ Matlab grid emulation function
    + `mtlb_hold`_ Matlab hold emulation function
    + `mtlb_i`_ Matlab insertion emulation function
    + `mtlb_ifft`_ Matlab ifft emulation function
    + `mtlb_imp`_ Matlab colon emulation function
    + `mtlb_int16`_ Matlab int16 emulation function
    + `mtlb_int32`_ Matlab int32 emulation function
    + `mtlb_int8`_ Matlab int8 emulation function
    + `mtlb_is`_ Matlab string insertion emulation function
    + `mtlb_isa`_ Matlab isa emulation function
    + `mtlb_isfield`_ Matlab isfield emulation function
    + `mtlb_isletter`_ Matlab isletter emulation function
    + `mtlb_isspace`_ Matlab isspace emulation function
    + `mtlb_l`_ Matlab left division emulation function
    + `mtlb_legendre`_ Matlab legendre emulation function
    + `mtlb_linspace`_ Matlab linspace emulation function
    + `mtlb_logic`_ Matlab logical operators emulation function
    + `mtlb_logical`_ Matlab logical emulation function
    + `mtlb_lower`_ Matlab lower emulation function
    + `mtlb_max`_ Matlab max emulation function
    + `mtlb_min`_ Matlab min emulation function
    + `mtlb_mode`_ switch Matlab like operations
    + `mtlb_more`_ Matlab more emulation function
    + `mtlb_num2str`_ Matlab num2str emulation function
    + `mtlb_ones`_ Matlab ones emulation function
    + `mtlb_plot`_ Matlab plot emulation function
    + `mtlb_prod`_ Matlab prod emulation function
    + `mtlb_rand`_ Matlab rand emulation function
    + `mtlb_randn`_ Matlab randn emulation function
    + `mtlb_rcond`_ Matlab rcond emulation function
    + `mtlb_realmax`_ Matlab realmax emulation function
    + `mtlb_realmin`_ Matlab realmin emulation function
    + `mtlb_repmat`_ Matlab repmat emulation function
    + `mtlb_s`_ Matlab substraction emulation function
    + `mtlb_setstr`_ Matlab setstr emulation function
    + `mtlb_size`_ Matlab size emulation function
    + `mtlb_sort`_ Matlab sort emulation function
    + `mtlb_strcmp`_ Matlab strcmp emulation function
    + `mtlb_strcmpi`_ Matlab strcmpi emulation function
    + `mtlb_strfind`_ Matlab strfind emulation function
    + `mtlb_strrep`_ Matlab strrep emulation function
    + `mtlb_sum`_ Matlab sum emulation function
    + `mtlb_t`_ Matlab transposition emulation function
    + `mtlb_toeplitz`_ Matlab toeplitz emulation function
    + `mtlb_tril`_ Matlab tril emulation function
    + `mtlb_triu`_ Matlab triu emulation function
    + `mtlb_true`_ Matlab true emulation function
    + `mtlb_uint16`_ Matlab uint16 emulation function
    + `mtlb_uint32`_ Matlab uint32 emulation function
    + `mtlb_uint8`_ Matlab uint8 emulation function
    + `mtlb_upper`_ Matlab upper emulation function
    + `mtlb_var`_ Matlab var emulation function
    + `mtlb_zeros`_ Matlab zeros emulation function

+ `Overloading`_

    + `overloading`_ display, functions and operators overloading
      capabilities

+ `Functions`_

    + `profiling`_

        + `add_profiling`_ Adds profiling instructions to a function.
        + `plotprofile`_ extracts and displays execution profiles of a Scilab
          function
        + `profile`_ extract execution profiles of a Scilab function
        + `remove_profiling`_ Removes profiling instructions toout of a
          function.
        + `reset_profiling`_ Resets profiling counters of a function.
        + `showprofile`_ extracts and displays execution profiles of a Scilab
          function

    + `argn`_ Returns the number of input/output arguments in a function
      call
    + `bytecode`_ given a function returns the "bytecode" of a function in
      a Scilab array and conversely.
    + `bytecodewalk`_ walk in function bytecode applying transformation.
    + `clearfun`_ removes primitive
    + `comp`_ scilab function compilation
    + `deff`_ on-line definition of function
    + `edit`_ function editing
    + `exec`_ script file execution
    + `execstr`_ execute Scilab code in strings
    + `external`_ Scilab Object, external function or routine
    + `fun2string`_ generates ascii definition of a scilab function
    + `funcprot`_ switch scilab functions protection mode
    + `function`_ closes a function definition
    + `functions`_ Scilab procedures and Scilab objects
    + `funptr`_ coding of primitives ( wizard stuff )
    + `genlib`_ build library from functions in given directory
    + `get_function_path`_ get source file path of a library function
    + `getd`_ getting all functions defined in a directory
    + `head_comments`_ display scilab function header comments
    + `intppty`_ set interface argument passing properties
    + `lib`_ library definition
    + `librarieslist`_ get scilab libraries
    + `library`_ library datatype description
    + `libraryinfo`_ get macros and path of a scilab library
    + `listfunctions`_ properties of all functions in the workspace
    + `macr2lst`_ function to list conversion
    + `macr2tree`_ function to tree conversion
    + `macro`_ Scilab procedure and Scilab object
    + `macrovar`_ variables of function
    + `mode`_ select a mode in an exec-file
    + `newfun`_ add a name in the table of functions
    + `readgateway`_ get primitives list of a module
    + `recompilefunction`_ recompiles a scilab function, changing its type
    + `sciargs`_ scilab command line arguments
    + `varargin`_ variable numbers of arguments in an input argument list
    + `varargout`_ variable numbers of arguments in an output argument
      list
    + `what`_ list the Scilab primitives
    + `whereis`_ name of library containing a function

+ `Development tools`_

    + `Assert`_

        + `assert_overview`_ An overview of the Assert module.
        + `assert_checkalmostequal`_ Check that computed and expected are
          numerically close.
        + `assert_checkequal`_ Check that computed and expected are equal.
        + `assert_checkerror`_ Check that an instruction produces the expected
          error.
        + `assert_checkfalse`_ Check that condition is false.
        + `assert_checkfilesequal`_ Check that two files are equal.
        + `assert_checktrue`_ Check that condition is true.
        + `assert_comparecomplex`_ Compare complex numbers with a tolerance.
        + `assert_computedigits`_ Returns the number of significant digits in
          computed result.
        + `assert_cond2reltol`_ Suggests a relative error, computed from the
          condition number.
        + `assert_cond2reqdigits`_ Suggests the number of required digits,
          given the condition number.
        + `assert_generror`_ Generates an error.

    + `bench_run`_ Launch benchmark tests
    + `example_run`_ Launch the examples found in help pages.
    + `test_run`_ Launch tests
    + `user`_ interfacing a Fortran or C routine

+ `Demo Tools`_

    + `add_demo`_ Add an entry in the demos list
    + `demo_begin`_ begin a demonstration
    + `demo_choose`_ create a dialog box for the choice of options
    + `demo_compiler`_ test the presence of a compileur
    + `demo_end`_ completes a demonstration
    + `demo_file_choice`_ choose and executes an item within a list
    + `demo_function_choice`_ choose and execute an item within a list
    + `demo_mdialog`_ create a dialog box
    + `demo_message`_ display a message
    + `demo_run`_ script file execution

+ `Dynamic/incremental Link`_

    + `G_make`_ call make or nmake
    + `addinter`_ new functions interface dynamic link at run time.
    + `c_link`_ check if symbol loaded with dynamic link
    + `call`_ Fortran or C user routines call
    + `chooselcccompiler`_ moved as toolbox in ATOMS
    + `configure_msifort`_ set environments variables for Intel Fortran
      Compiler (Windows).
    + `configure_msvc`_ set environments variables for Microsoft C
      Compiler.
    + `dllinfo`_ provides information about the format and symbols
      provided in executable and DLL files (Windows).
    + `findmsifortcompiler`_ detects Intel fortran Compiler
    + `findmsvccompiler`_ detects Microsoft C Compiler
    + `fort`_ Fortran or C user routines call
    + `getdynlibext`_ get the extension of dynamic libraries on your
      operating system.
    + `haveacompiler`_ detect if you have a C compiler.
    + `ilib_build`_ utility for shared library management
    + `ilib_compile`_ ilib_build utility: executes the Makefile produced
      by ilib_gen_Make
    + `ilib_for_link`_ utility for shared library management with link
    + `ilib_gen_Make`_ utility for ilib_build: produces a Makefile for
      building shared libraries
    + `ilib_gen_cleaner`_ utility for ilib_build: generates a cleaner file
    + `ilib_gen_gateway`_ utility for ilib_build, generates a gateway
      file.
    + `ilib_gen_loader`_ utility for ilib_build: generates a loader file
    + `ilib_include_flag`_ Return a formated includes related string to
      pass to system compiler
    + `ilib_mex_build`_ utility for mex library management
    + `ilib_verbose`_ set level of display used by dynamic link functions.
    + `link`_ dynamic linker
    + `supported_compilers`_ supported and compatible compilers by Scilab
    + `ulink`_ unlink a dynamically linked shared object

+ `Windows tools`_

    + `chartooem`_ translates a string into the OEM-defined character set
      (Windows only)
    + `consolebox`_ show or hide console box (Windows)
    + `createGUID`_ Creates a GUID (Windows only)
    + `dos`_ shell (cmd) command execution (Windows only)
    + `findfileassociation`_ Searches for and retrieves a file
      association-related string from the registry (Windows only)
    + `getsystemmetrics`_ Retrieves the specified system metric or system
      configuration setting (Windows only)
    + `istssession`_ Determines if scilab is launched from a ms terminal
      service session (Windows only)
    + `mcisendstring`_ sends a command string to an MCI device (Windows
      only)
    + `oemtochar`_ translates a string from the OEM-defined character set
      into either an ANSI string (Windows Only)
    + `powershell`_ shell (powershell) command execution (Windows only)
    + `win64`_ Determine whether Windows x64 version of Scilab (Windows
      only)
    + `winopen`_ Open file in appropriate application (Windows only)
    + `winqueryreg`_ Get item from Microsoft Windows registry (Windows
      only)

+ `ATOMS`_

    + `_atomsGettingStarted`_
    + `atoms`_
    + `atomsAutoload`_ Load the modules marked as "autoload"
    + `atomsAutoloadAdd`_ Add one or several modules to autoload
    + `atomsAutoloadDel`_ Remove one or several modules from the autoload
      system
    + `atomsAutoloadList`_ Get the list of modules registered to autoload
    + `atomsCategoryList`_ List available categories
    + `atomsCheckModule`_ Check the given list of ATOMS modules
    + `atomsDepTreeShow`_ Show the dependency tree of a module
    + `atomsGetConfig`_ Get ATOMS system parameters
    + `atomsGetInstalled`_ Get the list of installed external modules
    + `atomsGetInstalledPath`_ Get the install path of installed external
      modules
    + `atomsGetLoaded`_ Get the list of loaded external modules
    + `atomsGetLoadedPath`_ Get the list of loaded external modules
    + `atomsInstall`_ Install one or several external modules
    + `atomsIsInstalled`_ Determines whether the module is installed.
      Returns true if the module is installed, false otherwise.
    + `atomsIsLoaded`_ determines whether a module is loaded or not
    + `atomsList`_ List available external modules
    + `atomsLoad`_ Load one or several external modules
    + `atomsQuit`_ Unload (call .quit file of) external modules previously
      loaded by ATOMS
    + `atomsRemove`_ Remove one or several modules
    + `atomsRepositoryAdd`_ Add one or several URLs to the list of managed
      repositories
    + `atomsRepositoryDel`_ Remove one or several URLs from the list of
      managed repositories
    + `atomsRepositoryList`_ Get the list of managed repositories
    + `atomsRestoreConfig`_ Restore the configuration from the backup file
    + `atomsSaveConfig`_ Make a backup of the configuration file
    + `atomsSearch`_ Searches for external modules.
    + `atomsSetConfig`_ Manage ATOMS system parameters
    + `atomsShow`_ Show the caracteristics of a module
    + `atomsSystemInit`_ Sets the rightful write access for the ATOMS
      system
    + `atomsSystemUpdate`_ Update the list of available modules
    + `atomsTest`_ Execute tests of given module installed
    + `atomsUpdate`_ Update one or several external modules
    + `atomsVersion`_ Show the ATOMS's version of Scilab

+ `Tcl/Tk Interface`_

    + `ScilabEval`_ tcl instruction : Evaluate a string with scilab
      interpreter
    + `TCL_CreateSlave`_ Create a TCL slave interpreter
    + `TCL_DeleteInterp`_ delete TCL interpreter
    + `TCL_EvalFile`_ Reads and evaluate a tcl/tk file
    + `TCL_EvalStr`_ Evaluate a string whithin the Tcl/Tk interpreter
    + `TCL_ExistArray`_ Return %T if a tcl array exists
    + `TCL_ExistInterp`_ Return %T if a tcl slave interperter exists
    + `TCL_ExistVar`_ Return %T if a tcl variable exists
    + `TCL_GetVar`_ Get a tcl/tk variable value
    + `TCL_GetVersion`_ get the version of the TCL/TK library at runtime.
    + `TCL_SetVar`_ Set a tcl/tk variable value
    + `TCL_UnsetVar`_ Remove a tcl variable
    + `TCL_UpVar`_ Make a link from a tcl source variable to a tcl
      destination variable
    + `config`_ Scilab general configuration.
    + `winclose`_ close windows created by sciGUI
    + `winlist`_ Return the winId of current window created by sciGUI

+ `Text editor (Scinotes)`_

    + `edit_error`_ opens in scilab editor the source of the last recorded
      error
    + `editor`_ Call a the text editor as defined in the preferences
    + `scinotes`_ Scinotes: Embedded Scilab text editor

+ `UI Data`_

    + `browsevar`_ Scilab variable browser
    + `editvar`_ Scilab variable editor
    + `filebrowser`_ Open the Scilab file browser

+ `Online help management`_

    + `add_help_chapter`_ Add an entry in the help list
    + `apropos`_ searches keywords in Scilab help
    + `del_help_chapter`_ Delete an entry in the help list
    + `help`_ on-line help command
    + `help_from_sci`_ Generate help files and demo files from the head
      comments section of a .sci source file.
    + `help_skeleton`_ build the skeleton of the xml help file associated
      to a Scilab function
    + `how_to_link_toolbox_help`_ How to make hyperlink in toolbox help
      pointing to Scilab's items
    + `man`_ on line help XML file description format
    + `manedit`_ editing a manual item
    + `percenthelps`_ Variable defining the path of help directories
    + `xmltochm`_ converts xml Scilab help files to Microsoft Compressed
      HTML format (Windows)
    + `xmltohtml`_ converts xml Scilab help files to HTML format
    + `xmltojar`_ converts xml Scilab help files to javaHelp format
    + `xmltopdf`_ converts xml Scilab help files to pdf format
    + `xmltops`_ converts xml Scilab help files to postscript format

+ `Parallel`_

    + `parallel_concurrency`_ query about the concurrency of the current
      execution context
    + `parallel_run`_ parallel calls to a function

+ `Modules manager`_

    + `tbx_build_blocks`_ Compile blocks (toolbox compilation process)
    + `tbx_build_cleaner`_ Generate a cleaner.sce script (toolbox
      compilation process)
    + `tbx_build_gateway`_ Build a gateway (toolbox compilation process)
    + `tbx_build_gateway_clean`_ Generate a cleaner_gateway.sce script
      (toolbox compilation process)
    + `tbx_build_gateway_loader`_ Generate a loader_gateway.sce script
      (toolbox compilation process)
    + `tbx_build_help`_ Generate help files (toolbox compilation process)
    + `tbx_build_help_loader`_ Generate an addchapter.sce script (toolbox
      compilation process)
    + `tbx_build_loader`_ Generate loader.sce and unloader scripts
      (toolbox compilation process)
    + `tbx_build_macros`_ Compile macros (toolbox compilation process)
    + `tbx_build_src`_ Build sources (toolbox compilation process)
    + `tbx_builder_gateway`_ Run builder_gateway.sce script if it exists
      (toolbox compilation process)
    + `tbx_builder_gateway_lang`_ Run builder_gateway_(language).sce
      script if it exists (toolbox compilation process)
    + `tbx_builder_help`_ Run builder_help.sce script if it exists
      (toolbox compilation process)
    + `tbx_builder_help_lang`_ Run build_help.sce script if it exists
      (toolbox compilation process)
    + `tbx_builder_macros`_ Run buildmacros.sce script if it exists
      (toolbox compilation process)
    + `tbx_builder_src`_ Run builder_src.sce script if it exists (toolbox
      compilation process)
    + `tbx_builder_src_lang`_ Run builder_(language).sce script if it
      exists (toolbox compilation process)

+ `Localization`_

    + `dgettext`_ get text translated into the current locale and a
      specific domain
    + `getdefaultlanguage`_ returns the default language used by Scilab
    + `getlanguage`_ returns current language used by Scilab.
    + `gettext`_ Similar to `gettext`_
    + `LANGUAGE`_ Variable defining the language (OBSOLETE)
    + `setdefaultlanguage`_ sets and saves the internal LANGUAGE value.
    + `setlanguage`_ sets the internal LANGUAGE value (for Windows only)

+ `JVM`_

    + `javaclasspath`_ set and get dynamic Java class path
    + `javalibrarypath`_ set and get dynamic java.library.path
    + `jre_path`_ returns Java Runtime Environment used by Scilab
    + `system_getproperty`_ gets the system property indicated by a
      specified key.
    + `system_setproperty`_ set a system property indicated by a specified
      key and value.
    + `with_embedded_jre`_ checks if scilab uses a embedded JRE

+ `API Scilab`_

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

+ `call_scilab API (Scilab engine)`_

    + `BooleanManagement_callscilab`_ How to manage Scilab's boolean read
      and write process using call_scilab and api_scilab
    + `ComplexManagement_callscilab`_ How to manage Scilab's complex
      variable read and write process using call_scilab
    + `DisableInteractiveMode`_ Disables some features (plotting, gui
      creation, Tcl/Tk...) and leaves only the computing engine
    + `DoubleManagement_callscilab`_ How to manage Scilab's variable read
      and write process using call_scilab and api_scilab
    + `GetLastJob`_ Returns the latest job sent to Scilab engine
    + `ScilabHaveAGraph`_ Check if any Scilab graphics have been opened.
    + `SendScilabJob`_ Send a Scilab task from a C/C++ code (call_scilab)
    + `SendScilabJobs`_ Send Scilab tasks from a C/C++ code (call_scilab)
    + `StartScilab`_ Initializes and starts Scilab engine in Call Scilab
    + `StringManagement_callscilab`_ How to manage Scilab's String read
      and write process using call_scilab and api_scilab
    + `TerminateScilab`_ Stops and terminates Scilab engine in Call Scilab
    + `call_scilab`_ call_scilab is an interface which provides the
      ability to call Scilab engine from C/C++ code
    + `compile_and_run_call_scilab`_ How to compile a native application
      based on or using Scilab
    + `fromc`_ Checks if current Scilab is called from an external C
      program (by StartScilab).
    + `fromjava`_ Checks if current Scilab is called from javasci

+ `Java Interface`_

    + `compile_and_run_javasci_v2`_ How to compile a Java application
      using Javasci v2
    + `javasci`_ Call Scilab engine from a Java application
    + `javasci_faq_v2`_ The frequently asked questions for Javasci v2
    + `javasci_v1_limitations`_ Why javasci v1 is now deprecated ?
    + `javasci_step_by_step`_ How to write an application based on javasci
      v2

+ `Intersci`_

    + `intersci`_ Scilab tool to interface C or Fortran functions with
      scilab. Deprecated: Please use SWIG

+ `Preferences`_

    + `preferences`_ Open the Scilab Preferences window
    + `prefs_SciNotes`_ SciNotes general preferences

+ `Python Environment`_




.. _h_norm: h_norm.html
.. _EDGE_TRIGGER: EDGE_TRIGGER.html
.. _Matlab binary files I/O: section_433ce5ea24f122b9a4100825ce3a5133.html
.. _mtlb_beta: mtlb_beta.html
.. _mclearerr: mclearerr.html
.. _regress: regress.html
.. _get_param: get_param.html
.. _Common_getvartype_API: Common_getvartype_API.html
.. _librarieslist: librarieslist.html
.. _mtlb_fft: mtlb_fft.html
.. _solve: solve.html
.. _hsv2rgb: hsv2rgb.html
.. _plot2d4: plot2d4.html
.. _isnum: isnum.html
.. _filter: filter.html
.. _xarrows: xarrows.html
.. _CLINDUMMY_f: CLINDUMMY_f.html
.. _libraryinfo: libraryinfo.html
.. _extraction: extraction.html
.. _xmlSchema: xmlSchema.html
.. _m2sci_conv2: m2sci_conv2.html
.. _sample: sample.html
.. _demo_run: demo_run.html
.. _demo_function_choice: demo_function_choice.html
.. _m2sci_coth: m2sci_coth.html
.. _read_csv: read_csv.html
.. _Signal processing: section_b88e71819a1021a194b266f5de3950d4.html
.. _resume: resume.html
.. _balreal: balreal.html
.. _gschur: gschur.html
.. _mtlb_uint8: mtlb_uint8.html
.. _standard_outputs: standard_outputs.html
.. _xls_read: xls_read.html
.. _isoview: isoview.html
.. _JKFLIPFLOP: JKFLIPFLOP.html
.. _qpsolve: qpsolve.html
.. _xclick: xclick.html
.. _parrot: parrot.html
.. _atomsQuit: atomsQuit.html
.. _list_getlistitemaddress_API: list_getlistitemaddress_API.html
.. _m2sci_isstr: m2sci_isstr.html
.. _sskf: sskf.html
.. _Linear Equations (Iterative Solvers): section_b520c4651a99df8a19026ce42ae1293a.html
.. _splin2d: splin2d.html
.. _getAllocatedComplexSparseMatrix: getAllocatedComplexSparseMatrix.html
.. _VsourceAC: VsourceAC.html
.. _try: try.html
.. _havewindow: havewindow.html
.. _m2sci_conj: m2sci_conj.html
.. _MATCATH: MATCATH.html
.. _milk_drop: milk_drop.html
.. _ones: ones.html
.. _mapsound: mapsound.html
.. _configure_msvc: configure_msvc.html
.. _xcos: xcos.html
.. _group: group.html
.. _m2sci_factor: m2sci_factor.html
.. _uimenu: uimenu.html
.. _demo_begin: demo_begin.html
.. _condestsp: condestsp.html
.. _mtlb_fliplr: mtlb_fliplr.html
.. _winclose: winclose.html
.. _whereis: whereis.html
.. _PMOS: PMOS.html
.. _Double_management_writing_API: Double_management_writing_API.html
.. _L: section_06f3f639fd846602197debce30c10456.html
.. _SWITCH_f: SWITCH_f.html
.. _srkf: srkf.html
.. _discontinuities_pal: discontinuities_pal.html
.. _mtlb_full: mtlb_full.html
.. _winopen: winopen.html
.. _scicos_getvalue: scicos_getvalue.html
.. _optimplotfval: optimplotfval.html
.. _xs2pdf: xs2pdf.html
.. _int2d: int2d.html
.. _datatips: datatips.html
.. _m2sci_any: m2sci_any.html
.. _strtod: strtod.html
.. _annotation: section_aedd216de99d2d3cee412e47a44d1a8e.html
.. _init_ga_default: init_ga_default.html
.. _lyap: lyap.html
.. _scicos_simulate: scicos_simulate.html
.. _BooleanManagement_callscilab: BooleanManagement_callscilab.html
.. _eomday: eomday.html
.. _copyfile: copyfile.html
.. _cosd: cosd.html
.. _m2sci_who: m2sci_who.html
.. _freeAllocatedSingleString: freeAllocatedSingleString.html
.. _copy: copy.html
.. _MATEIG: MATEIG.html
.. _m2sci_mod: m2sci_mod.html
.. _param3d_properties: param3d_properties.html
.. _H: section_463adcd51bdb50c1e0ec36cb0413b996.html
.. _displayhistory: displayhistory.html
.. _datenum: datenum.html
.. _norm: norm.html
.. _VoltageSensor: VoltageSensor.html
.. _isfield: isfield.html
.. _Predefined variables: section_5d77ce7df86b7c615f331b9b45862999.html
.. _Z: section_bef29d7804dad309b2bcf31719a65876.html
.. _cepstrum: cepstrum.html
.. _gethistoryfile: gethistoryfile.html
.. _insertion: insertion.html
.. _javasci_step_by_step: javasci_step_by_step.html
.. _trfmod: trfmod.html
.. _secd: secd.html
.. _scicos_link: scicos_link.html
.. _Debugging: section_d0a7c01232b6c5c94ad0f167a4f03663.html
.. _demo_compiler: demo_compiler.html
.. _m2sci_gammaln: m2sci_gammaln.html
.. _trimmean: trimmean.html
.. _imult: imult.html
.. _m2sci_varargin: m2sci_varargin.html
.. _gethistory: gethistory.html
.. _fplot3d1: fplot3d1.html
.. _soundsec: soundsec.html
.. _sinm: sinm.html
.. _cls2dls: cls2dls.html
.. _Console: section_31676046123a3d2c192ff48f20c87f65.html
.. _Signal: Signal.html
.. _clear_pixmap: clear_pixmap.html
.. _sscanf: sscanf.html
.. _mtell: mtell.html
.. _Input/Output functions: section_ee197642f3a5ef2a6ac16e79bee24719.html
.. _arma2ss: arma2ss.html
.. _clear: clear.html
.. _ Subsystem palette: section_20389e66eec4955777f6d9dafe73ba26.html
.. _getAllocatedMatrixOfPoly: getAllocatedMatrixOfPoly.html
.. _wigner: wigner.html
.. _jetcolormap: jetcolormap.html
.. _m2sci_cla: m2sci_cla.html
.. _m2sci_etime: m2sci_etime.html
.. _xstringl: xstringl.html
.. _RAMP: RAMP.html
.. _set_fftw_wisdom: set_fftw_wisdom.html
.. _UI Data: section_b422c3c3e9f034f4d3dd9f7a0f307e03.html
.. _with_macros_source: with_macros_source.html
.. _mtlb_plot: mtlb_plot.html
.. _getvariablesonstack: getvariablesonstack.html
.. _wfir_gui: wfir_gui.html
.. _dollar: dollar.html
.. _m2sci_hold: m2sci_hold.html
.. _m2sci_fclose: m2sci_fclose.html
.. _m2sci_bitget: m2sci_bitget.html
.. _m2sci_real: m2sci_real.html
.. _AUTOMAT: AUTOMAT.html
.. _iirgroup: iirgroup.html
.. _GotoTagVisibilityMO: GotoTagVisibilityMO.html
.. _m2sci_waitforbuttonpress: m2sci_waitforbuttonpress.html
.. _strcat: strcat.html
.. _m2sci_iscell: m2sci_iscell.html
.. _colcompr: colcompr.html
.. _getAllocatedMatrixOfString: getAllocatedMatrixOfString.html
.. _what: what.html
.. _T: section_4808d75c0c10261353fc44d00ace3cfd.html
.. _m2sci_ftell: m2sci_ftell.html
.. _xmltops: xmltops.html
.. _pcg: pcg.html
.. _sylv: sylv.html
.. _Scierror: Scierror.html
.. _csch: csch.html
.. _m2sci_keyboard: m2sci_keyboard.html
.. _sqrtm: sqrtm.html
.. _Type: Type-a1fa27779242b4902f7ae3bdd5c6d508.html
.. _sleep: sleep.html
.. _arsimul: arsimul.html
.. _taucs_chget: taucs_chget.html
.. _type: type.html
.. _nanstdev: nanstdev.html
.. _list_poly_reading_API: list_poly_reading_API.html
.. _gettext: gettext.html
.. _dirname: dirname.html
.. _user: user.html
.. _with_module: with_module.html
.. _h2norm: h2norm.html
.. _xmlAsText: xmlAsText.html
.. _Commonlyusedblocks_pal: Commonlyusedblocks_pal.html
.. _xend: xend.html
.. _edit_error: edit_error.html
.. _mtlb_uint16: mtlb_uint16.html
.. _CLR: CLR.html
.. _nlev: nlev.html
.. _DesignEllipticFilter: DesignEllipticFilter.html
.. _tbx_build_gateway_clean: tbx_build_gateway_clean.html
.. _usecanvas: usecanvas.html
.. _axis_properties: axis_properties.html
.. _umf_lufact: umf_lufact.html
.. _manedit: manedit.html
.. _msd: msd.html
.. _etime: etime.html
.. _fspecg: fspecg.html
.. _qr: qr.html
.. _iscellstr: iscellstr.html
.. _C: section_cc735590fbb72f3a6eff8634649601dc.html
.. _xmlGetOpenDocs: xmlGetOpenDocs.html
.. _ScilabEval: ScilabEval.html
.. _Capacitor: Capacitor.html
.. _log1p: log1p.html
.. _CLKGOTO: CLKGOTO.html
.. _rankqr: rankqr.html
.. _m2sci_cot: m2sci_cot.html
.. _Common_getvardimension_API: Common_getvardimension_API.html
.. _optimset: optimset.html
.. _mtlb_is: mtlb_is.html
.. _COSBLK_f: COSBLK_f.html
.. _m2sci_filesep: m2sci_filesep.html
.. _tokens: tokens.html
.. _sci_struct: sci_struct.html
.. _Cumulated Distribution Functions: section_75906b9065cbd2ee7311fea5e3358997.html
.. _lu: lu.html
.. _sqroot: sqroot.html
.. _pinv: pinv.html
.. _m2sci_helpdesk: m2sci_helpdesk.html
.. _freq: freq.html
.. _fstair: fstair.html
.. _squeeze: squeeze.html
.. _savehistory: savehistory.html
.. _movefile: movefile.html
.. _perl: perl.html
.. _surf: surf.html
.. _mtlb_cumsum: mtlb_cumsum.html
.. _coppercolormap: coppercolormap.html
.. _xcosValidateBlockSet: xcosValidateBlockSet.html
.. _m2sci_winqueryreg: m2sci_winqueryreg.html
.. _percenthelps: percenthelps.html
.. _moment: moment.html
.. _cosh: cosh.html
.. _sqrt: sqrt.html
.. _style: section_733da8aac261289ed838e57ee2f43198.html
.. _m2sci_length: m2sci_length.html
.. _tan: tan.html
.. _Functions: section_e2fe38f4d87df88d599811d2383f5e7c.html
.. _coshm: coshm.html
.. _isglobal: isglobal.html
.. _unique: unique.html
.. _bitset: bitset.html
.. _m2sci_schur: m2sci_schur.html
.. _mtlb_box: mtlb_box.html
.. _levin: levin.html
.. _markp2ss: markp2ss.html
.. _createScalarComplexDouble: createScalarComplexDouble.html
.. _m2sci_barh: m2sci_barh.html
.. _saveafterncommands: saveafterncommands.html
.. _m2sci_beep: m2sci_beep.html
.. _erfinv: erfinv.html
.. _gamitg: gamitg.html
.. _m2sci_switch: m2sci_switch.html
.. _ReadHBSparse: ReadHBSparse.html
.. _cdfnbn: cdfnbn.html
.. _atanh: atanh.html
.. _m2sci_right_division: m2sci_right_division.html
.. _uiGetParentNode: uiGetParentNode.html
.. _isfile: isfile.html
.. _m2sci_elementwise_transpose: m2sci_elementwise_transpose.html
.. _pspect: pspect.html
.. _tilda: tilda.html
.. _m2sci_int32: m2sci_int32.html
.. _c_link: c_link.html
.. _lib: lib.html
.. _exec: exec.html
.. _isnan: isnan.html
.. _GetLastJob: GetLastJob.html
.. _sca: sca.html
.. _Development tools: section_da61722baa64f334c3e46d32e8fcb92c.html
.. _mtlb_fread: mtlb_fread.html
.. _m2sci_uint32: m2sci_uint32.html
.. _mtlb_toeplitz: mtlb_toeplitz.html
.. _samplef: samplef.html
.. _percentasn: percentasn.html
.. _TCL_ExistInterp: TCL_ExistInterp.html
.. _cos: cos.html
.. _m2sci_tic: m2sci_tic.html
.. _GENSIN_f: GENSIN_f.html
.. _HALT_f: HALT_f.html
.. _datatipToggle: datatipToggle.html
.. _isStringType: isStringType.html
.. _CFSCOPE: CFSCOPE.html
.. _mlist: mlist.html
.. _system: system.html
.. _mtlb_int8: mtlb_int8.html
.. _datatipRemove: datatipRemove.html
.. _nf3d: nf3d.html
.. _call_scilab: call_scilab.html
.. _CLKOUTV_f: CLKOUTV_f.html
.. _Sparse Decompositions: section_4d4d2115c3a70a6eb2389955a627561e.html
.. _mtlb_fftshift: mtlb_fftshift.html
.. _m2sci_vertcat: m2sci_vertcat.html
.. _Localization: section_ec5fa035b43e5cb91aeee9aa60762200.html
.. _perctl: perctl.html
.. _title: title.html
.. _datatipMove: datatipMove.html
.. _m2sci_less: m2sci_less.html
.. _champ: champ.html
.. _DIFF_f: DIFF_f.html
.. _whos: whos.html
.. _block_parameter_error: block_parameter_error.html
.. _Signalprocessing_pal: Signalprocessing_pal.html
.. _dec2bin: dec2bin.html
.. _MAXMIN: MAXMIN.html
.. _xrpoly: xrpoly.html
.. _horner: horner.html
.. _ThermoHydraulics_pal: ThermoHydraulics_pal.html
.. _interp1: interp1.html
.. _datatipSetStruct: datatipSetStruct.html
.. _x_dialog: x_dialog.html
.. _getdrives: getdrives.html
.. _issparse: issparse.html
.. _xcosPalExport: xcosPalExport.html
.. _Sparse Matrix: section_2ef04e66b375c8a1e055086a676e7d30.html
.. _m2sci_tan: m2sci_tan.html
.. _sind: sind.html
.. _abcd: abcd.html
.. _Descriptive Statistics: section_94707d8163dcd422d6160ffdd0a01e71.html
.. _m2sci_expm: m2sci_expm.html
.. _mtlb_var: mtlb_var.html
.. _rdivf: rdivf.html
.. _fullfile: fullfile.html
.. _dneupd: dneupd.html
.. _Time and Date: section_6d09610e9ee857fe95d8995ce1281bb9.html
.. _Integer_pal: Integer_pal.html
.. _Statistics: section_210b09dbaca5e65b0782b7e5219ba828.html
.. _INTRPLBLK_f: INTRPLBLK_f.html
.. _deff: deff.html
.. _M: section_532bc421293ff34bcc3657a064522c64.html
.. _DLSS: DLSS.html
.. _cumprod: cumprod.html
.. _UMFPACK Interface (sparse): section_7d26ef8c13dea74333dc5422e837ac70.html
.. _diag: diag.html
.. _Measures of Dispersion: section_4d21ef5c02d35785a4312e9cf8c410ef.html
.. _rowregul: rowregul.html
.. _dscr: dscr.html
.. _list: list.html
.. _boolean: boolean.html
.. _krac2: krac2.html
.. _m2sci_return: m2sci_return.html
.. _resethistory: resethistory.html
.. _mtlb_fwrite: mtlb_fwrite.html
.. _m2sci_sum: m2sci_sum.html
.. _mtlb_uint32: mtlb_uint32.html
.. _Contents: Contents.html
.. _tbx_builder_help: tbx_builder_help.html
.. _dragrect: dragrect.html
.. _daeoptions: daeoptions.html
.. _m2sci_asin: m2sci_asin.html
.. _expm: expm.html
.. _frexp: frexp.html
.. _pause: pause.html
.. _m2sci_setstr: m2sci_setstr.html
.. _spzeros: spzeros.html
.. _deleteNamedVariable: deleteNamedVariable.html
.. _trans: trans.html
.. _weekday: weekday.html
.. _optimbase: optimbase.html
.. _History manager: section_393fb0d2b03f69189a88bf534a575aa8.html
.. _mtlb_e: mtlb_e.html
.. _Blocks: section_68a098fb1b930904b3a8b7dbc41ad58f.html
.. _unix: unix.html
.. _coding_ga_identity: coding_ga_identity.html
.. _m2sci_drawnow: m2sci_drawnow.html
.. _m2sci_rem: m2sci_rem.html
.. _CLKGotoTagVisibility: CLKGotoTagVisibility.html
.. _who_user: who_user.html
.. _bsparse_writing_API: bsparse_writing_API.html
.. _mtlb_a: mtlb_a.html
.. _scicos_sim: scicos_sim.html
.. _isBooleanType: isBooleanType.html
.. _subplot: subplot.html
.. _mode: mode.html
.. _external: external.html
.. _NMOS: NMOS.html
.. _noisegen: noisegen.html
.. _armax1: armax1.html
.. _barh: barh.html
.. _Parameters: section_044e912e9cb9201c7eb95cb2f0160111.html
.. _m2sci_asec: m2sci_asec.html
.. _m2sci_bitor: m2sci_bitor.html
.. _frep2tf: frep2tf.html
.. _return: return.html
.. _winsid: winsid.html
.. _m2sci_svd: m2sci_svd.html
.. _trace: trace.html
.. _variance: variance.html
.. _hilb: hilb.html
.. _Mathoperations_pal: Mathoperations_pal.html
.. _MATZREIM: MATZREIM.html
.. _axes_operations: section_828699b729d1431f6ce22683aae2e9ba.html
.. _EXPBLK_m: EXPBLK_m.html
.. _m2sci_fprintf: m2sci_fprintf.html
.. _m2sci_imag: m2sci_imag.html
.. _xmlRelaxNG: xmlRelaxNG.html
.. _vectorfind: vectorfind.html
.. _demo_mdialog: demo_mdialog.html
.. _SELECT_m: SELECT_m.html
.. _taucs_chfact: taucs_chfact.html
.. _MIN_f: MIN_f.html
.. _m2sci_chol: m2sci_chol.html
.. _union: union.html
.. _winlist: winlist.html
.. _gtild: gtild.html
.. _Programming xcos Blocks: section_3dc9b9d8fe6285868c814b0619b2cc46.html
.. _whereami: whereami.html
.. _printfigure: printfigure.html
.. _xmlAddNs: xmlAddNs.html
.. _qld: qld.html
.. _psmall: psmall.html
.. _rank: rank.html
.. _How to: section_f4c0046e94e1db84a36d793fd8cb58c2.html
.. _matfile2sci: matfile2sci.html
.. _m2sci_erfc: m2sci_erfc.html
.. _tf2ss: tf2ss.html
.. _rafiter: rafiter.html
.. _resize_matrix: resize_matrix.html
.. _m2sci_repmat: m2sci_repmat.html
.. _matrix: matrix.html
.. _execstr: execstr.html
.. _m2sci_great: m2sci_great.html
.. _POWBLK_f: POWBLK_f.html
.. _m2sci_multiplication: m2sci_multiplication.html
.. _regexp: regexp.html
.. _triu: triu.html
.. _CLOCK_c: CLOCK_c.html
.. _jmat: jmat.html
.. _xcosPalAddBlock: xcosPalAddBlock.html
.. _firstnonsingleton: firstnonsingleton.html
.. _BOUNCE: BOUNCE.html
.. _Configuration: section_b9e0617019af5ec5751abfe9c51a6b08.html
.. _m2sci_plot: m2sci_plot.html
.. _comet3d: comet3d.html
.. _readgateway: readgateway.html
.. _datatipSetDisplay: datatipSetDisplay.html
.. _ilib_build: ilib_build.html
.. _root_properties: root_properties.html
.. _uiEqualsTree: uiEqualsTree.html
.. _kron: kron.html
.. _auread: auread.html
.. _atand: atand.html
.. _MATBKSL: MATBKSL.html
.. _uiDeleteNode: uiDeleteNode.html
.. _linspace: linspace.html
.. _simp_mode: simp_mode.html
.. _find: find.html
.. _Exponential: section_e7efa1a1090c20cd27637c80116d1cd2.html
.. _feedback: feedback.html
.. _mfprintf: mfprintf.html
.. _mtlb_prod: mtlb_prod.html
.. _amell: amell.html
.. _minss: minss.html
.. _empty: empty.html
.. _tanhm: tanhm.html
.. _plotprofile: plotprofile.html
.. _colcomp: colcomp.html
.. _gdf: gdf.html
.. _m2sci_cat: m2sci_cat.html
.. _simp: simp.html
.. _2d_plot: section_c6184449ed3011c8c507558b78a52581.html
.. _CallOverloadFunction: CallOverloadFunction.html
.. _Sparse_management_writing_API: Sparse_management_writing_API.html
.. _javasci_faq_v2: javasci_faq_v2.html
.. _chartooem: chartooem.html
.. _isdir: isdir.html
.. _arma: arma.html
.. _sm2ss: sm2ss.html
.. _iscell: iscell.html
.. _SourceP: SourceP.html
.. _SUPER_f: SUPER_f.html
.. _percent: percent.html
.. _scicosim: scicosim.html
.. _poly: poly.html
.. _wavread: wavread.html
.. _lft: lft.html
.. _createdir: createdir.html
.. _lmisolver: lmisolver.html
.. _xmlDelete: xmlDelete.html
.. _Resistor: Resistor.html
.. _x_choose_modeless: x_choose_modeless.html
.. _getScalarBoolean: getScalarBoolean.html
.. _WFILE_f: WFILE_f.html
.. _eval3dp: eval3dp.html
.. _coolcolormap: coolcolormap.html
.. _CANIMXY: CANIMXY.html
.. _SUBMAT: SUBMAT.html
.. _ilib_gen_cleaner: ilib_gen_cleaner.html
.. _xselect: xselect.html
.. _m2sci_pie: m2sci_pie.html
.. _conv2: conv2.html
.. _Matplot_properties: Matplot_properties.html
.. _assert_checktrue: assert_checktrue.html
.. _mtlb_tril: mtlb_tril.html
.. _SATURATION: SATURATION.html
.. _flts: flts.html
.. _cmoment: cmoment.html
.. _TMPDIR: TMPDIR.html
.. _m2sci_type: m2sci_type.html
.. _classmarkov: classmarkov.html
.. _NPN: NPN.html
.. _atomsGetConfig: atomsGetConfig.html
.. _text_properties: text_properties.html
.. _VirtualCLK0: VirtualCLK0.html
.. _prod: prod.html
.. _base2dec: base2dec.html
.. _SRFLIPFLOP: SRFLIPFLOP.html
.. _standard_origin: standard_origin.html
.. _dbphi: dbphi.html
.. _rpem: rpem.html
.. _lstsize: lstsize.html
.. _obs_gram: obs_gram.html
.. _mtlb_exist: mtlb_exist.html
.. _m2sci_num2str: m2sci_num2str.html
.. _nanmedian: nanmedian.html
.. _xmlDTD: xmlDTD.html
.. _mtlb_i: mtlb_i.html
.. _observer: observer.html
.. _dassl: dassl.html
.. _mtlb_delete: mtlb_delete.html
.. _m2sci_bin2dec: m2sci_bin2dec.html
.. _list_double_writing_API: list_double_writing_API.html
.. _czt: czt.html
.. _select: select.html
.. _phasemag: phasemag.html
.. _m2sci_bitcmp: m2sci_bitcmp.html
.. _LOGBLK_f: LOGBLK_f.html
.. _write_csv: write_csv.html
.. _ANDLOG_f: ANDLOG_f.html
.. _set: set.html
.. _m2sci_isa: m2sci_isa.html
.. _consolebox: consolebox.html
.. _ScilabHaveAGraph: ScilabHaveAGraph.html
.. _getdynlibext: getdynlibext.html
.. _randpencil: randpencil.html
.. _loadmatfile: loadmatfile.html
.. _mputstr: mputstr.html
.. _mtlb_s: mtlb_s.html
.. _Zerocrossingdetection_pal: Zerocrossingdetection_pal.html
.. _DEMUX: DEMUX.html
.. _Scilab Gateway API: section_e56385980798411b94d297d989499642.html
.. _polar: polar.html
.. _umf_ludel: umf_ludel.html
.. _TCL_EvalStr: TCL_EvalStr.html
.. _historysize: historysize.html
.. _max: max.html
.. _ctr_gram: ctr_gram.html
.. _znaupd: znaupd.html
.. _xs2gif: xs2gif.html
.. _m2sci_home: m2sci_home.html
.. _Demo Tools: section_050a727469979d35be1b87415c35e98d.html
.. _zeropen: zeropen.html
.. _casc: casc.html
.. _Files : Input/Output functions: section_8220fe99dcb09d6a1be895a1d002399d.html
.. _ilib_include_flag: ilib_include_flag.html
.. _m2sci_abs: m2sci_abs.html
.. _xtitle: xtitle.html
.. _m2sci_cd: m2sci_cd.html
.. _Variables: section_9a14a410d4739cc693218719c9afb3fe.html
.. _eval3d: eval3d.html
.. _Graphics : exporting and printing: section_dfed6fcc9e371f9c5af6874626be2b3c.html
.. _m2sci_true: m2sci_true.html
.. _editor: editor.html
.. _PlotSparse: PlotSparse.html
.. _findBD: findBD.html
.. _Lookup tables palette: section_9f6cf7b20ddbceb6a4cfd3ce7dd0e24f.html
.. _ludel: ludel.html
.. _acsch: acsch.html
.. _property: section_10ecd9d2e70f950638ea02af7bf0ef79.html
.. _surface_properties: surface_properties.html
.. _String_management_writing_API: String_management_writing_API.html
.. _About_M2SCI_tools: About_M2SCI_tools.html
.. _rational: rational.html
.. _proj: proj.html
.. _geom3d: geom3d.html
.. _dec2oct: dec2oct.html
.. _m2sci_echo: m2sci_echo.html
.. _m2sci_all: m2sci_all.html
.. _cheb2mag: cheb2mag.html
.. _percentnan: percentnan.html
.. _for: for.html
.. _repfreq: repfreq.html
.. _plot3d: plot3d.html
.. _text: section_751e57145e7c88d4e4190e805e9cc924.html
.. _corr: corr.html
.. _segs_properties: segs_properties.html
.. _show_pca: show_pca.html
.. _m2sci_asech: m2sci_asech.html
.. _MATZCONJ: MATZCONJ.html
.. _mopen: mopen.html
.. _xsegs: xsegs.html
.. _xfpolys: xfpolys.html
.. _xcorr: xcorr.html
.. _rotate: rotate.html
.. _color_list: color_list.html
.. _Polynomial_management_reading_API: Polynomial_management_reading_API.html
.. _read4b: read4b.html
.. _listvarinfile: listvarinfile.html
.. _phc: phc.html
.. _bitcmp: bitcmp.html
.. _plot2d3: plot2d3.html
.. _full: full.html
.. _MATMUL: MATMUL.html
.. _ANDBLK: ANDBLK.html
.. _h_inf: h_inf.html
.. _m2sci_fullfile: m2sci_fullfile.html
.. _m2sci_ndims: m2sci_ndims.html
.. _chol: chol.html
.. _Boolean: section_98793946a28f3ecc098538060235d794.html
.. _acosh: acosh.html
.. _Implicit_pal: Implicit_pal.html
.. _VVsourceAC: VVsourceAC.html
.. _cond2sp: cond2sp.html
.. _m2sci_dec2hex: m2sci_dec2hex.html
.. _N: section_7b909780760fd83af346e2bd2327218f.html
.. _PROD_f: PROD_f.html
.. _strchr: strchr.html
.. _plot: plot.html
.. _mtlb_eye: mtlb_eye.html
.. _steadycos: steadycos.html
.. _m2sci_erfcx: m2sci_erfcx.html
.. _axis: section_746403c865a9a29d80dbf117991b3440.html
.. _xs2png: xs2png.html
.. _strrchr: strrchr.html
.. _nanmax: nanmax.html
.. _geometric_shapes: section_32b0df19ca3ab0e0712f9e8a94e2e9be.html
.. _matfile_open: matfile_open.html
.. _dllinfo: dllinfo.html
.. _SUMMATION: SUMMATION.html
.. _loadhistory: loadhistory.html
.. _console: console.html
.. _pertrans: pertrans.html
.. _scicos_model: scicos_model.html
.. _bitor: bitor.html
.. _obscont: obscont.html
.. _m2sci_ispc: m2sci_ispc.html
.. _mtlb_dir: mtlb_dir.html
.. _sparse: section_0abddeeb6ab9673004367c36a3db5c0a.html
.. _V: section_d1b0cc9a63f197da68f38d8e9d886802.html
.. _find_freq: find_freq.html
.. _fix: fix.html
.. _kalm: kalm.html
.. _xclear: xclear.html
.. _umf_luget: umf_luget.html
.. _label_properties: label_properties.html
.. _m2sci_fix: m2sci_fix.html
.. _length: length.html
.. _kpure: kpure.html
.. _E: section_19e27c515da01f6027e7c2e1a2fa8654.html
.. _sdf: sdf.html
.. _thrownan: thrownan.html
.. _temp_law_default: temp_law_default.html
.. _contourf: contourf.html
.. _princomp: princomp.html
.. _auwrite: auwrite.html
.. _m2sci_global: m2sci_global.html
.. _end: end.html
.. _elseif: elseif.html
.. _arma2p: arma2p.html
.. _m2sci_lower: m2sci_lower.html
.. _istssession: istssession.html
.. _mtlb_max: mtlb_max.html
.. _m2sci_isscalar: m2sci_isscalar.html
.. _list_param: list_param.html
.. _clc: clc.html
.. _addf: addf.html
.. _Optimization simplex: section_1b29874556eade84d39d9ddc5017e712.html
.. _IN_f: IN_f.html
.. _selection_ga_elitist: selection_ga_elitist.html
.. _xsetech: xsetech.html
.. _close: close.html
.. _odedc: odedc.html
.. _SCIHOME: SCIHOME.html
.. _m2sci_balance: m2sci_balance.html
.. _polynomial: section_74dc8c59f2e04f6dfe1f3c5000f9cf00.html
.. _slash: slash.html
.. _toc: toc.html
.. _acoth: acoth.html
.. _m2sci_lookfor: m2sci_lookfor.html
.. _G_make: G_make.html
.. _User defined functions palette: section_8930afbe1346805ad74e4d2a60e27e07.html
.. _sum: sum.html
.. _optim_nsga2: optim_nsga2.html
.. _demo_choose: demo_choose.html
.. _Matplot1: Matplot1.html
.. _scanf: scanf.html
.. _setenv: setenv.html
.. _mtlb_hold: mtlb_hold.html
.. _call: call.html
.. _systmat: systmat.html
.. _pie: pie.html
.. _translatepaths: translatepaths.html
.. _LOOKUP_f: LOOKUP_f.html
.. _tbx_builder_gateway_lang: tbx_builder_gateway_lang.html
.. _graphics_fonts: graphics_fonts.html
.. _Demonstrationsblocks_pal: Demonstrationsblocks_pal.html
.. _sva: sva.html
.. _ls: ls.html
.. _polyExample: polyExample.html
.. _fieldnames: fieldnames.html
.. _beep: beep.html
.. _BPLATFORM: BPLATFORM.html
.. _END_c: END_c.html
.. _m2sci_transpose: m2sci_transpose.html
.. _syssize: syssize.html
.. _analyze: analyze.html
.. _EXTRACT: EXTRACT.html
.. _predef: predef.html
.. _datatipSetOrientation: datatipSetOrientation.html
.. _qp_solve: qp_solve.html
.. _wintercolormap: wintercolormap.html
.. _autumncolormap: autumncolormap.html
.. _setbpt: setbpt.html
.. _prefs_SciNotes: prefs_SciNotes.html
.. _delip: delip.html
.. _Scilab Computational Functions: section_7ddadf5a188b954aa8e5e4a6d20701ab.html
.. _taucs_license: taucs_license.html
.. _nehari: nehari.html
.. _graduate: graduate.html
.. _stabil: stabil.html
.. _sprand: sprand.html
.. _m2sci_less_equal: m2sci_less_equal.html
.. _setmenu: setmenu.html
.. _lasterror: lasterror.html
.. _demo_end: demo_end.html
.. _m2sci_toc: m2sci_toc.html
.. _mtlb_true: mtlb_true.html
.. _hypermat: hypermat.html
.. _Utilities Functions: section_7597adb46761e1792c33db2259d4c67b.html
.. _CUMSUM: CUMSUM-a85e04b226fbdce6a2da89e965ea9df.html
.. _stringExample: stringExample.html
.. _m2sci_more: m2sci_more.html
.. _comet: comet.html
.. _Semidefinite Programming: section_2df5343d55388884ee2de90972931fe0.html
.. _GOTO: GOTO.html
.. _EXTRACTBITS: EXTRACTBITS.html
.. _getAllocatedSingleString: getAllocatedSingleString.html
.. _bytecodewalk: bytecodewalk.html
.. _yulewalk: yulewalk.html
.. _range: range.html
.. _sech: sech.html
.. _ffilt: ffilt.html
.. _BITSET: BITSET-b934c0d76f55255a47ccca35a05e32e3.html
.. _ddp: ddp.html
.. _center: center.html
.. _xlabel: xlabel.html
.. _X: section_624d45c43b6a0c7f6b2f06dcc19020b9.html
.. _powershell: powershell.html
.. _curblock: curblock.html
.. _lsqrsolve: lsqrsolve.html
.. _m2sci_zlabel: m2sci_zlabel.html
.. _drawaxis: drawaxis.html
.. _errclear: errclear.html
.. _reglin: reglin.html
.. _getos: getos.html
.. _error_table: error_table.html
.. _Scilab/Xcos Data Structures: section_11925ec052c024d3089c298ca9aa8fa1.html
.. _xnumb: xnumb.html
.. _taucs_chsolve: taucs_chsolve.html
.. _getcolor: getcolor.html
.. _nmplot: nmplot.html
.. _neldermead_overview: neldermead_overview.html
.. _CheckLhs: CheckLhs.html
.. _optim_sa: optim_sa.html
.. _where: where.html
.. _rmdir: rmdir.html
.. _m2sci_delete: m2sci_delete.html
.. _makecell: makecell.html
.. _MATSUM: MATSUM.html
.. _strrev: strrev.html
.. _linmeq: linmeq.html
.. _gce: gce.html
.. _m2sci_ceil: m2sci_ceil.html
.. _m2sci_unix: m2sci_unix.html
.. _twinkle: twinkle.html
.. _Sparse Matrix Manipulation: section_f2086a67391fa71b3516528e41f9ea69.html
.. _m2sci_closereq: m2sci_closereq.html
.. _mfile2sci: mfile2sci.html
.. _remove_param: remove_param.html
.. _m2sci_colordef: m2sci_colordef.html
.. _atomsVersion: atomsVersion.html
.. _m2sci_warning: m2sci_warning.html
.. _mtlb_repmat: mtlb_repmat.html
.. _scaling: scaling.html
.. _system_getproperty: system_getproperty.html
.. _m2sci_acos: m2sci_acos.html
.. _pencan: pencan.html
.. _isDoubleType: isDoubleType.html
.. _uiCreateNode: uiCreateNode.html
.. _findfiles: findfiles.html
.. _varargin: varargin.html
.. _Symbolic: section_db6d51f8fc20252922e5535b93019793.html
.. _mgetstr: mgetstr.html
.. _nnz: nnz.html
.. _numdiff: numdiff.html
.. _rref: rref.html
.. _Links: section_1412e6685bf613fb90563189201edc7e.html
.. _Set operations: section_9114e20d8df546cbd9b4311a356cc3ad.html
.. _messagebox: messagebox.html
.. _nanmeanf: nanmeanf.html
.. _plzr: plzr.html
.. _findm: findm.html
.. _dsaupd: dsaupd.html
.. _m2sci_strcmpi: m2sci_strcmpi.html
.. _Interpolation: section_4e80dbefcd9c0ee3f3dc4777b42ed4ca.html
.. _generic_block3: generic_block3.html
.. _CLKSOMV_f: CLKSOMV_f.html
.. _Bitwise operations: section_e012f914965cd06d74a865c123ee3b2b.html
.. _utilities: section_138ea34c81b8f19c08ac44351b0ff644.html
.. _RICC: RICC-3640f0aabea1a4c3d1b9c40b31c8b3d5.html
.. _ilib_mex_build: ilib_mex_build.html
.. _head_comments: head_comments.html
.. _tbx_build_help_loader: tbx_build_help_loader.html
.. _int8: int8.html
.. _dhnorm: dhnorm.html
.. _B: section_4832abdb0dc35661e1869361d9cdbc64.html
.. _BARXY: BARXY.html
.. _varargout: varargout.html
.. _Gyrator: Gyrator.html
.. _unix_g: unix_g.html
.. _erfcx: erfcx.html
.. _playsnd: playsnd.html
.. _gfare: gfare.html
.. _m2sci_surf: m2sci_surf.html
.. _spones: spones.html
.. _LOGIC: LOGIC.html
.. _secto3d: secto3d.html
.. _comma: comma.html
.. _getblocklabel: getblocklabel.html
.. _interaction: section_d5a362bfc5837baa7ce6c93e74c80fdc.html
.. _mtlb_imp: mtlb_imp.html
.. _str2code: str2code.html
.. _des2ss: des2ss.html
.. _MATPINV: MATPINV.html
.. _temp_law_huang: temp_law_huang.html
.. _fftshift: fftshift.html
.. _save: save.html
.. _left: left.html
.. _exp: exp.html
.. _tf2des: tf2des.html
.. _Lhs: Lhs.html
.. _srfaur: srfaur.html
.. _datevec: datevec.html
.. _median: median.html
.. _MCLOCK_f: MCLOCK_f.html
.. _nextpow2: nextpow2.html
.. _standard_inputs: standard_inputs.html
.. _fplot3d: fplot3d.html
.. _xarc: xarc.html
.. _m2sci_great_equal: m2sci_great_equal.html
.. _setlanguage: setlanguage.html
.. _accept_func_default: accept_func_default.html
.. _oceancolormap: oceancolormap.html
.. _deletefile: deletefile.html
.. _optim: optim.html
.. _chfact: chfact.html
.. _m2sci_fliplr: m2sci_fliplr.html
.. _m2sci_dec2bin: m2sci_dec2bin.html
.. _tlist: tlist.html
.. _doubleExample: doubleExample.html
.. _overloading: overloading.html
.. _comparison: comparison.html
.. _with_tk: with_tk.html
.. _tbx_build_gateway_loader: tbx_build_gateway_loader.html
.. _derivative: derivative.html
.. _math_rendering_features_in_graphic: math_rendering_features_in_graphic.html
.. _m2sci_inv: m2sci_inv.html
.. _mtlb_t: mtlb_t.html
.. _list_double_reading_API: list_double_reading_API.html
.. _m2sci_ylabel: m2sci_ylabel.html
.. _chart: chart.html
.. _equil1: equil1.html
.. _Signal processing palette: section_33a96e379736104ed40fd25ae613e54a.html
.. _intl: intl.html
.. _spanplus: spanplus.html
.. _eval: eval.html
.. _xmltojar: xmltojar.html
.. _cdfchn: cdfchn.html
.. _tree_show: tree_show.html
.. _log10: log10.html
.. _assert_overview: assert_overview.html
.. _m2sci_sign: m2sci_sign.html
.. _fortran_block: fortran_block.html
.. _DoubleManagement_callscilab: DoubleManagement_callscilab.html
.. _list_createlist_API: list_createlist_API.html
.. _datatipCreate: datatipCreate.html
.. _uiDisplayTree: uiDisplayTree.html
.. _getAllocatedSinglePoly: getAllocatedSinglePoly.html
.. _clf: clf.html
.. _del_help_chapter: del_help_chapter.html
.. _isBooleanSparseType: isBooleanSparseType.html
.. _SAWTOOTH_f: SAWTOOTH_f.html
.. _Principal Component Analysis: section_cada0ed775fc09d2bc9dc01637e052d5.html
.. _spchol: spchol.html
.. _saveconsecutivecommands: saveconsecutivecommands.html
.. _strtok: strtok.html
.. _macglov: macglov.html
.. _else: else.html
.. _gcbo: gcbo.html
.. _help: help.html
.. _abs: abs.html
.. _linear_interpn: linear_interpn.html
.. _handle: section_ebb8f8860c6812a0395843962ab552d1.html
.. _lqg_ltr: lqg_ltr.html
.. _delmenu: delmenu.html
.. _then: then.html
.. _m2sci_close: m2sci_close.html
.. _xmlAsNumber: xmlAsNumber.html
.. _setdiff: setdiff.html
.. _xs2emf: xs2emf.html
.. _stdevf: stdevf.html
.. _projspec: projspec.html
.. _dhinf: dhinf.html
.. _eqiir: eqiir.html
.. _man: man.html
.. _hermit: hermit.html
.. _ssrand: ssrand.html
.. _algorithms: section_a3c095d7eae628433f02fab9bb53164c.html
.. _umfpack: umfpack.html
.. _m2sci_save: m2sci_save.html
.. _st_ility: st_ility.html
.. _param3d: param3d.html
.. _m2sci_nargout: m2sci_nargout.html
.. _Elementary Functions: section_314da8221775001cf9702d0af5253eae.html
.. _m2sci_helpbrowser: m2sci_helpbrowser.html
.. _m2sci_ifft: m2sci_ifft.html
.. _not: not.html
.. _m2sci_break: m2sci_break.html
.. _parents: parents.html
.. _ndims: ndims.html
.. _fsolve: fsolve.html
.. _TCL_UnsetVar: TCL_UnsetVar.html
.. _xs2ps: xs2ps.html
.. _Optimization base: section_9a91c077be6a35d256b6112c69d20cc3.html
.. _show_pixmap: show_pixmap.html
.. _assert_comparecomplex: assert_comparecomplex.html
.. _StringManagement_callscilab: StringManagement_callscilab.html
.. _Sparse Matrix Conversion: section_2360515db941150ca972e1ea099d9004.html
.. _m2sci_isinteger: m2sci_isinteger.html
.. _splin: splin.html
.. _xrects: xrects.html
.. _m2sci_findstr: m2sci_findstr.html
.. _P: section_5ac6369056fefff8125f54111345291d.html
.. _savewave: savewave.html
.. _m2sci_and: m2sci_and.html
.. _m2sci_diff: m2sci_diff.html
.. _CLKINV_f: CLKINV_f.html
.. _VanneReglante: VanneReglante.html
.. _flipdim: flipdim.html
.. _xbasr: xbasr.html
.. _res_with_prec: res_with_prec.html
.. _iserror: iserror.html
.. _m2sci_sinh: m2sci_sinh.html
.. _intg: intg.html
.. _frfit: frfit.html
.. _get: get.html
.. _sylm: sylm.html
.. _unsetmenu: unsetmenu.html
.. _m2sci_full: m2sci_full.html
.. _percentpi: percentpi.html
.. _strange: strange.html
.. _temp_law_csa: temp_law_csa.html
.. _m2sci_not_equal: m2sci_not_equal.html
.. _coff: coff.html
.. _xmlGetNsByPrefix: xmlGetNsByPrefix.html
.. _tabul: tabul.html
.. _Common_isvarmatrixtype_API: Common_isvarmatrixtype_API.html
.. _rowinout: rowinout.html
.. _analpf: analpf.html
.. _TEXT_f: TEXT_f.html
.. _arhnk: arhnk.html
.. _W: section_b227835831c1507107f815cb3e34b188.html
.. _addhistory: addhistory.html
.. _Matlab-Scilab equivalents: section_d08d76df1b188db7bd8b8cc03c469588.html
.. _m2sci_case: m2sci_case.html
.. _list_sparse_writing_API: list_sparse_writing_API.html
.. _Elementary matrices: section_b6826d9288eae80d3ca4d4f72682e864.html
.. _atomsAutoloadList: atomsAutoloadList.html
.. _m2sci_fgetl: m2sci_fgetl.html
.. _rlist: rlist.html
.. _meanf: meanf.html
.. _CANIMXY3D: CANIMXY3D.html
.. _m2sci_complex: m2sci_complex.html
.. _MATTRAN: MATTRAN.html
.. _mucomp: mucomp.html
.. _m2sci_fscanf: m2sci_fscanf.html
.. _GUI: section_d1b20b835a47912f1aeaa5f0d83e36e1.html
.. _R: section_d29dd9c1ea02a76368baad1ed8a05408.html
.. _cumsum: cumsum.html
.. _Thermohydraulics palette: section_f9eb7d0ebf7f54cf27673d58fde750eb.html
.. _x_mdialog: x_mdialog.html
.. _canon: canon.html
.. _sysconv: sysconv.html
.. _mtlb_all: mtlb_all.html
.. _frmag: frmag.html
.. _errcatch: errcatch.html
.. _xcosPalAdd: xcosPalAdd.html
.. _iconvert: iconvert.html
.. _string: section_3d8f654dcb037b1052edb7b8089fd21d.html
.. _rand: rand.html
.. _less: less.html
.. _Electrical_pal: Electrical_pal.html
.. _detrend: detrend.html
.. _Symbolic: section_034fc5618fc9461c8e13b6a655d9b6c4.html
.. _zgrid: zgrid.html
.. _xstring: xstring.html
.. _m2sci_bar: m2sci_bar.html
.. _library: library.html
.. _mtlb_sum: mtlb_sum.html
.. _mtlb_zeros: mtlb_zeros.html
.. _figure: figure.html
.. _m2sci_clf: m2sci_clf.html
.. _intdec: intdec.html
.. _lcf: lcf.html
.. _fscanf: fscanf.html
.. _m2sci_atan2: m2sci_atan2.html
.. _contr: contr.html
.. _m2sci_input: m2sci_input.html
.. _Matrix manipulation: section_54cbd01fae0b5001ef7c0949694ab148.html
.. _M_freq: M_freq.html
.. _dot: dot.html
.. _dec2base: dec2base.html
.. _gammaln: gammaln.html
.. _kernel: kernel.html
.. _x_choices: x_choices.html
.. _Assert: section_b07b9a4da73db403bafceb2fb44c28e9.html
.. _error: error.html
.. _mtlb_axis: mtlb_axis.html
.. _PuitsP: PuitsP.html
.. _clipboard: clipboard.html
.. _m2sci_ones: m2sci_ones.html
.. _MUX: MUX.html
.. _newfun: newfun.html
.. _chepol: chepol.html
.. _plot2d: plot2d.html
.. _armac: armac.html
.. _ged: ged.html
.. _sub2ind: sub2ind.html
.. _xget: xget.html
.. _Regression: section_d3ce323945f744a9e1329f04c35dc59c.html
.. _m2sci_fread: m2sci_fread.html
.. _ftuneq: ftuneq.html
.. _fscanfMat: fscanfMat.html
.. _isequalbitwise: isequalbitwise.html
.. _TrigFun: TrigFun.html
.. _strcmp: strcmp.html
.. _STEP_FUNCTION: STEP_FUNCTION.html
.. _freeAllocatedSparseMatrix: freeAllocatedSparseMatrix.html
.. _mtlb_ifft: mtlb_ifft.html
.. _linf: linf.html
.. _cell2mat: cell2mat.html
.. _input: input.html
.. _glue: glue.html
.. _uicontextmenu: uicontextmenu.html
.. _while: while.html
.. _m2sci_besseli: m2sci_besseli.html
.. _pwd: pwd.html
.. _calendar: calendar.html
.. _contour: contour.html
.. _getshortpathname: getshortpathname.html
.. _NRMSOM_f: NRMSOM_f.html
.. _prettyprint: prettyprint.html
.. _m2sci_clc: m2sci_clc.html
.. _name2rgb: name2rgb.html
.. _freeAllocatedMatrixOfComplexPoly: freeAllocatedMatrixOfComplexPoly.html
.. _integrate: integrate.html
.. _stringbox: stringbox.html
.. _colregul: colregul.html
.. _m2sci_int8: m2sci_int8.html
.. _m2sci_while: m2sci_while.html
.. _m2sci_logical: m2sci_logical.html
.. _LOGICAL_OP: LOGICAL_OP.html
.. _gainplot: gainplot.html
.. _Extract_Activation: Extract_Activation.html
.. _tbx_build_loader: tbx_build_loader.html
.. _spcompack: spcompack.html
.. _TCL_EvalFile: TCL_EvalFile.html
.. _percentk: percentk.html
.. _m2sci_ans: m2sci_ans.html
.. _companion: companion.html
.. _3d_plot: section_4b75c6973f14a0bc9104219ff6f959d2.html
.. _cshep2d: cshep2d.html
.. _smooth: smooth.html
.. _ENDBLK: ENDBLK.html
.. _m2sci_int16: m2sci_int16.html
.. _findobj: findobj.html
.. _legends: legends.html
.. _damp: damp.html
.. _getAllocatedSparseMatrix: getAllocatedSparseMatrix.html
.. _CheckInputArgument: CheckInputArgument.html
.. _Scilab keywords: scilab_keywords.html
.. _m2sci_bitxor: m2sci_bitxor.html
.. _dsearch: dsearch.html
.. _p_margin: p_margin.html
.. _leqr: leqr.html
.. _symbols: symbols.html
.. _AFFICH_m: AFFICH_m.html
.. _lqg2stan: lqg2stan.html
.. _atomsDepTreeShow: atomsDepTreeShow.html
.. _is_handle_valid: is_handle_valid.html
.. _convstr: convstr.html
.. _m2sci_lu: m2sci_lu.html
.. _isletter: isletter.html
.. _recompilefunction: recompilefunction.html
.. _figure_operations: section_117e012164ef3101749540a1bbec6be2.html
.. _mprintf: mprintf.html
.. _xcosPal: xcosPal.html
.. _cdffnc: cdffnc.html
.. _dtsi: dtsi.html
.. _nanmin: nanmin.html
.. _INTEGRAL_m: INTEGRAL_m.html
.. _m2sci_log: m2sci_log.html
.. _Integer representation: section_ffdc7dbc0642f0a1572e75d33e3610e7.html
.. _denom: denom.html
.. _wiener: wiener.html
.. _hat: hat.html
.. _CONSTRAINT_c: CONSTRAINT_c.html
.. _graphics_entities: graphics_entities.html
.. _householder: householder.html
.. _csc: csc.html
.. _case: case.html
.. _m2sci_strfind: m2sci_strfind.html
.. _atomsUpdate: atomsUpdate.html
.. _interp2d: interp2d.html
.. _api_scilab_getting_started: api_scilab_getting_started.html
.. _Continuous_pal: Continuous_pal.html
.. _htrianr: htrianr.html
.. _m2sci_uigetdir: m2sci_uigetdir.html
.. _bezout: bezout.html
.. _with_javasci: with_javasci.html
.. _m2sci_erf: m2sci_erf.html
.. _XMLObjects: XMLObjects.html
.. _create_palette: create_palette.html
.. _chsolve: chsolve.html
.. _m2sci_date: m2sci_date.html
.. _coffg: coffg.html
.. _buildouttb: buildouttb.html
.. _bitand: bitand.html
.. _filebrowser: filebrowser.html
.. _Matplot: Matplot.html
.. _parallel_run: parallel_run.html
.. _mtlb_realmin: mtlb_realmin.html
.. _ss2ss: ss2ss.html
.. _ricc: ricc.html
.. _selection_ga_random: selection_ga_random.html
.. _pen2ea: pen2ea.html
.. _m2sci_bessely: m2sci_bessely.html
.. _floor: floor.html
.. _lcmdiag: lcmdiag.html
.. _contour2di: contour2di.html
.. _booleanExample: booleanExample.html
.. _remez: remez.html
.. _m2sci_cumprod: m2sci_cumprod.html
.. _mtlb_triu: mtlb_triu.html
.. _tbx_build_blocks: tbx_build_blocks.html
.. _xmltochm: xmltochm.html
.. _factor: factor.html
.. _IdealTransformer: IdealTransformer.html
.. _Discrete time systems palette: section_de9e6c67727ebcd18df02101b421eeb9.html
.. _g_margin: g_margin.html
.. _lsq: lsq.html
.. _datatipRedraw: datatipRedraw.html
.. _CCS: CCS.html
.. _mutation_ga_default: mutation_ga_default.html
.. _delete: delete.html
.. _atomsIsLoaded: atomsIsLoaded.html
.. _diff: diff.html
.. _SINBLK_f: SINBLK_f.html
.. _fit_dat: fit_dat.html
.. _createScalarInteger8: createScalarInteger8.html
.. _mtlb_int16: mtlb_int16.html
.. _scicos_state: scicos_state.html
.. _listfiles: listfiles.html
.. _m2sci_horzcat: m2sci_horzcat.html
.. _list_pointer_writing_API: list_pointer_writing_API.html
.. _matrices: matrices.html
.. _assert_checkfilesequal: assert_checkfilesequal.html
.. _and_op: and_op.html
.. _load_save: section_9c0b740f709e5f75b193db5cb4aae16b.html
.. _toeplitz: toeplitz.html
.. _conj: conj.html
.. _oct2dec: oct2dec.html
.. _speye: speye.html
.. _mput: mput.html
.. _legend: legend.html
.. _fstabst: fstabst.html
.. _m2sci_frewind: m2sci_frewind.html
.. _m2sci_perms: m2sci_perms.html
.. _erfc: erfc.html
.. _Bache: Bache.html
.. _loadwave: loadwave.html
.. _nyquistfrequencybounds: nyquistfrequencybounds.html
.. _sysdiag: sysdiag.html
.. _macr2tree: macr2tree.html
.. _mcisendstring: mcisendstring.html
.. _linsolve: linsolve.html
.. _mtlb_realmax: mtlb_realmax.html
.. _link: link.html
.. _SCI: SCI.html
.. _m2sci_cell: m2sci_cell.html
.. _maxfiles: maxfiles.html
.. _interp: interp.html
.. _DLR: DLR.html
.. _spec: spec.html
.. _tbx_builder_macros: tbx_builder_macros.html
.. _strstr: strstr.html
.. _boolean_writing_API: boolean_writing_API.html
.. _ss2tf: ss2tf.html
.. _mtlb_dec2hex: mtlb_dec2hex.html
.. _accept_func_vfsa: accept_func_vfsa.html
.. _mclose: mclose.html
.. _integerExample: integerExample.html
.. _sfact: sfact.html
.. _pareto_filter: pareto_filter.html
.. _m2sci_isempty: m2sci_isempty.html
.. _hank: hank.html
.. _isempty: isempty.html
.. _Algorithms: section_81c7aa4cd3b192755f4f21414234d4f6.html
.. _xmlDump: xmlDump.html
.. _mtlb_false: mtlb_false.html
.. _assert_generror: assert_generror.html
.. _xmlValidate: xmlValidate.html
.. _getlookandfeel: getlookandfeel.html
.. _EXTTRI: EXTTRI.html
.. _Sparse_management_reading_API: Sparse_management_reading_API.html
.. _basename: basename.html
.. _xgetmouse: xgetmouse.html
.. _pie: section_25f0d262a161e736adea486dfdd13252.html
.. _hotcolormap: hotcolormap.html
.. _csim: csim.html
.. _intc: intc.html
.. _sethistoryfile: sethistoryfile.html
.. _who: who.html
.. _dispbpt: dispbpt.html
.. _m2sci_hankel: m2sci_hankel.html
.. _halt: halt.html
.. _RELATIONALOP: RELATIONALOP.html
.. _m2sci_strrep: m2sci_strrep.html
.. _TCL_ExistArray: TCL_ExistArray.html
.. _m2sci_uint8: m2sci_uint8.html
.. _polyline_properties: polyline_properties.html
.. _coth: coth.html
.. _percentsn: percentsn.html
.. _xfrect: xfrect.html
.. _javalibrarypath: javalibrarypath.html
.. _save_format: save_format.html
.. _xmlDocument: xmlDocument.html
.. _xs2eps: xs2eps.html
.. _MATDIV: MATDIV.html
.. _calfrq: calfrq.html
.. _getdate: getdate.html
.. _gda: gda.html
.. _readxls: readxls.html
.. _m2sci_false: m2sci_false.html
.. _ss2des: ss2des.html
.. _log: log.html
.. _realtime: realtime.html
.. _TRASH_f: TRASH_f.html
.. _Operators: section_9e1e3aa436a25f6e6d969e8ad83f3823.html
.. _optim_nsga: optim_nsga.html
.. _m2sci_elementwise_power: m2sci_elementwise_power.html
.. _Variables: section_d863f88d5977763052535229733f6a4d.html
.. _m2sci_acot: m2sci_acot.html
.. _host: host.html
.. _numer: numer.html
.. _fec: fec.html
.. _DisableInteractiveMode: DisableInteractiveMode.html
.. _derivat: derivat.html
.. _diary: diary.html
.. _tril: tril.html
.. _getmemory: getmemory.html
.. _setlookandfeel: setlookandfeel.html
.. _list_integer_reading_API: list_integer_reading_API.html
.. _arl2: arl2.html
.. _det: det.html
.. _m2sci_ferror: m2sci_ferror.html
.. _Spreadsheet: section_23c95ce53bb29a803946fe5096843d5e.html
.. _freq_div: freq_div.html
.. _xinit: xinit.html
.. _atomsAutoload: atomsAutoload.html
.. _findmsvccompiler: findmsvccompiler.html
.. _warning: warning.html
.. _Cste: Cste.html
.. _coding_ga_binary: coding_ga_binary.html
.. _kroneck: kroneck.html
.. _ftest: ftest.html
.. _sident: sident.html
.. _isdigit: isdigit.html
.. _savematfile: savematfile.html
.. _colordef: colordef.html
.. _arc_properties: arc_properties.html
.. _INTRP2BLK_f: INTRP2BLK_f.html
.. _atomsSaveConfig: atomsSaveConfig.html
.. _mu2lin: mu2lin.html
.. _routh_t: routh_t.html
.. _m2sci_realmax: m2sci_realmax.html
.. _Integers: section_520c9df934934d8dd5a6b731ea9b761e.html
.. _Xcos: section_0dcb0629b85c08455d94878e82358904.html
.. _taucs_chinfo: taucs_chinfo.html
.. _getscilabkeywords: getscilabkeywords.html
.. _stripblanks: stripblanks.html
.. _summercolormap: summercolormap.html
.. _addcolor: addcolor.html
.. _sound: sound.html
.. _strspn: strspn.html
.. _st_deviation: st_deviation.html
.. _fourplan: fourplan.html
.. _completion: completion.html
.. _Hypothesis Testing: section_addc87040d750601166434bde93e97ef.html
.. _schur: schur.html
.. _bode: bode.html
.. _readmps: readmps.html
.. _atomsRemove: atomsRemove.html
.. _Implicit palette: section_05f63d1b47aaae5ca1474c89fde50dfc.html
.. _IFTHEL_f: IFTHEL_f.html
.. _list_boolean_reading_API: list_boolean_reading_API.html
.. _disp: disp.html
.. _ans: ans.html
.. _m2sci_toeplitz: m2sci_toeplitz.html
.. _emptystr: emptystr.html
.. _zpch2: zpch2.html
.. _mtlb_isletter: mtlb_isletter.html
.. _function: function.html
.. _tempname: tempname.html
.. _dgettext: dgettext.html
.. _CSCOPXY3D: CSCOPXY3D.html
.. _m2sci_cumsum: m2sci_cumsum.html
.. _unglue: unglue.html
.. _palettes: section_e049b0d1ae49edd62e21a89455b37c6c.html
.. _isreal: isreal.html
.. _m2sci_det: m2sci_det.html
.. _fcontour: fcontour.html
.. _lcm: lcm.html
.. _matfile_varwrite: matfile_varwrite.html
.. _unix_s: unix_s.html
.. _TKSCALE: TKSCALE.html
.. _abinv: abinv.html
.. _real: real.html
.. _interp3d: interp3d.html
.. _lufact: lufact.html
.. _Portaction_pal: Portaction_pal.html
.. _sincd: sincd.html
.. _clearfun: clearfun.html
.. _Python Environment: section_e1d7487dab4e76d42dae960e9135b3ae.html
.. _m2sci_norm: m2sci_norm.html
.. _matfile_close: matfile_close.html
.. _m2sci_varargout: m2sci_varargout.html
.. _ldivf: ldivf.html
.. _merror: merror.html
.. _ARnoldi PACKage (ARPACK binding): section_24aff88645019f648ebfb426afff06e9.html
.. _Dynamic/incremental Link: section_b434249e23a1bacc3883ec0f26ff52fc.html
.. _zpbutt: zpbutt.html
.. _Math operations palette: section_9cdd4d3df435b43fdb0b2030ef9e66fc.html
.. _variancef: variancef.html
.. _I: section_bd0b554abf27dd131854228356b71fd3.html
.. _GlobalProperty: GlobalProperty.html
.. _mfscanf: mfscanf.html
.. _sinh: sinh.html
.. _titlepage: titlepage.html
.. _m2sci_power: m2sci_power.html
.. _Discrete_pal: Discrete_pal.html
.. _TCLSS: TCLSS.html
.. _m2sci_acoth: m2sci_acoth.html
.. _minus: minus.html
.. _tohome: tohome.html
.. _strncpy: strncpy.html
.. _findmsifortcompiler: findmsifortcompiler.html
.. _dir: dir.html
.. _time_id: time_id.html
.. _ZCROSS_f: ZCROSS_f.html
.. _m2sci_fopen: m2sci_fopen.html
.. _mtlb_fscanf: mtlb_fscanf.html
.. _format: format.html
.. _m2sci_end: m2sci_end.html
.. _xs2jpg: xs2jpg.html
.. _neldermead: neldermead.html
.. _Neldermead: section_996ac45bd8bf6981675a3deffce13c8a.html
.. _ilib_verbose: ilib_verbose.html
.. _im_inv: im_inv.html
.. _ordmmd: ordmmd.html
.. _scanf_conversion: scanf_conversion.html
.. _bool2s: bool2s.html
.. _dae: dae.html
.. _fminsearch: fminsearch.html
.. _xgetech: xgetech.html
.. _CurrentSensor: CurrentSensor.html
.. _Rhs: Rhs.html
.. _dec2hex: dec2hex.html
.. _Diode: Diode.html
.. _bitget: bitget.html
.. _mtlb_int32: mtlb_int32.html
.. _assert_checkalmostequal: assert_checkalmostequal.html
.. _m2sci_eval: m2sci_eval.html
.. _unzoom: unzoom.html
.. _zoom_rect: zoom_rect.html
.. _Common_iscomplex_API: Common_iscomplex_API.html
.. _xcos_simulate: xcos_simulate.html
.. _get_function_path: get_function_path.html
.. _pdiv: pdiv.html
.. _help_skeleton: help_skeleton.html
.. _scicos_time: scicos_time.html
.. _RFILE_f: RFILE_f.html
.. _unix_w: unix_w.html
.. _SWITCH2_m: SWITCH2_m.html
.. _m2sci_load: m2sci_load.html
.. _m2sci_otherwise: m2sci_otherwise.html
.. _double: section_6a7221af202e5a72f2dc870be57e7abc.html
.. _Trigonometry: section_337b4e6dd32fd9593fba54eb3f65dbcc.html
.. _m2sci_islogical: m2sci_islogical.html
.. _cont_frm: cont_frm.html
.. _cdfpoi: cdfpoi.html
.. _freeAllocatedMatrixOfPoly: freeAllocatedMatrixOfPoly.html
.. _atomsInstall: atomsInstall.html
.. _Annotations_pal: Annotations_pal.html
.. _m2sci_hess: m2sci_hess.html
.. _TANBLK_f: TANBLK_f.html
.. _mkdir: mkdir.html
.. _EXTRACTOR: EXTRACTOR.html
.. _optimplotx: optimplotx.html
.. _Parallel: section_b787c9d1903acf3e0f6504ddc944dfb8.html
.. _fileext: fileext.html
.. _WRITEC_f: WRITEC_f.html
.. _ulink: ulink.html
.. _lattn: lattn.html
.. _impl: impl.html
.. _String_management_reading_API: String_management_reading_API.html
.. _char: char.html
.. _acosd: acosd.html
.. _how_to_link_toolbox_help: how_to_link_toolbox_help.html
.. _evstr: evstr.html
.. _fsfirlin: fsfirlin.html
.. _mtlb_size: mtlb_size.html
.. _plot2d2: plot2d2.html
.. _Graphics: section_1564a99cc2e986599400309d6d2bbc1a.html
.. _m2sci_elementwise_multiplication: m2sci_elementwise_multiplication.html
.. _percenteps: percenteps.html
.. _funptr: funptr.html
.. _contrss: contrss.html
.. _bsparse_reading_API: bsparse_reading_API.html
.. _getvalue: getvalue.html
.. _clock: clock.html
.. _coeff: coeff.html
.. _INTEGRAL_f: INTEGRAL_f.html
.. _MATDIAG: MATDIAG.html
.. _m2sci_fileparts: m2sci_fileparts.html
.. _configure_msifort: configure_msifort.html
.. _gcare: gcare.html
.. _with_embedded_jre: with_embedded_jre.html
.. _xarcs: xarcs.html
.. _xmlXPath: xmlXPath.html
.. _champ_properties: champ_properties.html
.. _Floating point: section_5cc62125242586eb1e2ed40fd313124c.html
.. _system_setproperty: system_setproperty.html
.. _VariableResistor: VariableResistor.html
.. _LANGUAGE: LANGUAGE.html
.. _m_circle: m_circle.html
.. _m2sci_diag: m2sci_diag.html
.. _plot3d2: plot3d2.html
.. _copfac: copfac.html
.. _getdefaultlanguage: getdefaultlanguage.html
.. _recons: recons.html
.. _now: now.html
.. _trisolve: trisolve.html
.. _mtlb_num2str: mtlb_num2str.html
.. _asin: asin.html
.. _Lookuptables_pal: Lookuptables_pal.html
.. _iirlp: iirlp.html
.. _m2sci_asinh: m2sci_asinh.html
.. _m2sci_round: m2sci_round.html
.. _balanc: balanc.html
.. _Sinks_pal: Sinks_pal.html
.. _mese: mese.html
.. _equal: equal.html
.. _ndgrid: ndgrid.html
.. _sda: sda.html
.. _atoms: atoms.html
.. _funcprot: funcprot.html
.. _m2sci_fft: m2sci_fft.html
.. _pathconvert: pathconvert.html
.. _fullpath: fullpath.html
.. _compile_and_run_javasci_v2: compile_and_run_javasci_v2.html
.. _m2sci_help: m2sci_help.html
.. _m2sci_i: m2sci_i.html
.. _m2sci_acosh: m2sci_acosh.html
.. _mtlb_upper: mtlb_upper.html
.. _mtlb_cumprod: mtlb_cumprod.html
.. _bytecode: bytecode.html
.. _Compatibility Functions: section_5107c87cfa2a68ff36bffd6984fba8a9.html
.. _m2sci_xlabel: m2sci_xlabel.html
.. _m2sci_j: m2sci_j.html
.. _acosm: acosm.html
.. _eigenmarkov: eigenmarkov.html
.. _do: do.html
.. _HYSTHERESIS: HYSTHERESIS.html
.. _neigh_func_csa: neigh_func_csa.html
.. _SampleCLK: SampleCLK.html
.. _xmlSetAttributes: xmlSetAttributes.html
.. _m2sci_upper: m2sci_upper.html
.. _D: section_b066d3fc48c9ffd96e7ee200adec138c.html
.. _CBLOCK: CBLOCK.html
.. _Pointer_reading_API: Pointer_reading_API.html
.. _xs2bmp: xs2bmp.html
.. _bessel: bessel.html
.. _toprint: toprint.html
.. _xmlReadStr: xmlReadStr.html
.. _showprofile: showprofile.html
.. _lstcat: lstcat.html
.. _pathsep: pathsep.html
.. _TCL_SetVar: TCL_SetVar.html
.. _Error handling: error_handling.html
.. _m2sci_exist: m2sci_exist.html
.. _fprintf: fprintf.html
.. _SUM_f: SUM_f.html
.. _pointer_xproperty: pointer_xproperty.html
.. _vec2var: vec2var.html
.. _augment: augment.html
.. _lqr: lqr.html
.. _date: date.html
.. _preferences: preferences.html
.. _polfact: polfact.html
.. _Data with Missing Values: section_60b76bef1290025b66b3e07e246bae5e.html
.. _mtlb_l: mtlb_l.html
.. _mtlb_findstr: mtlb_findstr.html
.. _m2sci_double: m2sci_double.html
.. _lex_sort: lex_sort.html
.. _TCL_GetVersion: TCL_GetVersion.html
.. _phase_simulation: phase_simulation.html
.. _invsyslin: invsyslin.html
.. _PNP: PNP.html
.. _getlongpathname: getlongpathname.html
.. _subf: subf.html
.. _obsv_mat: obsv_mat.html
.. _macro: macro.html
.. _m2sci_isvector: m2sci_isvector.html
.. _mtlb_colordef: mtlb_colordef.html
.. _uiCreateTree: uiCreateTree.html
.. _glever: glever.html
.. _rubberbox: rubberbox.html
.. _Optimization and Simulation: section_1045a344aacb39266b9b6f4f5191497b.html
.. _optimget: optimget.html
.. _signm: signm.html
.. _xmltopdf: xmltopdf.html
.. _fft: fft.html
.. _m2sci_helpwin: m2sci_helpwin.html
.. _atomsIsInstalled: atomsIsInstalled.html
.. _boolean: section_a67ef8db90b71526457f25ee51f5325b.html
.. _call_scilab API (Scilab engine): section_51918acc7508ee5fc432454bf8f7c499.html
.. _cond: cond.html
.. _Demonstrations blocks palette: section_cfd727adbfbe87024a08e007907d42ea.html
.. _loadXcosLibs: loadXcosLibs.html
.. _int: int.html
.. _help_from_sci: help_from_sci.html
.. _bvode: bvode.html
.. _atomsGetInstalled: atomsGetInstalled.html
.. _Matrix operations: section_32d872e8abf1f829c680ec61ddaa94da.html
.. _percenti: percenti.html
.. _stacksize: stacksize.html
.. _m2sci_for: m2sci_for.html
.. _acos: acos.html
.. _scicos_debug: scicos_debug.html
.. _fileparts: fileparts.html
.. _Intersci: section_62e815b2c67626b33de7df972a47cad8.html
.. _conv: conv.html
.. _GOTOMO: GOTOMO.html
.. _m2sci_rcond: m2sci_rcond.html
.. _xpoly: xpoly.html
.. _Tree: section_477c5fc90ec3735414223e13e85151af.html
.. _SQRT: SQRT-36875f2500a09ee35d0bb7eb8c0b91b0.html
.. _drawlater: drawlater.html
.. _getModelicaPath: getModelicaPath.html
.. _m2sci_min: m2sci_min.html
.. _faurre: faurre.html
.. _RELAY_f: RELAY_f.html
.. _rowshuff: rowshuff.html
.. _mad: mad.html
.. _Online help management: section_74e76de8561c9f9769910c376d655849.html
.. _mdelete: mdelete.html
.. _isalphanum: isalphanum.html
.. _uigetfile: uigetfile.html
.. _wavwrite: wavwrite.html
.. _round: round.html
.. _mtlb_fopen: mtlb_fopen.html
.. _mtlb_mode: mtlb_mode.html
.. _intersect: intersect.html
.. _matfile_listvar: matfile_listvar.html
.. _exists: exists.html
.. _xdel: xdel.html
.. _Sgrayplot: Sgrayplot.html
.. _matfile_varreadnext: matfile_varreadnext.html
.. _inv_coeff: inv_coeff.html
.. _size: size.html
.. _brackets: brackets.html
.. _scicos_cpr: scicos_cpr.html
.. _ilib_gen_Make: ilib_gen_Make.html
.. _black: black.html
.. _m2sci_cell2mat: m2sci_cell2mat.html
.. _OUTIMPL_f: OUTIMPL_f.html
.. _Color management: section_9e776a11030648219ef68bf2ad3f5df9.html
.. _sinhm: sinhm.html
.. _Preferences: section_ee411aa6c52a208bb3ea8bbb7b7e9eaa.html
.. _Event handling palette: section_72340daae7aa36ab6c929438c75d2742.html
.. _BOUNCEXY: BOUNCEXY.html
.. _bar: bar.html
.. _gspec: gspec.html
.. _is_param: is_param.html
.. _Annotations palette: section_11de6b21bd72e4874349f352c7de3f09.html
.. _assert_checkfalse: assert_checkfalse.html
.. _riccati: riccati.html
.. _splin3d: splin3d.html
.. _xmlGetNsByHref: xmlGetNsByHref.html
.. _bench_run: bench_run.html
.. _zeros: zeros.html
.. _Linear Algebra: section_33edece9cb111907b734446244eaf9df.html
.. _grayplot_properties: grayplot_properties.html
.. _tbx_builder_gateway: tbx_builder_gateway.html
.. _mtlb_ones: mtlb_ones.html
.. _asinh: asinh.html
.. _Batch functions: section_a9893f944676430337d140bbef935f64.html
.. _m2sci_ischar: m2sci_ischar.html
.. _inttrap: inttrap.html
.. _sin: sin.html
.. _booleanSparseExample: booleanSparseExample.html
.. _mtlb_isfield: mtlb_isfield.html
.. _atomsRepositoryList: atomsRepositoryList.html
.. _xname: xname.html
.. _xmlFormat: xmlFormat.html
.. _SELF_SWITCH: SELF_SWITCH.html
.. _asinhm: asinhm.html
.. _getenv: getenv.html
.. _OUT_f: OUT_f.html
.. _perms: perms.html
.. _getNbInputArgument: getNbInputArgument.html
.. _atomsGetLoadedPath: atomsGetLoadedPath.html
.. _m2sci_log2: m2sci_log2.html
.. _lines: lines.html
.. _percentio: percentio.html
.. _Overloading: section_605e13c952bc1687150194e38ff198e8.html
.. _CLKFROM: CLKFROM.html
.. _Strings: section_4214c9f9827d7d76cbe5244adc614b8a.html
.. _mtlb_strfind: mtlb_strfind.html
.. _GotoTagVisibility: GotoTagVisibility.html
.. _debug: debug.html
.. _penlaur: penlaur.html
.. _get_fftw_wisdom: get_fftw_wisdom.html
.. _vec2list: vec2list.html
.. _Measures of Shape: section_565b2e938b33b6b0abdeaf0a021a6b27.html
.. _sciargs: sciargs.html
.. _legendre: legendre.html
.. _m2sci_zeros: m2sci_zeros.html
.. _unpack: unpack.html
.. _Sound file handling: section_87db7fc0ccf94edba7a1c450c8ac22b9.html
.. _justify: justify.html
.. _syredi: syredi.html
.. _Sources_pal: Sources_pal.html
.. _getsymbol: getsymbol.html
.. _interpln: interpln.html
.. _ilib_gen_gateway: ilib_gen_gateway.html
.. _permute: permute.html
.. _ilib_compile: ilib_compile.html
.. _add_profiling: add_profiling.html
.. _tbx_builder_src: tbx_builder_src.html
.. _m2sci_else: m2sci_else.html
.. _xpolys: xpolys.html
.. _ode_optional_output: ode_optional_output.html
.. _m2sci_elseif: m2sci_elseif.html
.. _atomsSystemInit: atomsSystemInit.html
.. _typename: typename.html
.. _mstr2sci: mstr2sci.html
.. _backslash: backslash.html
.. _alufunctions: alufunctions.html
.. _zpch1: zpch1.html
.. _evans: evans.html
.. _progressionbar: progressionbar.html
.. _comp: comp.html
.. _freeAllocatedSinglePoly: freeAllocatedSinglePoly.html
.. _ode_root: ode_root.html
.. _S: section_b2aa1579d8915e7f0163a2ea513e1a9c.html
.. _Q: section_e189c697fe7ef58cdc3b9f780acbf380.html
.. _hilbert: hilbert.html
.. _uiFindNode: uiFindNode.html
.. _List manipulation: section_83d0f114f02f02653725f7a4d4fdbd72.html
.. _macr2lst: macr2lst.html
.. _ode_discrete: ode_discrete.html
.. _diophant: diophant.html
.. _bloc2exp: bloc2exp.html
.. _ltitr: ltitr.html
.. _mtlb_double: mtlb_double.html
.. _A: section_8bec73837616f5deab3fdb708a903b36.html
.. _getlinestyle: getlinestyle.html
.. _hypermatrices: hypermatrices.html
.. _mputl: mputl.html
.. _Pointer_writing_API: Pointer_writing_API.html
.. _sgrid: sgrid.html
.. _Events_pal: Events_pal.html
.. _getscicosvars: getscicosvars.html
.. _timer: timer.html
.. _SHIFT: SHIFT.html
.. _MATRESH: MATRESH.html
.. _lincos: lincos.html
.. _xfpoly: xfpoly.html
.. _msprintf: msprintf.html
.. _mulf: mulf.html
.. _m2sci_sqrt: m2sci_sqrt.html
.. _m2sci_dos: m2sci_dos.html
.. _demo_message: demo_message.html
.. _datatipGetEntities: datatipGetEntities.html
.. _tbx_build_cleaner: tbx_build_cleaner.html
.. _tree2code: tree2code.html
.. _SineVoltage: SineVoltage.html
.. _m2sci_clear: m2sci_clear.html
.. _mtlb_strcmp: mtlb_strcmp.html
.. _check_matrix_dimension: check_matrix_dimension.html
.. _power: power.html
.. _findR: findR.html
.. _PotentialSensor: PotentialSensor.html
.. _contour2d: contour2d.html
.. _m2sci_reshape: m2sci_reshape.html
.. _tbx_build_macros: tbx_build_macros.html
.. _mean: mean.html
.. _strcspn: strcspn.html
.. _getio: getio.html
.. _semidef: semidef.html
.. _mtlb_diff: mtlb_diff.html
.. _lattp: lattp.html
.. _LineSpec: LineSpec.html
.. _TIME_DELAY: TIME_DELAY.html
.. _ComplexManagement_callscilab: ComplexManagement_callscilab.html
.. _xcos_menu_entries: xcos_menu_entries.html
.. _m2sci_uint16: m2sci_uint16.html
.. _freeAllocatedBooleanSparse: freeAllocatedBooleanSparse.html
.. _xmlNs: xmlNs.html
.. _freson: freson.html
.. _cell: cell.html
.. _bloc2ss: bloc2ss.html
.. _prompt: prompt.html
.. _spaninter: spaninter.html
.. _gmres: gmres.html
.. _cdfnor: cdfnor.html
.. _factors: factors.html
.. _correl: correl.html
.. _loadScicos: loadScicos.html
.. _legend_properties: legend_properties.html
.. _logm: logm.html
.. _SIGNUM: SIGNUM.html
.. _atomsSearch: atomsSearch.html
.. _isListType: isListType.html
.. _MATEXPM: MATEXPM.html
.. _equil: equil.html
.. _number_properties: number_properties.html
.. _lqg: lqg.html
.. _MATMAGPHI: MATMAGPHI.html
.. _browsevar: browsevar.html
.. _mtlb_min: mtlb_min.html
.. _global: global.html
.. _TerminateScilab: TerminateScilab.html
.. _Integer palette: section_5959de0ab6a5f839fb9f0cad1c6d8bc4.html
.. _macrovar: macrovar.html
.. _mtlb_echo: mtlb_echo.html
.. _TCL_CreateSlave: TCL_CreateSlave.html
.. _uigetfont: uigetfont.html
.. _rowcompr: rowcompr.html
.. _scicos_params: scicos_params.html
.. _Polynomial_management_writing_API: Polynomial_management_writing_API.html
.. _cmndred: cmndred.html
.. _FROMMO: FROMMO.html
.. _m2sci_log10: m2sci_log10.html
.. _factorial: factorial.html
.. _sign: sign.html
.. _Sfgrayplot: Sfgrayplot.html
.. _U: section_d82037bcfa3ded939480050736953409.html
.. _Special Functions: section_9807087787a08da0fc9523bd2451900d.html
.. _definedfields: definedfields.html
.. _h_cl: h_cl.html
.. _strindex: strindex.html
.. _bin2dec: bin2dec.html
.. _bilt: bilt.html
.. _mtlb_rand: mtlb_rand.html
.. _atanhm: atanhm.html
.. _dispfiles: dispfiles.html
.. _m2sci_mkdir: m2sci_mkdir.html
.. _m2sci_flipud: m2sci_flipud.html
.. _inttype: inttype.html
.. _GENSQR_f: GENSQR_f.html
.. _genmarkov: genmarkov.html
.. _iir: iir.html
.. _leastsq: leastsq.html
.. _dasrt: dasrt.html
.. _parallel_concurrency: parallel_concurrency.html
.. _EVTDLY_c: EVTDLY_c.html
.. _Scilab Utilities Functions: section_2fc9c9d4a42cb99d77278d5ee8d644f2.html
.. _m2sci_ishold: m2sci_ishold.html
.. _quaskro: quaskro.html
.. _acotd: acotd.html
.. _m2sci_fseek: m2sci_fseek.html
.. _m2sci_pow2: m2sci_pow2.html
.. _zneupd: zneupd.html
.. _delbpt: delbpt.html
.. _m2sci_isequal: m2sci_isequal.html
.. _addmenu: addmenu.html
.. _m2sci_exp: m2sci_exp.html
.. _winqueryreg: winqueryreg.html
.. _bsplin3val: bsplin3val.html
.. _karmarkar: karmarkar.html
.. _config: config.html
.. _mvvacov: mvvacov.html
.. _list_getlistitemnumber_API: list_getlistitemnumber_API.html
.. _fplot2d: fplot2d.html
.. _Data Structures: section_1ad8d52729efd941426166a3d22c28a4.html
.. _ver: ver.html
.. _Modules manager: section_f09ef186e569146985a520cefb8e0cd7.html
.. _MATLU: MATLU.html
.. _datatipGetStruct: datatipGetStruct.html
.. _CACSD (Computer Aided Control Systems Design): section_a4bc57dab547abf8836c136974f114d9.html
.. _ABS_VALUE: ABS_VALUE.html
.. _FROM: FROM.html
.. _orthProj: orthProj.html
.. _m2sci_feof: m2sci_feof.html
.. _dt_ility: dt_ility.html
.. _uiGetChildrenNode: uiGetChildrenNode.html
.. _Signal Processing: section_24b53cfcd3e62c7aca896f358ac6df29.html
.. _tic: tic.html
.. _Inductor: Inductor.html
.. _tanm: tanm.html
.. _rectangle_properties: rectangle_properties.html
.. _m2sci_dir: m2sci_dir.html
.. _ceil: ceil.html
.. _m2sci_exit: m2sci_exit.html
.. _erf: erf.html
.. _K: section_7fe6209f3d278e1203552967c905048f.html
.. _newest: newest.html
.. _m2sci_interp1: m2sci_interp1.html
.. _RATELIMITER: RATELIMITER.html
.. _javaclasspath: javaclasspath.html
.. _TCL_UpVar: TCL_UpVar.html
.. _Datatips: section_801793dea005b69cc373e084471fe1aa.html
.. _m2sci_randn: m2sci_randn.html
.. _list_boolean_writing_API: list_boolean_writing_API.html
.. _cmb_lin: cmb_lin.html
.. _m2sci_not: m2sci_not.html
.. _INTMUL: INTMUL.html
.. _get_contents_infer: get_contents_infer.html
.. _CMATVIEW: CMATVIEW.html
.. _umf_luinfo: umf_luinfo.html
.. _specfact: specfact.html
.. _XML Management: section_925938c24f3e8eaf4c1efad7ecae78af.html
.. _fromc: fromc.html
.. _dos: dos.html
.. _m2sci_floor: m2sci_floor.html
.. _ROOTCOEF: ROOTCOEF.html
.. _read: read.html
.. _CVS: CVS.html
.. _relocate_handle: relocate_handle.html
.. _wfir: wfir.html
.. _bonecolormap: bonecolormap.html
.. _C Computational Functions: section_2c511fc5601f3bc53f47c45500133069.html
.. _Counter: Counter.html
.. _Operation: Operation.html
.. _sciprint: sciprint.html
.. _PerteDP: PerteDP.html
.. _getshell: getshell.html
.. _fun2string: fun2string.html
.. _m2sci_isletter: m2sci_isletter.html
.. _iqr: iqr.html
.. _ldiv: ldiv.html
.. _m2sci_elementwise_right_division: m2sci_elementwise_right_division.html
.. _pca: pca.html
.. _neigh_func_vfsa: neigh_func_vfsa.html
.. _m2sci_primes: m2sci_primes.html
.. _mtlb_legendre: mtlb_legendre.html
.. _m2sci_or: m2sci_or.html
.. _m2sci_disp: m2sci_disp.html
.. _aff2ab: aff2ab.html
.. _list_string_writing_API: list_string_writing_API.html
.. _PDE: PDE.html
.. _scifunc_block_m: scifunc_block_m.html
.. _Integer_management_writing_API: Integer_management_writing_API.html
.. _mtlb_any: mtlb_any.html
.. _assert_checkequal: assert_checkequal.html
.. _mtlb_more: mtlb_more.html
.. _ccontrg: ccontrg.html
.. _example_run: example_run.html
.. _haveacompiler: haveacompiler.html
.. _taucs_chdel: taucs_chdel.html
.. _filt_sinc: filt_sinc.html
.. _AssignOutputVariable: AssignOutputVariable.html
.. _newaxes: newaxes.html
.. _m2sci_bitand: m2sci_bitand.html
.. _sci_types: sci_types.html
.. _Zero crossing detection palette: section_21fbd5de8ee5f5f7f7b29bf7efce65d0.html
.. _getNbOutputArgument: getNbOutputArgument.html
.. _getfont: getfont.html
.. _paramfplot2d: paramfplot2d.html
.. _lmitool: lmitool.html
.. _cdfgam: cdfgam.html
.. _datatipSetStyle: datatipSetStyle.html
.. _Y: section_c67837a02e22dbe089c60095b7dda4c7.html
.. _jre_path: jre_path.html
.. _var2vec: var2vec.html
.. _optim_ga: optim_ga.html
.. _bdiag: bdiag.html
.. _xcov: xcov.html
.. _exportUI: exportUI.html
.. _acscd: acscd.html
.. _gcf: gcf.html
.. _part: part.html
.. _histplot: histplot.html
.. _Simulated Annealing: section_0ed986313da2a36c3334e21364cdfb9c.html
.. _get_scicos_version: get_scicos_version.html
.. _NDcost: NDcost.html
.. _colormap: colormap.html
.. _binomial: binomial.html
.. _scicos_block: scicos_block.html
.. _mtlb_isa: mtlb_isa.html
.. _des2tf: des2tf.html
.. _uiDumpTree: uiDumpTree.html
.. _m2sci_addition: m2sci_addition.html
.. _assert_computedigits: assert_computedigits.html
.. _names: names.html
.. _graycolormap: graycolormap.html
.. _roots: roots.html
.. _apropos: apropos.html
.. _m2sci_format: m2sci_format.html
.. _determ: determ.html
.. _xset: xset.html
.. _cellstr: cellstr.html
.. _tokenpos: tokenpos.html
.. _VARIABLE_DELAY: VARIABLE_DELAY.html
.. _isequal: isequal.html
.. _getrelativefilename: getrelativefilename.html
.. _CEVENTSCOPE: CEVENTSCOPE.html
.. _reset_profiling: reset_profiling.html
.. _hinf: hinf.html
.. _logspace: logspace.html
.. _adj2sp: adj2sp.html
.. _test_run: test_run.html
.. _getfield: getfield.html
.. _tbx_build_help: tbx_build_help.html
.. _acsc: acsc.html
.. _ppol: ppol.html
.. _star: star.html
.. _CSCOPXY: CSCOPXY.html
.. _xsave: xsave.html
.. _freeAllocatedMatrixOfString: freeAllocatedMatrixOfString.html
.. _phaseplot: phaseplot.html
.. _m2sci_eye: m2sci_eye.html
.. _trzeros: trzeros.html
.. _ilib_gen_loader: ilib_gen_loader.html
.. _uigetcolor: uigetcolor.html
.. _isdef: isdef.html
.. _uiputfile: uiputfile.html
.. _set_param: set_param.html
.. _rcond: rcond.html
.. _Electrical palette: section_b5a03d11154da320a5aaed8497d36aec.html
.. _sm2des: sm2des.html
.. _readb: readb.html
.. _whitecolormap: whitecolormap.html
.. _inistate: inistate.html
.. _exit: exit.html
.. _CONVERT: CONVERT.html
.. _assert_cond2reltol: assert_cond2reltol.html
.. _m2sci_isnan: m2sci_isnan.html
.. _scinotes: scinotes.html
.. _findfileassociation: findfileassociation.html
.. _toolbar: toolbar.html
.. _m2sci_isdir: m2sci_isdir.html
.. _m2sci_kron: m2sci_kron.html
.. _cdfbet: cdfbet.html
.. _prbs_a: prbs_a.html
.. _rtitr: rtitr.html
.. _cdfbin: cdfbin.html
.. _Tcl/Tk Interface: section_28095e37a7d218349ba875cc7119db95.html
.. _JVM: section_c9289a13f1bef9957000ba9cac0a8c2d.html
.. _sysfact: sysfact.html
.. _mtlb_logical: mtlb_logical.html
.. _lindquist: lindquist.html
.. _How to: section_b74e9b759387b46d4e36023eb7d808f8.html
.. _qmr: qmr.html
.. _minreal: minreal.html
.. _invr: invr.html
.. _calerf: calerf.html
.. _xpause: xpause.html
.. _OpAmp: OpAmp.html
.. _importXcosDiagram: importXcosDiagram.html
.. _javasci_v1_limitations: javasci_v1_limitations.html
.. _Windows tools: section_2c8c99ef3748cf8ef559eeba1b4a9673.html
.. _givens: givens.html
.. _dseupd: dseupd.html
.. _getversion: getversion.html
.. _m2sci_isfinite: m2sci_isfinite.html
.. _datafit: datafit.html
.. _Compilation/Simulation: section_850f6e15e21ea0cf9f6edd4f0037d851.html
.. _FFTW: section_e82c99c7d73f86350d5fdc2bb9f796d1.html
.. _TIME_f: TIME_f.html
.. _Output functions: section_35b62a06be7e210353e7c822c7f47ef1.html
.. _isstruct: isstruct.html
.. _cotd: cotd.html
.. _fromjava: fromjava.html
.. _genfac3d: genfac3d.html
.. _cdft: cdft.html
.. _sparse: sparse.html
.. _DFLIPFLOP: DFLIPFLOP.html
.. _m2sci_gamma: m2sci_gamma.html
.. _svd: svd.html
.. _convol2d: convol2d.html
.. _fcontour2d: fcontour2d.html
.. _m2sci_conv: m2sci_conv.html
.. _fgrayplot: fgrayplot.html
.. _ereduc: ereduc.html
.. _m2sci_permute: m2sci_permute.html
.. _m2sci_eps: m2sci_eps.html
.. _CMSCOPE: CMSCOPE.html
.. _percentinf: percentinf.html
.. _samwr: samwr.html
.. _C_macros: C_macros.html
.. _pack: pack.html
.. _cotg: cotg.html
.. _mget: mget.html
.. _pol2str: pol2str.html
.. _narsimul: narsimul.html
.. _fac3d: fac3d.html
.. _m2sci_cellstr: m2sci_cellstr.html
.. _neigh_func_default: neigh_func_default.html
.. _isSparseType: isSparseType.html
.. _MBLOCK: MBLOCK.html
.. _dlgamma: dlgamma.html
.. _editvar: editvar.html
.. _assert_checkerror: assert_checkerror.html
.. _list_string_reading_API: list_string_reading_API.html
.. _Common_getvaraddr_API: Common_getvaraddr_API.html
.. _hex2dec: hex2dec.html
.. _m2sci_elementwise_left_division: m2sci_elementwise_left_division.html
.. _MatlabScilab_character_strings: MatlabScilab_character_strings.html
.. _lusolve: lusolve.html
.. _mgetl: mgetl.html
.. _ascii: ascii.html
.. _fullrf: fullrf.html
.. _CSCOPE: CSCOPE.html
.. _atomsList: atomsList.html
.. _spget: spget.html
.. _genlib: genlib.html
.. _atomsCheckModule: atomsCheckModule.html
.. _m2sci_eig: m2sci_eig.html
.. _m2sci_grid: m2sci_grid.html
.. _print: print.html
.. _clean: clean.html
.. _typeof: typeof.html
.. _G: section_3c84eeff39988bdb672eee073d7dbb4f.html
.. _captions: captions.html
.. _covar: covar.html
.. _lqe: lqe.html
.. _eye: eye.html
.. _getScalarInteger8: getScalarInteger8.html
.. _Modulo_Count: Modulo_Count.html
.. _m2sci_issparse: m2sci_issparse.html
.. _show_margins: show_margins.html
.. _m2sci_max: m2sci_max.html
.. _pixel_drawing_mode: pixel_drawing_mode.html
.. _struct: struct.html
.. _cdfchi: cdfchi.html
.. _functions: functions.html
.. _strcmpi: strcmpi.html
.. _atomsCategoryList: atomsCategoryList.html
.. _m2sci_size: m2sci_size.html
.. _buttmag: buttmag.html
.. _remezb: remezb.html
.. _cheb1mag: cheb1mag.html
.. _m2sci_atan: m2sci_atan.html
.. _SendScilabJob: SendScilabJob.html
.. _removedir: removedir.html
.. _win64: win64.html
.. _Ground: Ground.html
.. _Discrete mathematics: section_6532542a2a1a85dd4cb9086506069b58.html
.. _SAMPHOLD_m: SAMPHOLD_m.html
.. _mtlb_format: mtlb_format.html
.. _getAllocatedBooleanSparseMatrix: getAllocatedBooleanSparseMatrix.html
.. _Sigbuilder: Sigbuilder.html
.. _load: load.html
.. _Signal routing palette: section_7a9fdc7e0d2c655cbe6cd0a117a248de.html
.. _removelinehistory: removelinehistory.html
.. _DLATCH: DLATCH.html
.. _write: write.html
.. _mfft: mfft.html
.. _BIGSOM_f: BIGSOM_f.html
.. _uiInsertNode: uiInsertNode.html
.. _temp_law_fsa: temp_law_fsa.html
.. _m2sci_isnumeric: m2sci_isnumeric.html
.. _TCL_ExistVar: TCL_ExistVar.html
.. _break: break.html
.. _FROMWSB: FROMWSB.html
.. _Differential calculus, Integration: section_c8dfc6333550636f05ac583771a72652.html
.. _blanks: blanks.html
.. _m2sci_sin: m2sci_sin.html
.. _uiConcatTree: uiConcatTree.html
.. _csgn: csgn.html
.. _testmatrix: testmatrix.html
.. _mtlb_setstr: mtlb_setstr.html
.. _m2sci_triu: m2sci_triu.html
.. _supported_compilers: supported_compilers.html
.. _argn: argn.html
.. _ilib_for_link: ilib_for_link.html
.. _PULSE_SC: PULSE_SC.html
.. _about: about.html
.. _CheckOutputArgument: CheckOutputArgument.html
.. _add_param: add_param.html
.. _show_window: show_window.html
.. _nyquist: nyquist.html
.. _detr: detr.html
.. _zpell: zpell.html
.. _datatipManagerMode: datatipManagerMode.html
.. _setdefaultlanguage: setdefaultlanguage.html
.. _sorder: sorder.html
.. _Double_management_reading_API: Double_management_reading_API.html
.. _BITCLEAR: BITCLEAR.html
.. _xload: xload.html
.. _asecd: asecd.html
.. _uicontrol: uicontrol.html
.. _graypolarplot: graypolarplot.html
.. _tbx_build_gateway: tbx_build_gateway.html
.. _trianfml: trianfml.html
.. _m2sci_left_division: m2sci_left_division.html
.. _edit: edit.html
.. _uiGetNodePosition: uiGetNodePosition.html
.. _createScalarDouble: createScalarDouble.html
.. _plot2d1: plot2d1.html
.. _intersci: intersci.html
.. _printsetupbox: printsetupbox.html
.. _sinc: sinc.html
.. _x_choose: x_choose.html
.. _scicos_diagram: scicos_diagram.html
.. _addinter: addinter.html
.. _optim_moga: optim_moga.html
.. _pinkcolormap: pinkcolormap.html
.. _mtlb_find: mtlb_find.html
.. _Java Interface: section_2222dfb1fe33122aaae121cb831ffc63.html
.. _writb: writb.html
.. _m2sci_sort: m2sci_sort.html
.. _m2sci_besselj: m2sci_besselj.html
.. _rowcomp: rowcomp.html
.. _linfn: linfn.html
.. _champ1: champ1.html
.. _wcenter: wcenter.html
.. __atomsGettingStarted: _atomsGettingStarted.html
.. _Randlib: section_c9eb36ae0a16d0569c6f17d6a1d4c930.html
.. _grand: grand.html
.. _color: color.html
.. _m2sci_isspace: m2sci_isspace.html
.. _atomsLoad: atomsLoad.html
.. _hrmt: hrmt.html
.. _m2sci_fwrite: m2sci_fwrite.html
.. _comments: comments.html
.. _mtlb_sparse: mtlb_sparse.html
.. _neigh_func_fsa: neigh_func_fsa.html
.. _convol: convol.html
.. _square: square.html
.. _figure_properties: figure_properties.html
.. _O: section_7f19abf037d4d0f317b5c494c29b40ee.html
.. _optimplotfunccount: optimplotfunccount.html
.. _PID: PID.html
.. _getmd5: getmd5.html
.. _polygon: section_dd30ba24d52ae4ee091a56ddff06c205.html
.. _m2sci_acsc: m2sci_acsc.html
.. _m2sci_error: m2sci_error.html
.. _gstacksize: gstacksize.html
.. _acot: acot.html
.. _and: and.html
.. _m2sci_getenv: m2sci_getenv.html
.. _eqfir: eqfir.html
.. _mtlb_rcond: mtlb_rcond.html
.. _sci2exp: sci2exp.html
.. _primes: primes.html
.. _rotate_axes: rotate_axes.html
.. _lsq_splin: lsq_splin.html
.. _C_struct: C_struct.html
.. _TCL_GetVar: TCL_GetVar.html
.. _atomsRepositoryAdd: atomsRepositoryAdd.html
.. _tanh: tanh.html
.. _Equal: Equal-f5f286e73bda105e538310b3190f75c5.html
.. _datatipRemoveAll: datatipRemoveAll.html
.. _xmltohtml: xmltohtml.html
.. _Central Tendency: section_b9fbc92bf77ff97f57e093d53dc83546.html
.. _cothm: cothm.html
.. _double: double.html
.. _atomsGetInstalledPath: atomsGetInstalledPath.html
.. _GENERAL_f: GENERAL_f.html
.. _Signalrouting_pal: Signalrouting_pal.html
.. _list_sparse_reading_API: list_sparse_reading_API.html
.. _m2sci_feval: m2sci_feval.html
.. _C_utils: C_utils.html
.. _m2sci_isglobal: m2sci_isglobal.html
.. _tand: tand.html
.. _grep: grep.html
.. _dft: dft.html
.. _fftw_flags: fftw_flags.html
.. _Boolean Sparse: section_82bb08bf7c3ba2571a30615c80fff84c.html
.. _svplot: svplot.html
.. _fprintfMat: fprintfMat.html
.. _xrect: xrect.html
.. _locate: locate.html
.. _chdir: chdir.html
.. _printf_conversion: printf_conversion.html
.. _transform: section_1843e2e0ad41ba833ff17570abbfa881.html
.. _code2str: code2str.html
.. _datatipSetInterp: datatipSetInterp.html
.. _EXPRESSION: EXPRESSION.html
.. _cscd: cscd.html
.. _lev: lev.html
.. _m2sci_isreal: m2sci_isreal.html
.. _m2sci_prod: m2sci_prod.html
.. _draw: draw.html
.. _BACKLASH: BACKLASH.html
.. _m2sci_nargin: m2sci_nargin.html
.. _null: null.html
.. _m2sci_tanh: m2sci_tanh.html
.. _m2sci_cos: m2sci_cos.html
.. _m2sci_display: m2sci_display.html
.. _Genetic Algorithms: section_2b8615f90e1728278bcf285b0016725c.html
.. _NEGTOPOS_f: NEGTOPOS_f.html
.. _complex: complex.html
.. _DELAY_f: DELAY_f.html
.. _CMAT3D: CMAT3D.html
.. _mtlb_eval: mtlb_eval.html
.. _DELAYV_f: DELAYV_f.html
.. _swap_handles: swap_handles.html
.. _window_control: section_a89ceeebe0239dcecf35318dfeba0c19.html
.. _scilab: scilab.html
.. _syslin: syslin.html
.. _lsslist: lsslist.html
.. _TCL_DeleteInterp: TCL_DeleteInterp.html
.. _eventhandlerfunctions: eventhandlerfunctions.html
.. _m2sci_isinf: m2sci_isinf.html
.. _Matlab to Scilab Conversion Tips: section_cc402f01adb15b161418b3bf82d04deb.html
.. _sensi: sensi.html
.. _createSingleString: createSingleString.html
.. _sec: sec.html
.. _api_scilab: api_scilab.html
.. _list_bsparse_writing_API: list_bsparse_writing_API.html
.. _sp2adj: sp2adj.html
.. _m2sci_struct: m2sci_struct.html
.. _if: if.html
.. _imag: imag.html
.. _m2sci_continue: m2sci_continue.html
.. _Sources palette: section_7c51cb640792abc11f72a205dc2f9cbb.html
.. _Compound_properties: Compound_properties.html
.. _obsvss: obsvss.html
.. _quart: quart.html
.. _mseek: mseek.html
.. _fft2: fft2.html
.. _mtlb_strcmpi: mtlb_strcmpi.html
.. _xstringb: xstringb.html
.. _atomsRestoreConfig: atomsRestoreConfig.html
.. _nthroot: nthroot.html
.. _object_editor: object_editor.html
.. _bilin: bilin.html
.. _atomsTest: atomsTest.html
.. _m2sci_isstruct: m2sci_isstruct.html
.. _m2sci_title: m2sci_title.html
.. _createGUID: createGUID.html
.. _getscilabmode: getscilabmode.html
.. _CLSS: CLSS.html
.. _atan: atan.html
.. _getAllocatedMatrixOfComplexPoly: getAllocatedMatrixOfComplexPoly.html
.. _m2sci_blanks: m2sci_blanks.html
.. _ConstantVoltage: ConstantVoltage.html
.. _plus: plus.html
.. _findAC: findAC.html
.. _list_integer_writing_API: list_integer_writing_API.html
.. _m2sci_angle: m2sci_angle.html
.. _compile_and_run_call_scilab: compile_and_run_call_scilab.html
.. _inv: inv.html
.. _or_op: or_op.html
.. _getlanguage: getlanguage.html
.. _bitxor: bitxor.html
.. _ssprint: ssprint.html
.. _EVTVARDLY: EVTVARDLY.html
.. _Variable: Variable.html
.. _param3d1: param3d1.html
.. _Funcall: Funcall.html
.. _hallchart: hallchart.html
.. _m2sci_sparse: m2sci_sparse.html
.. _hsvcolormap: hsvcolormap.html
.. _min: min.html
.. _polarplot: polarplot.html
.. _CURV_f: CURV_f.html
.. _listfunctions: listfunctions.html
.. _xgraduate: xgraduate.html
.. _nanmean: nanmean.html
.. _ReturnArguments: ReturnArguments.html
.. _m2sci_csc: m2sci_csc.html
.. _findx0BD: findx0BD.html
.. _or: or.html
.. _m2sci_function: m2sci_function.html
.. _Complex: section_c2299fae99263e092f87c30f90c4427f.html
.. _fftw_forget_wisdom: fftw_forget_wisdom.html
.. _fort: fort.html
.. _quote: quote.html
.. _tbx_build_src: tbx_build_src.html
.. _temp_law_vfsa: temp_law_vfsa.html
.. _xmlIsValidObject: xmlIsValidObject.html
.. _spantwo: spantwo.html
.. _mtlb_lower: mtlb_lower.html
.. _m2sci_acsch: m2sci_acsch.html
.. _feval: feval.html
.. _Search and sort: section_204db4f8889865d295181d894fd9fedd.html
.. _nansum: nansum.html
.. _chooselcccompiler: chooselcccompiler.html
.. _rgb2name: rgb2name.html
.. _xls_open: xls_open.html
.. _freeAllocatedComplexSparseMatrix: freeAllocatedComplexSparseMatrix.html
.. _optimsimplex: optimsimplex.html
.. _Continuous time systems palette: section_c356e461a309facff393363a9bc63a1a.html
.. _REGISTER: REGISTER.html
.. _m2sci_linspace: m2sci_linspace.html
.. _findBDK: findBDK.html
.. _dnaupd: dnaupd.html
.. _continue: continue.html
.. _driver: driver.html
.. _clearglobal: clearglobal.html
.. _m2sci_box: m2sci_box.html
.. _beta: beta.html
.. _DOLLAR_f: DOLLAR_f.html
.. _dsimul: dsimul.html
.. _getAllocatedSingleComplexPoly: getAllocatedSingleComplexPoly.html
.. _Diagram: section_524c4ad5266c3e5d0f57c49068612e33.html
.. _Integer_management_reading_API: Integer_management_reading_API.html
.. _m2sci_fgets: m2sci_fgets.html
.. _mtlb_isspace: mtlb_isspace.html
.. _mtlb_sort: mtlb_sort.html
.. _Scilab: section_f4caaf2d8061d7891baabb9d14e88717.html
.. _integer: section_ebce74f6ed7547252ba6f18ecee955dc.html
.. _cainv: cainv.html
.. _scicos: scicos.html
.. _xmlElement: xmlElement.html
.. _scf: scf.html
.. _gca: gca.html
.. _m2sci_isfield: m2sci_isfield.html
.. _DSUPER: DSUPER.html
.. _colinout: colinout.html
.. _m2sci_doc: m2sci_doc.html
.. _ISELECT_m: ISELECT_m.html
.. _m2sci_rand: m2sci_rand.html
.. _m2sci_colon: m2sci_colon.html
.. _CheckRhs: CheckRhs.html
.. _boolean_reading_API: boolean_reading_API.html
.. _demo_file_choice: demo_file_choice.html
.. _m2sci_docopt: m2sci_docopt.html
.. _GAINBLK_f: GAINBLK_f.html
.. _xfarc: xfarc.html
.. _strings: strings.html
.. _m2sci_realmin: m2sci_realmin.html
.. _move: move.html
.. _getd: getd.html
.. _m2sci_substraction: m2sci_substraction.html
.. _Matrix operation palette: section_567180bcef25256104d2547b2a8d8df7.html
.. _crossover_ga_default: crossover_ga_default.html
.. _cdff: cdff.html
.. _seteventhandler: seteventhandler.html
.. _getmodules: getmodules.html
.. _getScalarComplexDouble: getScalarComplexDouble.html
.. _xfarcs: xfarcs.html
.. _init_param: init_param.html
.. _profile: profile.html
.. _c_block: c_block.html
.. _drawnow: drawnow.html
.. _RAND_m: RAND_m.html
.. _bstap: bstap.html
.. _mtlb_randn: mtlb_randn.html
.. _mtlb_conv: mtlb_conv.html
.. _semicolon: semicolon.html
.. _quit: quit.html
.. _ell1mag: ell1mag.html
.. _m2sci_cputime: m2sci_cputime.html
.. _Utilities: section_ad05832ab4486b7faf04b2ccac0e1ae8.html
.. _lin: lin.html
.. _residu: residu.html
.. _intsplin: intsplin.html
.. _m2sci_pi: m2sci_pi.html
.. _hess: hess.html
.. _startup: startup.html
.. _repmat: repmat.html
.. _colorbar: colorbar.html
.. _modulo: modulo.html
.. _xs2svg: xs2svg.html
.. _ATOMS: section_c15be0e250a811c9036a44b041d0be36.html
.. _isascii: isascii.html
.. _write4b: write4b.html
.. _grayplot: grayplot.html
.. _pfss: pfss.html
.. _uigetdir: uigetdir.html
.. _mtlb_diag: mtlb_diag.html
.. _cont_mat: cont_mat.html
.. _fileinfo: fileinfo.html
.. _Discontinuities palette: section_7d60c0d7d4301a8945be08de6a3d6a66.html
.. _xsetm: xsetm.html
.. _MATCATV: MATCATV.html
.. _Infer: Infer.html
.. _xchange: xchange.html
.. _fchamp: fchamp.html
.. _unobs: unobs.html
.. _m2sci_ishandle: m2sci_ishandle.html
.. _EVTGEN_f: EVTGEN_f.html
.. _imrep2ss: imrep2ss.html
.. _mtlb_linspace: mtlb_linspace.html
.. _set_xproperty: set_xproperty.html
.. _degree: degree.html
.. _armax: armax.html
.. _Summaries: section_d82e9f132a7612939d7d6793434435c1.html
.. _setfield: setfield.html
.. _edit_curv: edit_curv.html
.. _asech: asech.html
.. _replot: replot.html
.. _DLRADAPT_f: DLRADAPT_f.html
.. _log2: log2.html
.. _plot3d1: plot3d1.html
.. _x_matrix: x_matrix.html
.. _asind: asind.html
.. _abort: abort.html
.. _CallingAScilabFunctionFromACInterface: CallingAScilabFunctionFromACInterface.html
.. _getinstalledlookandfeels: getinstalledlookandfeels.html
.. _cosm: cosm.html
.. _mtlb_grid: mtlb_grid.html
.. _isPolyType: isPolyType.html
.. _createScalarBoolean: createScalarBoolean.html
.. _file: file.html
.. _LhsVar: LhsVar.html
.. _Switch: Switch.html
.. _aplat: aplat.html
.. _historymanager: historymanager.html
.. _tbx_builder_help_lang: tbx_builder_help_lang.html
.. _fullrfk: fullrfk.html
.. _crossover_ga_binary: crossover_ga_binary.html
.. _banner: banner.html
.. _Sampling: section_9ddfc32a13d54d7e881149ef1d9bb2e9.html
.. _Polynomials: section_de60ecc2f4db9df8354d6bcd1956d0ef.html
.. _Matrix_pal: Matrix_pal.html
.. _tbx_builder_src_lang: tbx_builder_src_lang.html
.. _add_help_chapter: add_help_chapter.html
.. _sparseExample: sparseExample.html
.. _mutation_ga_binary: mutation_ga_binary.html
.. _pbig: pbig.html
.. _barhomogenize: barhomogenize.html
.. _strsubst: strsubst.html
.. _gamma: gamma.html
.. _mesh: mesh.html
.. _meof: meof.html
.. _plot3d3: plot3d3.html
.. _F: section_0f4d61eae16d4fe117ae2576aa25da33.html
.. _MAX_f: MAX_f.html
.. _umf_license: umf_license.html
.. _cat: cat.html
.. _m2sci_quit: m2sci_quit.html
.. _hankelsv: hankelsv.html
.. _list_bsparse_reading_API: list_bsparse_reading_API.html
.. _nancumsum: nancumsum.html
.. _m2sci_qr: m2sci_qr.html
.. _window: window.html
.. _Sinks palette: section_db37cc127120cf089c903c3cca127c76.html
.. _MATINV: MATINV.html
.. _plotframe: plotframe.html
.. _Commonly used blocks palette: section_4af25c59f4a436982a291ee3f96167b6.html
.. _springcolormap: springcolormap.html
.. _xgrid: xgrid.html
.. _getScalarDouble: getScalarDouble.html
.. _bar_histogram: section_f149d123478ef89567dfd03f11d9e1d6.html
.. _atomsGetLoaded: atomsGetLoaded.html
.. _gfrancis: gfrancis.html
.. _colon: colon.html
.. _xcosValidateCompareBlock: xcosValidateCompareBlock.html
.. _WRITEAU_f: WRITEAU_f.html
.. _Control flow: control_flow.html
.. _MATSING: MATSING.html
.. _Graphics: Graphics.html
.. _DERIV: DERIV.html
.. _ieee: ieee.html
.. _compute_initial_temp: compute_initial_temp.html
.. _m2sci_if: m2sci_if.html
.. _mrfit: mrfit.html
.. _luget: luget.html
.. _m2sci_isunix: m2sci_isunix.html
.. _ode: ode.html
.. _atomsRepositoryDel: atomsRepositoryDel.html
.. _nicholschart: nicholschart.html
.. _javasci: javasci.html
.. _xs2ppm: xs2ppm.html
.. _Low level functions: section_35082c0c82a3e209d74d06a02e1cc382.html
.. _mtlb_0: mtlb_0.html
.. _datatipInitStruct: datatipInitStruct.html
.. _m2sci_tril: m2sci_tril.html
.. _mtlb_strrep: mtlb_strrep.html
.. _with_texmacs: with_texmacs.html
.. _asinm: asinm.html
.. _xmlWrite: xmlWrite.html
.. _strsplit: strsplit.html
.. _M_SWITCH: M_SWITCH.html
.. _hist3d: hist3d.html
.. _profiling: section_4f4efa86916b83c0066eef370de1b3d3.html
.. _ric_desc: ric_desc.html
.. _projsl: projsl.html
.. _get_figure_handle: get_figure_handle.html
.. _fec_properties: fec_properties.html
.. _getcallbackobject: getcallbackobject.html
.. _CONST_m: CONST_m.html
.. _acoshm: acoshm.html
.. _m2sci_csch: m2sci_csch.html
.. _umf_lusolve: umf_lusolve.html
.. _poly_getpolyvariablename_API: poly_getpolyvariablename_API.html
.. _remove_profiling: remove_profiling.html
.. _waitbar: waitbar.html
.. _m2sci_find: m2sci_find.html
.. _meshgrid: meshgrid.html
.. _list2vec: list2vec.html
.. _orth: orth.html
.. _Text editor (Scinotes): section_204a578ffad35ad6852295ce2c227c67.html
.. _DEADBAND: DEADBAND.html
.. _m2sci_clock: m2sci_clock.html
.. _odeoptions: odeoptions.html
.. _lin2mu: lin2mu.html
.. _atomsShow: atomsShow.html
.. _API Scilab: section_22bb45792d4aafec9067f1aac2cfa752.html
.. _unix_x: unix_x.html
.. _INVBLK: INVBLK.html
.. _TOWS_c: TOWS_c.html
.. _getsystemmetrics: getsystemmetrics.html
.. _m2scideclare: m2scideclare.html
.. _filesep: filesep.html
.. _ESELECT_f: ESELECT_f.html
.. _m2sci_pause: m2sci_pause.html
.. _atomsAutoloadDel: atomsAutoloadDel.html
.. _atomsSystemUpdate: atomsSystemUpdate.html
.. _ui_observer: ui_observer.html
.. _geomean: geomean.html
.. _m2sci_besselk: m2sci_besselk.html
.. _get_absolute_file_path: get_absolute_file_path.html
.. _harmean: harmean.html
.. _xmlRead: xmlRead.html
.. _m2sci_cosh: m2sci_cosh.html
.. _m2sci_fftshift: m2sci_fftshift.html
.. _pol2des: pol2des.html
.. _m2sci_diary: m2sci_diary.html
.. _nfreq: nfreq.html
.. _set_blockerror: set_blockerror.html
.. _getpid: getpid.html
.. _xlfont: xlfont.html
.. _int_getmatrixofintegerprecision_API: int_getmatrixofintegerprecision_API.html
.. _MFCLCK_f: MFCLCK_f.html
.. _PRODUCT: PRODUCT.html
.. _isvector: isvector.html
.. _getmark: getmark.html
.. _READAU_f: READAU_f.html
.. _SendScilabJobs: SendScilabJobs.html
.. _gcd: gcd.html
.. _oemtochar: oemtochar.html
.. _POSTONEG_f: POSTONEG_f.html
.. _MATDET: MATDET.html
.. _atomsSetConfig: atomsSetConfig.html
.. _gsort: gsort.html
.. _list_poly_writing_API: list_poly_writing_API.html
.. _add_demo: add_demo.html
.. _atomsAutoloadAdd: atomsAutoloadAdd.html
.. _dcf: dcf.html
.. _browsehistory: browsehistory.html
.. _h_inf_st: h_inf_st.html
.. _READC_f: READC_f.html
.. _m2sci_strcmp: m2sci_strcmp.html
.. _m2sci_equal: m2sci_equal.html
.. _QUANT_f: QUANT_f.html
.. _eigs: eigs.html
.. _varn: varn.html
.. _INIMPL_f: INIMPL_f.html
.. _cspect: cspect.html
.. _findABCD: findABCD.html
.. _xmlRemove: xmlRemove.html
.. _getdebuginfo: getdebuginfo.html
.. _StartScilab: StartScilab.html
.. _asciimat: asciimat.html
.. _sci_files: sci_files.html
.. _list_pointer_reading_API: list_pointer_reading_API.html
.. _xinfo: xinfo.html
.. _mtlb_fprintf: mtlb_fprintf.html
.. _rat: rat.html
.. _ind2sub: ind2sub.html
.. _int3d: int3d.html
.. _squarewave: squarewave.html
.. _errbar: errbar.html
.. _intppty: intppty.html
.. _freeAllocatedSingleComplexPoly: freeAllocatedSingleComplexPoly.html
.. _atanm: atanm.html
.. _nearfloat: nearfloat.html
.. _mtlb_close: mtlb_close.html
.. _Userdefinedfunctions_pal: Userdefinedfunctions_pal.html
.. _m2sci_beta: m2sci_beta.html
.. _m2sci_atanh: m2sci_atanh.html
.. _scicos_graphics: scicos_graphics.html
.. _m2sci_graymon: m2sci_graymon.html
.. _asec: asec.html
.. _string: string.html
.. _eval_cshep2d: eval_cshep2d.html
.. _m2sci_whos: m2sci_whos.html
.. _mtlb_logic: mtlb_logic.html
.. _nand2mean: nand2mean.html
.. _axes_properties: axes_properties.html
.. _isinf: isinf.html
.. _rainbowcolormap: rainbowcolormap.html
.. _assert_cond2reqdigits: assert_cond2reqdigits.html
.. _isIntegerType: isIntegerType.html


