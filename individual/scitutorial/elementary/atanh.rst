====
"atanh"
====

Scilab Function Last update : April 1993
**atanh** - hyperbolic tangent inverse



Calling Sequence
~~~~~~~~~~~~~~~~

t=atanh(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector/matrix
+ **t** : real or complex vector/matrix




Description
~~~~~~~~~~~

The components of vector **t** are the hyperbolic tangent inverse of
the corresponding entries of vector **x** . Definition domain is
**[-1,1]** for the real function (see Remark).



Remark
~~~~~~

In Scilab (as in some others numerical software) when you try to
evaluate an elementary mathematical function outside its definition
domain in the real case, then the complex extension is used (with a
complex result). The more famous example being the sqrt function (try
**sqrt(-1)** !). This approach have some drawbacks when you evaluate
the function at a singular point which may led to different results
when the point is considered as real or complex. For the **atanh**
this occurs for **-1** and **1** because the at these points the
imaginary part do not converge and so **atanh(1) = +Inf + i NaN**
while **atanh(1) = +Inf** for the real case (as lim x->1- of
atanh(x)). So when you evaluate this function on the vector **[1 2]**
then like **2** is outside the definition domain, the complex
extension is used for all the vector and you get **atanh(1) = +Inf + i
NaN** while you get **atanh(1) = +Inf** with **[1 0.5]** for instance.



Examples
~~~~~~~~


::

    
    
    // example 1
    x=[0,%i,-%i]
    tanh(atanh(x))
    
    // example 2
    x = [-%inf -3 -2 -1 0 1 2 3 %inf]
    ieee(2)
    atanh(tanh(x))
    
    // example 3 (see Remark)
    ieee(2)
    atanh([1 2])
    atanh([1 0.5])
     
      




See Also
~~~~~~~~

` **tanh** `_,` **ieee** `_,

.. _
      : ://./elementary/tanh.htm
.. _
      : ://./elementary/../programming/ieee.htm


