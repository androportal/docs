====
"sysdiag"
====

Scilab Function Last update : 16/12/2004
**sysdiag** - block diagonal system connection



Calling Sequence
~~~~~~~~~~~~~~~~

r=sysdiag(a1,a2,...,an)




Description
~~~~~~~~~~~

Returns the block-diagonal system made with subsystems put in the main
diagonal

**ai**: subsystems (i.e. gains, or linear systems in state-space or
  transfer form)


Used in particular for system interconnections.



Remark
~~~~~~

At most 17 arguments.



Examples
~~~~~~~~


::

    
    
     s=poly(0,'s')
     sysdiag(rand(2,2),1/(s+1),[1/(s-1);1/((s-2)*(s-3))])
     sysdiag(tf2ss(1/s),1/(s+1),[1/(s-1);1/((s-2)*(s-3))])
    
     s=poly(0,'s')
     sysdiag(rand(2,2),1/(s+1),[1/(s-1);1/((s-2)*(s-3))])
     sysdiag(tf2ss(1/s),1/(s+1),[1/(s-1);1/((s-2)*(s-3))])
     
      




See Also
~~~~~~~~

` **brackets** `_,` **insertion** `_,` **feedback** `_,

.. _
      : ://./elementary/../programming/brackets.htm
.. _
      : ://./elementary/../programming/insertion.htm
.. _
      : ://./elementary/../control/feedback.htm


