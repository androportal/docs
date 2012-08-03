====
"parrot"
====

Scilab Function Last update : April 1993
**parrot** - Parrot's problem



Calling Sequence
~~~~~~~~~~~~~~~~

K=parrot(D,r)




Parameters
~~~~~~~~~~


+ **D,K** : matrices
+ **r** : 1X2 vector (dimension of the 2,2 part of **D** )




Description
~~~~~~~~~~~

Given a matrix **D** partionned as **[D11 D12; D21 D22]** where
**size(D22)=r=[r1,r2]** compute a matrix **K** such that largest
singular value of **[D11 D12; D21 D22+K]** is minimal (Parrot's
problem)



See Also
~~~~~~~~

` **h_inf_st** `_,

.. _
      : ://./robust/h_inf_st.htm


