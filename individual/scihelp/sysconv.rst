


sysconv
=======

system conversion



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [s1,s2]=sysconv(s1,s2)




Arguments
~~~~~~~~~

:s1,s2 list (linear `syslin` systems)
:



Description
~~~~~~~~~~~

Converts `s1` and `s2` into common representation in order that system
interconnexion operations can be applied. Utility function for
experts. The conversion rules in given in the following table.

:"c" continuous time system
: :"d" discrete time system
: :n sampled system with sampling period n
: :[] system with undefined time domain For mixed systems `s1` and
  `s2` are put in state-space representation.
:


::

    s1\s2 |    "c"     |     "d"     |      n2        |     []     |
    ---------------------------------------------------------------
    "c"   | nothing    |uncompatible | c2e(s1,n2)     |  c(s2)     |
    ---------------------------------------------------------------
    "d"   |uncompatible| nothing     | e(s1,n2)       |  d(s2)     |
    ---------------------------------------------------------------
    n1    | c2e(s2,n1) | e(s2,n1)    | n1<>n2 uncomp  |  e(s2,n1)  |
          |            |             | n1=n2  nothing |            |
    ---------------------------------------------------------------
    []    | c(s1)      | d(s1)       | e(s1,n2)       |  nothing   |
    ---------------------------------------------------------------


With the following meaning:

:n1,n2 sampling period
: :c2e(s,n) the continuous-time system s is transformed into a sampled
  system with sampling period n.
: :c(s) conversion to continuous (time domain is `"c"`)
: :d(s) conversion to discrete (time domain is `"d"`)
: :e(s,n) conversion to samples system with period `n`
:



Examples
~~~~~~~~


::

    s1=`ssrand`_(1,1,2);
    s2=`ss2tf`_(s1);
    [s1,s2]=sysconv(s1,s2);




See Also
~~~~~~~~


+ `syslin`_ linear system definition
+ `ss2tf`_ conversion from state-space to transfer function
+ `tf2ss`_ transfer to state-space


.. _ss2tf: ss2tf.html
.. _tf2ss: tf2ss.html
.. _syslin: syslin.html


