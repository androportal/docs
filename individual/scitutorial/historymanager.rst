


historymanager
==============

enable or disable history manager



Calling Sequence
~~~~~~~~~~~~~~~~


::

    state1=historymanager(state2)
    state1=historymanager()




Arguments
~~~~~~~~~

:state1 returns history manager state 'on' or 'off'
: :state2 'on' or 'off' set history manager's state
:



Description
~~~~~~~~~~~

enable or disable history manager.

in 'API' mode, history manager is disabled.



Examples
~~~~~~~~


::

    `displayhistory`_()
    backupstate=historymanager()
    historymanager('off')
    `displayhistory`_()
    historymanager('on')
    `loadhistory`_()
    `displayhistory`_()
    historymanager(backupstate)




See Also
~~~~~~~~


+ `getscilabmode`_ returns scilab mode
+ `call_scilab`_ call_scilab is an interface which provides the
  ability to call Scilab engine from C/C++ code


.. _call_scilab: call_scilab.html
.. _getscilabmode: getscilabmode.html


