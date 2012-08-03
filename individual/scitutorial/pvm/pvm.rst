====
"pvm"
====

Scilab description Last update : Jan 1998
**pvm** - communications with other applications using Parallel
Virutal Machine



Description
~~~~~~~~~~~

is a software system that enables a collection of heterogeneous
computers to be used as a coherent and flexible concurrent
computational resource.

The individual computers may be shared- or local-memory
multiprocessors, vector supercomputers, specialized graphics engines,
or scalar workstations, that may be interconnected by a variety of
networks, such as ethernet, FDDI.

Daemon programs ( **pvmd3** ) provide communication and process
control between computers (see PVM manpage and manual for more
details).

Most important functions of the PVM communication library are included
in Scilab.



Warning
~~~~~~~

PVM must be installed in your envriromnent before using it in Scilab.
PVM scilab have been developped using the version 3.3.7 of the PVM
library.



See Also
~~~~~~~~

` **pvm_barrier** `_,` **pvm_mytid** `_,` **pvm_bcast** `_,`
**pvm_parent** `_,` **pvm_config** `_,` **pvm_delhosts** `_,`
**pvm_recv** `_,` **pvm_exit** `_,` **pvm_send** `_,` **pvm_getinst**
`_,` **pvm_spawn** `_,` **pvm_gettid** `_,` **pvm_spawn_independent**
`_,` **pvm_gsize** `_,` **pvm_tasks** `_,` **pvm_joingroup** `_,`
**pvm_tidtohost** `_,` **pvm_kill** `_,` **pvm_lvgroup** `_,`
**pvm_start** `_,` **pvm_halt** `_,



Author
~~~~~~

PVM have been developped by A. L. Beguelin, J. J. Dongarra, G. A.
Geist, W. C. Jiang, R. J. Manchek, B. K. Moore, V. S. Sunderam (see
http://www.netlib.org/pvm3)

.. _
      : ://./pvm/pvm_tidtohost.htm
.. _
      : ://./pvm/pvm_joingroup.htm
.. _
      : ://./pvm/pvm_lvgroup.htm
.. _
      : ://./pvm/pvm_delhosts.htm
.. _
      : ://./pvm/pvm_mytid.htm
.. _
      : ://./pvm/pvm_recv.htm
.. _
      : ://./pvm/pvm_config.htm
.. _
      : ://./pvm/pvm_barrier.htm
.. _
      : ://./pvm/pvm_tasks.htm
.. _
      : ://./pvm/pvm_spawn_independent.htm
.. _
      : ://./pvm/pvm_halt.htm
.. _
      : ://./pvm/pvm_spawn.htm
.. _
      : ://./pvm/pvm_parent.htm
.. _
      : ://./pvm/pvm_getinst.htm
.. _
      : ://./pvm/pvm_send.htm
.. _
      : ://./pvm/pvm_gettid.htm
.. _
      : ://./pvm/pvm_bcast.htm
.. _
      : ://./pvm/pvm_start.htm
.. _
      : ://./pvm/pvm_exit.htm
.. _
      : ://./pvm/pvm_kill.htm
.. _
      : ://./pvm/pvm_gsize.htm


