


phc
===

Markovian representation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [H,F,G]=phc(hk,d,r)




Arguments
~~~~~~~~~

:hk hankel matrix
: :d dimension of the observation
: :r desired dimension of the state vector for the approximated model
: :H, F, G relevant matrices of the Markovian model
:



Description
~~~~~~~~~~~

Function which computes the matrices `H, F, G` of a Markovian
representation by the principal hankel component approximation method,
from the hankel matrix built from the covariance sequence of a
stochastic process.



Examples
~~~~~~~~


::

    //This example may usefully be compared with the results from 
    //the 'levin' macro (see the corresponding help and example)
    //
    //We consider the process defined by two sinusoids (1Hz and 2 Hz) 
    //in additive Gaussian noise (this is the observation); 
    //the simulated process is sampled at 10 Hz.
    
    t=0:.1:100;`rand`_('normal');
    y=`sin`_(2*%pi*t)+`sin`_(2*%pi*2*t);y=y+`rand`_(y);`plot`_(t,y)
    
    //covariance of y
    
    nlag=128;
    c=`corr`_(y,nlag);
    
    //hankel matrix from the covariance sequence
    //(we can choose to take more information from covariance
    //by taking greater n and m; try it to compare the results !
    
    n=20;m=20;
    h=`hank`_(n,m,c);
    
    //compute the Markov representation (mh,mf,mg)
    //We just take here a state dimension equal to 4 :
    //this is the rather difficult problem of estimating the order !
    //Try varying ns ! 
    //(the observation dimension is here equal to one)
    
    ns=4;
    [mh,mf,mg]=phc(h,1,ns);
    
    //verify that the spectrum of mf contains the 
    //frequency spectrum of the observed process y
    //(remember that y is sampled -in our example 
    //at 10Hz (T=0.1s) so that we need 
    //to retrieve the original frequencies through the log 
    //and correct scaling by the frequency sampling)
    
    s=`spec`_(mf);s=`log`_(s);
    s=s/2/%pi/.1;
    
    //now we get the estimated spectrum
    `imag`_(s),




See Also
~~~~~~~~


+ `levin`_ Toeplitz system solver by Levinson algorithm
  (multidimensional)


.. _levin: levin.html


