


dhinf
=====

H_infinity design of discrete-time systems



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [AK,BK,CK,DK,(RCOND)] = dishin(A,B,C,D,ncon,nmeas,gamma)




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
    :RCOND (1) contains the reciprocal condition number of the matrix R3,
    : :RCOND (2) contains the reciprocal condition number of the matrix R1
      - R2'*inv(R3)*R2
    : :RCOND (3) contains the reciprocal condition number of the matrix
      V21,
    : :RCOND (4) contains the reciprocal condition number of the matrix
      St3,
    : :RCOND (5) contains the reciprocal condition number of the matrix
      V12,
    : :RCOND (6) contains the reciprocal condition number of the matrix
      Im2 + DKHAT*D22,
    : :RCOND (7) contains the reciprocal condition number of the X-Riccati
      equation,
    : :RCOND (8) contains the reciprocal condition number of the Z-Riccati
      equation.
    :

:



Description
~~~~~~~~~~~

`[AK,BK,CK,DK,(RCOND)] = dhinf(A,B,C,D,ncon,nmeas, gamma)` To compute
the matrices of an H-infinity (sub)optimal n-state controller


::

    | AK | BK |
    K = |----|----|,
    | CK | DK |


for the discrete-time system


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
for Hinf and H2 design of linear discrete-time control systems.
Report99-8, Department of Engineering, Leicester University, April
1999.



Examples
~~~~~~~~


::

    //example from Niconet report SLWN1999-12
    //Hinf
    A=[-0.7  0    0.3  0   -0.5 -0.1
       -0.6  0.2 -0.4 -0.3  0    0
       -0.5  0.7 -0.1  0    0   -0.8
       -0.7  0    0   -0.5 -1    0
        0    0.3  0.6 -0.9  0.1 -0.4
        0.5 -0.8  0    0    0.2 -0.9];
    B=[-1 -2 -2  1  0
        1  0  1 -2  1
       -3 -4  0  2 -2
        1 -2  1  0 -1
        0  1 -2  0  3
        1  0  3 -1 -2];
    C=[ 1 -1  2 -2  0 -3
       -3  0  1 -1  1  0
        0  2  0 -4  0 -2
        1 -3  0  0  3  1
        0  1 -2  1  0 -2];
    D=[1 -1 -2  0  0
       0  1  0  1  0
       2 -1 -3  0  1
       0  1  0  1 -1
       0  0  1  2  1];
    
    ncon=2
    nmeas=2
    gam=111.30;
    [AK,BK,CK,DK] = dhinf(A,B,C,D,ncon,nmeas,gam)




See Also
~~~~~~~~


+ `hinf`_ H_infinity design of continuous-time systems
+ `h_inf`_ Continuous time H-infinity (central) controller


.. _h_inf: h_inf.html
.. _hinf: hinf.html


