


mtlb_close
==========

Matlab close emulation function



Description
~~~~~~~~~~~

Scilab equivalent for Matlab `close` is different according to the
current figure type (uicontrol or graphic one).


+ When current figure is a uicontrol one: Scilab equivalent for Matlab
  `close` is `close`
+ When current figure is a graphic one: Scilab equivalent for Matlab
  `close` is `xdel` or `delete`
+ In Scilab we do not get an error status.


The function `mtlb_close([h])` is used by `mfile2sci` to replace
`close([h])` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_close` calls:


+ If `h` is a uicontrol figure `mtlb_close(h)` may be replaced by
  `close(h)`
+ If `h` is a graphic figure `mtlb_close(h)` may be replaced by
  `delete(h)`


Caution: `mtlb_close` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `xdel`_ delete a graphics window
+ `delete`_ delete a graphic entity and its children.
+ `winsid`_ return the list of graphics windows
+ `close`_ close a figure


.. _xdel: xdel.html
.. _winsid: winsid.html
.. _delete: delete.html
.. _close: close.html


