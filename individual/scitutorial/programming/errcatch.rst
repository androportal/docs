====
"errcatch"
====

Scilab Function Last update : 30/08/2005
**errcatch** - error trapping



Calling Sequence
~~~~~~~~~~~~~~~~

errcatch(n [,'action'] [,'option'])
errcatch()




Parameters
~~~~~~~~~~


+ **n** : integer
+ **action, option** : strings




Description
~~~~~~~~~~~

**errcatch** gives an "action" (error-handler) to be performed when an
error of type **n** occurs. **n** has the following meaning:

if **n>0** , **n** is the error number to trap

if **n<0** all errors are to be trapped

**action** is one of the following character strings:

**"pause"**: a pause is executed when trapping the error. This option
  is useful for debugging purposes. Use **whereami()** to get
  informations on the current context.
**"continue"**: next instruction in the function or exec files is
  executed, current instruction is ignored. It is possible to check if
  an error has occured using the **iserror** function. Do not forget to
  clear the error using the **errclear** function as soon as possible
  This option is useful for error recovery. In many cases, usage of **
  errcatch(n,"continue",..)** can be replaced by the use of **execstr**
  function.
**"kill"**: default mode, all intermediate functions are killed,
  scilab goes back to the level 0 prompt.
**"stop"**: interrupts the current Scilab session (useful when Scilab
  is called from an external program).


**option** is the character string **'nomessage'** for killing error
message.

To set back default mode, enter **errcatch(-1,"kill")** or similarly
**errcatch(-1)** .

Then called in a scilab function the **errcatch** is automatically
reset to the default mode when the function returns.

**errcatch()** is an obsolete equivalent of **errcatch(-1)** .



Remark
~~~~~~

**errcatch** is obsolete. Use ` **try** `_ or
**execstr(...,'errcatch')** instead of **errcatch** when possible.



See Also
~~~~~~~~

` **try** `_,` **errclear** `_,` **iserror** `_,` **whereami** `_,`
**execstr** `_,

.. _
      : ://./programming/try.htm
.. _
      : ://./programming/iserror.htm
.. _
      : ://./programming/errclear.htm
.. _
      : ://./programming/whereami.htm
.. _
      : ://./programming/execstr.htm


