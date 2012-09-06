


hinf
====

H_infinity design of continuous-time systems



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [AK,BK,CK,DK,(RCOND)] = hinf(A,B,C,D,ncon,nmeas,gamma)




Arguments
~~~~~~~~~

:A the n-by-n system state matrix A.
: :B the n-by-m system input matrix B.
: :C the p-by-n system output matrix C.
: :D the p-by-m system matrix D.
: :ncon the number of control inputs. m >= ncon >= 0, p-nmeas >= ncon.
: :nmeas the number of measurements. p >= nmeas >= 0, m-ncon >= nmeas.
: :gamma the parameter gamma used in `H_infinity` design. It is
  assumed that gamma is sufficiently large so that the controller is
  admissible. gamma >= 0.
: :AK the n-by-n controller state matrix AK.
: :BK the n-by-nmeas controller input matrix BK.
: :CK the ncon-by-n controller output matrix CK.
: :DK the ncon-by-nmeas controller matrix DK.
: :RCOND a vector containing estimates of the reciprocal condition
numbers of the matrices which are to be inverted and estimates of the
reciprocal condition numbers of the Riccati equations which have to be
solved during the computation of the controller. (See the description
of the algorithm in [1].)
    :RCOND (1) contains the reciprocal condition number of the control
      transformation matrix TU,
    : :RCOND (2) contains the reciprocal condition number of the
      measurement transformation matrix TY,
    : :RCOND (3) contains an estimate of the reciprocal condition number
      of the X-Riccati equation,
    : :RCOND (4) contains an estimate of the reciprocal condition number
      of the Y-Riccati equation.
    :

:



Description
~~~~~~~~~~~

`[AK,BK,CK,DK,(RCOND)] = hinf(A,B,C,D,ncon,nmeas,gamma)` To compute
the matrices of an H-infinity (sub)optimal n-state controller


::

    | AK | BK |
    K = |----|----|,
    | CK | DK |


for the continuous-time system


::

    | A  | B1  B2  |   | A | B |
    P = |----|---------| = |---|---|,
    | C1 | D11 D12 |   | C | D | 
    | C2 | D21 D22 |


and for a given value of gamma, where B2 has column size of the number
of control inputs (ncon) and C2 has row size of the number of
measurements (nmeas) being provided to the controller.



References
~~~~~~~~~~

[1] P.Hr. Petkov, D.W. Gu and M.M. Konstantinov. Fortran 77 routines
for Hinf and H2 design of continuous-time linear control systems.
Report98-14, Department of Engineering, Leicester University, August
1998.



Examples
~~~~~~~~


::

    //example from Niconet report SLWN1999-12
    //Hinf
    A=[-1  0  4  5 -3 -2
       -2  4 -7 -2  0  3
       -6  9 -5  0  2 -1
       -8  4  7 -1 -3  0
        2  5  8 -9  1 -4
        3 -5  8  0  2 -6];
    
    B=[-3 -4 -2  1  0
        2  0  1 -5  2
       -5 -7  0  7 -2
        4 -6  1  1 -2
       -3  9 -8  0  5
        1 -2  3 -6 -2];
    
    C=[ 1 -1  2 -4  0 -3
       -3  0  5 -1  1  1
       -7  5  0 -8  2 -2
        9 -3  4  0  3  7
        0  1 -2  1 -6 -2];
    
    D=[ 1 -2 -3  0  0
        0  4  0  1  0
        5 -3 -4  0  1
        0  1  0  1 -3
        0  0  1  7  1];
    Gamma=10.18425636157899;
    [AK,BK,CK,DK] = hinf(A,B,C,D,2,2,Gamma)




See Also
~~~~~~~~


+ `dhinf`_ H_infinity design of discrete-time systems


.. _dhinf: dhinf.html


