Scilab Function

Last update : April 1993

**iserror** - error occurence test

Calling Sequence
~~~~~~~~~~~~~~~~

``iserror([n])  ``

Description
~~~~~~~~~~~

tests if error number ``         n       `` has occurred (after a call
to ``         errcatch       ``). ``         iserror       `` returns
``         1       `` if the error occurred a nd ``         0       ``
otherwise

``         n>0       `` is the error number ; all errors are tested with
``         n<0       ``.

See Also
~~~~~~~~

```           error         `` <error.htm>`_,
```           errcatch         `` <errcatch.htm>`_,
