


bode
====

Bode plot



Calling Sequence
~~~~~~~~~~~~~~~~


::

    bode(sl,[fmin,fmax] [,step] [,comments] )
    bode(sl,frq [,comments] )
    bode(frq,db,phi [,comments])
    bode(frq, repf [,comments])




Arguments
~~~~~~~~~

:sl `syslin` list (SISO or SIMO linear system) in continuous or
  discrete time.
: :fmin,fmax real (frequency bounds (in Hz))
: :step real (logarithmic step.)
: :comments vector of character strings (captions).
: :frq row vector or matrix (frequencies (in Hz) ) (one row for each
  SISO subsystem).
: :db row vector or matrix ( magnitudes (in Db)). (one row for each
  SISO subsystem).
: :phi row vector or matrix ( phases (in degree)) (one row for each
  SISO subsystem).
: :repf row vector or matrix of complex numbers (complex frequency
  response).
:



Description
~~~~~~~~~~~

Bode plot, i.e magnitude and phase of the frequency response of `sl`.

`sl` can be a continuous-time or discrete-time SIMO system (see
`syslin`). In case of multi-output the outputs are plotted with
different symbols.

The frequencies are given by the bounds `fmin,fmax` (in Hz) or by a
row-vector (or a matrix for multi-output) `frq`.

`step` is the ( logarithmic ) discretization step. (see `calfrq` for
the choice of default value).

`comments` is a vector of character strings (captions).

`db,phi` are the matrices of modulus (in Db) and phases (in degrees).
(One row for each response).

`repf` matrix of complex numbers. One row for each response.

Default values for `fmin` and `fmax` are `1.d-3`, `1.d+3` if `sl` is
continuous-time or `1.d-3`, `0.5`/sl.dt (nyquist frequency) if `sl` is
discrete-time. Automatic discretization of frequencies is made by
`calfrq`.

The
