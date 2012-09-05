


eqfir
=====

minimax approximation of FIR filter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [hn]=eqfir(nf,bedge,des,wate)




Arguments
~~~~~~~~~

:nf number of output filter points desired
: :bedge Mx2 matrix giving a pair of edges for each band
: :des M-vector giving desired magnitude for each band
: :wate M-vector giving relative weight of error in each band
: :hn output of linear-phase FIR filter coefficients
:



Description
~~~~~~~~~~~

Minimax approximation of multi-band, linear phase, FIR filter



Examples
~~~~~~~~


::

    hn=eqfir(33,[0 .2;.25 .35;.4 .5],[0 1 0],[1 1 1]);
    [hm,fr]=`frmag`_(hn,256);
    `plot`_(fr,hm),




