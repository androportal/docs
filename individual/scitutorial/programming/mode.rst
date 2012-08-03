====
"mode"
====

Scilab Function Last update : 21/01/2005
**mode** - select a mode in exec file



Calling Sequence
~~~~~~~~~~~~~~~~

mode(k)
k=mode()




Description
~~~~~~~~~~~

Used exclusively inside an exec-file or a scilab function **mode(k)**
allows to change the information displayed during the execution,
depending on the value of **k** :

**k=0**: The new variable values are displayed if required (see help
  on semi or comma).
**k=-1**: the exec file or scilab function executes silently. (this is
  the default value for scilab functions)
**k=1 or k=3**: each line of instructions is echoed preceded of the
  prompt(if possible). The new variable values are displayed if
  required. This is the default for exec files.
**k=7**: The new variable values are displayed if required, each line
  of instructions is echoed (if possible) and a prompt (>>) is issued
  after each line waiting for a carriage return .If carriage return
  follows character "p" the execution is paused (see ` **pause** `_).

Line display is disabled for compiled scilab function (see getf or
comp). By default, Scilab functions are executed using the silent
("-1") mode.


See Also
~~~~~~~~

` **exec** `_,` **getf** `_,` **semi** `_,` **comma** `_,

.. _
      : ://./programming/comma.htm
.. _
        : ://./programming/pause.htm
.. _
      : ://./programming/exec.htm
.. _
      : ://./programming/semi.htm
.. _
      : ://./programming/../functions/getf.htm


