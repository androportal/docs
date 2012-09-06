


sysdiag
=======

block diagonal system connection



Calling Sequence
~~~~~~~~~~~~~~~~


::

    r=sysdiag(a1,a2,...,an)




Description
~~~~~~~~~~~

Returns the block-diagonal system made with subsystems put in the main
diagonal

:ai subsystems (i.e. gains, or linear systems in state-space or
  transfer form)
:

Used in particular for system interconnections.



Remark
~~~~~~

At most 17 arguments.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s')
    sysdiag(`rand`_(2,2),1/(s+1),[1/(s-1);1/((s-2)*(s-3))])
    sysdiag(`tf2ss`_(1/s),1/(s+1),[1/(s-1);1/((s-2)*(s-3))])




See Also
~~~~~~~~


+ `brackets`_ ([,]) left and right brackets
+ `insertion`_ partial variable assignation or modification
+ `feedback`_ feedback operation


.. _brackets: brackets.html
.. _insertion: insertion.html
.. _feedback: feedback.html


