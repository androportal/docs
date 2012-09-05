


global
======

Define global variable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    global('nam1',...,'namn')
    global nam1 ... namn




Arguments
~~~~~~~~~

:nam1,..., namn valid variable names
:



Description
~~~~~~~~~~~

Ordinarily, each Scilab function, has its own local variables and can
"read" all variables created in the base workspace or by the calling
functions. The `global` keyword allow to make variables read/write
across functions. Any assignment to that variable, in any function, is
available to all the other functions declaring it `global`.

If the global variable does not exist the first time you issue the
`global` statement, it will be initialized to the empty matrix.



Examples
~~~~~~~~


::

    //first: calling environnment and a function share a variable
    global a
    a=1
    `deff`_('y=f1(x)','global a,a=x^2,y=a^2')
    f1(2)
    a
    //second: three functions share variables
    `deff`_('initdata()','global A C ;A=10,C=30')
    `deff`_('letsgo()','global A C ;disp(A) ;C=70')
    `deff`_('letsgo1()','global C ;disp(C)')
    initdata()
    letsgo()
    letsgo1()




See Also
~~~~~~~~


+ `who`_ listing of variables
+ `isglobal`_ check if a variable is global
+ `clearglobal`_ kills global variables
+ `gstacksize`_ set/get scilab global stack size
+ `resume`_ return or resume execution and copy some local variables


.. _gstacksize: gstacksize.html
.. _resume: resume.html
.. _clearglobal: clearglobal.html
.. _who: who.html
.. _isglobal: isglobal.html


