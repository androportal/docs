


evans
=====

Evans root locus



Calling Sequence
~~~~~~~~~~~~~~~~


::

    evans(H [,kmax])




Arguments
~~~~~~~~~

:H SISO linear system given by a transfer or a state space
  representation (see:`syslin`_).
: :kmax real (maximum gain desired for the plot )
:



Description
~~~~~~~~~~~

Gives the Evans root locus for a SISO linear system in state-space or
transfer form H(s) (`syslin`_). This is the locus of the roots of
`1+k*H(s)=1+k*N(s)/D(s)`, in the complex plane. For a selected sample
of gains `k <= kmax` ,the imaginary part of the roots of `D(s)+k*N(s)`
is plotted vs the real part.

To obtain the gain at a given point of the locus you can activate the
`datatips`_ manager and click the desired point on the root locus.



Examples
~~~~~~~~


::

    H=`syslin`_('c',352*`poly`_(-5,'s')/`poly`_([0,0,2000,200,25,1],'s','c'));
    `clf`_();evans(H,100);`sgrid`_()
    [Ki,s]=`kpure`_(H) // Gains that give pure imaginary closed loop poles
    `plot`_([`real`_(s) `real`_(s)],[`imag`_(s) -`imag`_(s)],'*r')
    
    [Kr,s]=`krac2`_(H)






See Also
~~~~~~~~


+ `syslin`_ linear system definition
+ `sgrid`_ s-plane grid lines.
+ `zgrid`_ zgrid plot
+ `kpure`_ continuous SISO system limit feedback gain
+ `krac2`_ continuous SISO system limit feedback gain
+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.


.. _sgrid: sgrid.html
.. _zgrid: zgrid.html
.. _kpure: kpure.html
.. _krac2: krac2.html
.. _datatips: datatips.html
.. _syslin: syslin.html


