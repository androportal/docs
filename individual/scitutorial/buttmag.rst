


buttmag
=======

Power transmission of a Butterworth filter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [h]=buttmag(order,omegac,sample)




Arguments
~~~~~~~~~

:order integer : filter order
: :omegac real : cut-off angular frequency (in rad/s)
: :sample real vector of angular frequencies (in rad/s), where the
  transmission must be evaluated.
: :h Butterworth filter values at sample points
:



Description
~~~~~~~~~~~

squared magnitude response of a Butterworth filter `omegac` = cutoff
frequency ; `sample` = sample of frequencies



Examples
~~~~~~~~


::

    //squared magnitude response of Butterworth filter
    h=buttmag(13,300,1:1000);
    mag=20*`log`_(h)'/`log`_(10);
    `plot2d`_((1:1000)',mag,[2],"011"," ",[0,-180,1000,20])




