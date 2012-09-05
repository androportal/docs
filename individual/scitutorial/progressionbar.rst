


progressionbar
==============

Draw a progression bar



Calling Sequence
~~~~~~~~~~~~~~~~


::

    winId=progressionbar(mes)
    progressionbar(winId[,mes])




Arguments
~~~~~~~~~

:mes string, message to display.
: :winId integer greater than 0, window identificator.
:



Description
~~~~~~~~~~~

`progressionbar(mes)` create a new progression bar, return window
identificator.

`progressionbar(winId[,mes])` update the progression bar identificated
as winId.



Examples
~~~~~~~~


::

    winId=progressionbar('Do something');
    `realtimeinit`_(0.3);
    for j=0:0.1:1,
      `realtime`_(3*j);
      progressionbar(winId);
    end
    `winclose`_(winId);




