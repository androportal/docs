


phaseplot
=========

frequency phase plot



Calling Sequence
~~~~~~~~~~~~~~~~


::

    phaseplot(sl)
    phaseplot(sl,fmin,fmax [,step] [,comments] )
    phaseplot(frq,db,phi [,comments])
    phaseplot(frq, repf [,comments])




Arguments
~~~~~~~~~

:sl a single input multiple output (SIMO) linear dynamical system (see
  `syslin`_).
: :fmin real scalar: the minimum frequency (in Hz) to be represented.
: :fmax real scalar: the maximum frequency (in Hz) to be represented.
: :step real scalar: the frequency discretization step (logarithmic
  scale)). If it is not specified the alorithm uses adaptative frequency
  steps.
: :comments a character string vector: the legend label to be
  associated with each curve. Optional value is the empty array.
: :frq a row vector or an n x m array: The frequency discretization in
  Hz.
: :db an n x m array: the magnitudes corresponding to `frq`. This
  argument is not used, it only appears to make `phaseplot` have the
  same calling sequence as `gainplot` and `bode`.
: :phi an n x m array: the phases in degree corresponding to `frq`.
  The `phaseplot` function plots the curves `frq(i,:)` versus `phi(i,:)`
: :repf an n x m complex array. The `phaseplot` function plots the
  curves `frq(i,:)` versus `phase(repf(i,:))`
:



Description
~~~~~~~~~~~

This function draws the phase of the frequency response of a system.
The system can be given under different representations:


+ `phaseplot(sl,...)` case `sl` can be a continuous-time or discrete-
  time SIMO system (see `syslin`_). In case of multi-output the outputs
  are plotted with different symbols. In this case the frequencies can
  be given by:

    + the lower and upper bounds in Hz `fmin`, `fmax` and an optional
      frequency step `step`. The default values for `fmin` and `fmax`are
      `1.e-3`, `1.e3` if `sl` is continuous-time or `1.e-3`, `0.5/sl.dt`
      (nyquist frequency) if `sl` is discrete-time. If the `step` argument
      is omitted the function use an adaptative frequency step (see
      `calfrq`_).
    + a row vector or a 2D array `frq` which gives the frequency values in
      Hz. 2D array can be used for multi-output systems if one wants to have
      different frequency discretization for each input/output couple.

+ `phaseplot(frq,...)` case This case allows to draw frequency phase
  plots for previously computed frequency responses. The frequency
  response can be given either by it's complex representation `repf` or
  by it's magnitude phase representation `db`, `phi` . `frq` and `repf`
  must be row vectors or n x m arrays (each row represent an
  input/output couple) .


The
