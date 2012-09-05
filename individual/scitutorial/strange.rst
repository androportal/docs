


strange
=======

range



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [r]=strange(x)
    [r]=strange(x,'r') (or, equivalently, [r]=strange(x,1))
    [r]=strange(x,'c') (or, equivalently, [r]=strange(x,2))




Arguments
~~~~~~~~~

:x real or complex vector or matrix
:



Description
~~~~~~~~~~~

The range is the distance between the largest and smaller value,
[r]=strange(x) computes the range of vector or matrix x.

[r]=strange(x,'r') (or equivalently [r]=strange(x,1)) give a row
vector with the range of each column.

[r]=strange(x,'c') (or equivalently [r]=strange(x,2)) give a column
vector with the range of each row.



References
~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, J.Wiley &
Sons, 1990.



