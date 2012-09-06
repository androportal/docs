


.^ (Matlab operator)
====================

Elementwise exponent



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    .^



::

    .^




Particular cases
~~~~~~~~~~~~~~~~

Note that Matlab seems to have a bug when exposant is a character.

WARNING: Expressions like **X.^.23** are interpreted in Matlab as
**X** to the power of **0.23** while Scilab executes **X**
elementwisely powered to **23**, to have the same result, insert a
blank between ^ and **.23**.



