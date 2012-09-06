


errcatch
========

error trapping



Calling Sequence
~~~~~~~~~~~~~~~~


::

    errcatch(n [,'action'] [,'option'])
    errcatch()




Arguments
~~~~~~~~~

:n integer
: :action, option strings
:



Description
~~~~~~~~~~~

`errcatch` gives an "action" (error-handler) to be performed when an
error of type `n` occurs.

`n` has the following meaning:

if `n>0`, `n` is the error number to trap;

if `n<0` all errors are to be trapped.

`action` is one of the following character strings:

:"pause" a pause is executed when trapping the error. This option is
  useful for debugging purposes. Use `whereami()` to get information on
  the current context.
: :"continue" next instruction in the function or exec files is
  executed, current instruction is ignored. It is possible to check if
  an error has occurred using the `iserror`_ function. Do not forget to
  clear the error using the `errclear`_ function as soon as possible.
  This option is useful for error recovery. In many cases, usage of
  `errcatch(n,"continue",..)` can be replaced by the use of `execstr`_
  function or `try`_ control structure.
: :"kill" default mode, all intermediate functions are killed, scilab
  goes back to the level 0 prompt.
: :"stop" interrupts the current Scilab session (useful when Scilab is
  called from an external program).
:

`option` is the character string `'nomessage'` for killing error
message.

To set back default mode, enter `errcatch(-1,"kill")` or similarly
`errcatch(-1)`. `errcatch()` is an obsolete equivalent of
`errcatch(-1)`.



The `errcatch` actions apply to the current evalution context (
`function`, `exec`, `pause`) and all the sub-levels. A second
`errcatch` call in a sub-level hides the initial one for this sub-
level. If a second `errcatch` call is made at the same level, the
effect of the first one is removed.

When called in the context of a Scilab function or exec the `errcatch`
is automatically reset when the function returns.



See Also
~~~~~~~~


+ `try`_ beginning of try block in try-catch control instruction
+ `errclear`_ error clearing
+ `iserror`_ error occurrence test
+ `whereami`_ display current instruction calling tree
+ `execstr`_ execute Scilab code in strings
+ `exec`_ script file execution
+ `pause`_ pause mode, invoke keyboard


.. _whereami: whereami.html
.. _iserror: iserror.html
.. _execstr: execstr.html
.. _pause: pause.html
.. _try: try.html
.. _errclear: errclear.html
.. _exec: exec.html


