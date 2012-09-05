


wfir_gui
========

Graphical user interface that can be used to interactively design wfir
filters



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [ftype,forder,cfreq,wtype,fpar] = wfir_gui()




Parameters
~~~~~~~~~~

:ftype a string: the selected filter type.
: :forder a scalar with positive integer value: the selected filter
  order
: :cfreq a 2 vector: the cut-off frequencies in normalized frequencies
: :wtype a string: the selected window type.
: :fpar 2-vector of window parameters.
:



Description
~~~~~~~~~~~

This function proposes a graphical user interface to allow user
interactively select the design parameteres of windowed finite impluse
response filters (see `wfir`_). It is called by `wfir` when no input
arguments are given.



If requested, the frequency response of the filter is automatically
updated according to the parameters set in the dialog window:





See Also
~~~~~~~~


+ `wfir`_




Used Functions
~~~~~~~~~~~~~~

Based on `uicontrol`_ functions.



History
~~~~~~~
Version Description 5.4.0 Function wfir_gui is redesigned from scratch
to provide a better user experience.
.. _uicontrol: uicontrol.html
.. _wfir: wfir.html


