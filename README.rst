=============
Documentation
=============

Document all Aakash related work here.
--------------------------------------

This repo contains user's manual and reference for ``Aakash
programming lab(APL)`` in `sphinx <http://sphinx.pocoo.org/>`_ 

1) **devel** directory contains developer's manual.
2) **individual** directory contains seperate documentation on C, C++,
   Python and Scilab for APL.


How to use
----------

clone the repo using 

::

   git clone git://github.com/androportal/docs.git


to generate all html in one go, type

::

   make all

to make individual html pages for devel, C, C++ and Scilab, type

::

   make devel

::

   make c

::

   make cpp

::

   make py

::

   make sci

if you want to remove *source files* from ``../_built/html/_source``
(just to save some space), then do

::

   make sclean

to remove or clean all html pages type

::
   
   make clean-all

or you can do seperate cleaning, visit the each directory and type

::

   make clean

Browse docs
-----------

After running ``make``, a temporary directory ``/_build/html/`` is
created in each parent directory. Locate the file ``index.html`` to
browse documentation.
