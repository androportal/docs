


buildouttb
==========

Build of the sublist %cpr.state.outtb



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [outtb]=buildouttb(lnksz,lnktyp)




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

Build an initialized outtb list.


::

    [outtb]=buildouttb(lnksz,lnktyp)




Arguments
~~~~~~~~~


+ **outtb :** a list of size n.
+ **lnksz :** That parameter gives the size of Scilab object in outtb.
  This matrix of integer or real numbers can have a n,2 or 2,n size.
+ **lnktyp :** That parameters gives the type of Scilab object in
  outtb : 1 : double 2 : complex 3 : int32 4 : int16 5 : int8 6 : uint32
  7 : uint16 8 : uint8 else : double This matrix of integer or real
  numbers can have a n,1 or 1,n size.


.. _xcos: xcos.html


