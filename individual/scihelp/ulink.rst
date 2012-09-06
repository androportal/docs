


ulink
=====

unlink a dynamically linked shared object



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ulink(x)
    ulink()




Arguments
~~~~~~~~~

:x a ID returned by `link`
:



Description
~~~~~~~~~~~

see `link`

If you plan to use `valgrind` to profile your module, you must first
set the environment variable `PROFILE_SCILAB_DYNAMIC_LINK` before
starting scilab:


::

    # under bash shell:
    export PROFILE_SCILAB_DYNAMIC_LINK=1
    export SCILAB_VALGRIND_OPT="--db-attach=no --show-below-main=yes  --log-fd=2 --log-file=scilab.txt --num-callers=50 -v --trace-redir=yes --read-var-info=yes --trace-children=yes --show-reachable=yes --smc-check=all --child-silent-after-fork=no --leak-check=full --track-origins=yes"
    scilab -nwni -`profile`_


This environment variable force Scilab not to release the loaded
dynamic libraries. This will allow `valgrind` to perform its sum-up
analysis.



See Also
~~~~~~~~


+ `link`_ dynamic linker


.. _link: link.html


