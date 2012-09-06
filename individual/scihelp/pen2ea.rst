


pen2ea
======

pencil to E,A conversion



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [E,A]=pen2ea(Fs)




Arguments
~~~~~~~~~

:Fs matrix pencil `s*E-A`
: :E,A two matrices such that `Fs=s*E-A`
:



Description
~~~~~~~~~~~

Utility function. Given the pencil `Fs=s*E-A`, returns the matrices
`E` and `A`.



Examples
~~~~~~~~


::

    E=[1,0];A=[1,2];s=`poly`_(0,'s');
    [E,A]=pen2ea(s*E-A)




