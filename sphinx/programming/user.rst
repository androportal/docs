Scilab Function

Last update : April 1993

**user** - interfacing a Fortran or C routine

Calling Sequence
~~~~~~~~~~~~~~~~

``[s_1,s_2,...,s_lhs]=user(e_1,e_2,...,e_rhs)  ``

Description
~~~~~~~~~~~

With this command it is possible to use an external program as a Scilab
command where ``         (s_1,s_2,...,s_lhs)       `` are the output
variables and ``         (e_1,e_2,...,e_rhs)       `` are the input
variables. To insert this command in Scilab one has to write a few lines
in the ``         user       `` fortran subroutine of Scilab. See
``         intersci       `` or the Scilab documentation for more
information.

See Also
~~~~~~~~

```           fort         `` <fort.htm>`_,
```           link         `` <../utilities/link.htm>`_,
