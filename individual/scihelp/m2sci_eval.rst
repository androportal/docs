


eval (Matlab function)
======================

Execute a string containing an instruction/expression



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `eval`_



::

    `evstr`_ - execstr




Particular cases
~~~~~~~~~~~~~~~~

:Expression: When **eval** has to execute an expression then Scilab
  equivalent for **eval** is **evstr**
: :Instruction: When **eval** has to execute an instruction with just
  one output value then Scilab equivalent for **eval** is **evstr**. If
  instruction has more than one output value then **execstr** has to be
  used as follows.
:

When **eval** is used with two inputs then an equivalent can be found
in examples below.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    `eval`_('1+1')
    `eval`_('x=1+1')
    `eval`_('[d1,d2]=size(1)')
    [d1,d2]=`eval`_('size(1)')
    `eval`_('1+1','1+2')



::

    `evstr`_("1+1")
    x = `evstr`_("1+1")
    `execstr`_("[d1,d2]=size(1)")
    `execstr`_("[d1,d2]=size(1)")
    if `execstr`_("1+1","errcatch") then `execstr`_("1+2");end




