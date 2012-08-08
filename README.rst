=============
Documentation
=============

Document all Aakash related work here.
--------------------------------------

This repo contains user's manual and reference for ``Aakash
programming lab(APL)`` in `sphinx <http://sphinx.pocoo.org/>`_ 

1) **apl** directory contains documentation related to installation,
   overview about ``Aakash programming lab(APL)`` on ``Aakash`` tablet

2) **individual** directory contains seperate documentation on C, C++,
   Python and Scilab for APL.


How to use
----------

clone the repo using 

::

   git clone git://github.com/androportal/documentation.git


to generate all html in one go, type:

::

   make all

to make individual html pages for APL, C, C++ and Scilab, type:

::

   make APL
   make c
   make cpp
   make py
   make sci

to remove or clean all html pages type:

::
   
   make clean-all

or you can do seperate cleaning by typing in particular directory:

::

   make clean


Browse docs
-----------

After running ``make``, a temporary directory ``/_build/html/`` is
created in each parent directory. Locate the file ``index.html`` to
browse documentation.
