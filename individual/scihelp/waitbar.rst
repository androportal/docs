


waitbar
=======

Draw a waitbar



Calling Sequence
~~~~~~~~~~~~~~~~


::

    winH=waitbar(x)
    winH=waitbar(x,mes)
    winH=waitbar(mes)
    waitbar(x,winH)
    waitbar(mes,winH)
    waitbar(x,mes,winH)




Arguments
~~~~~~~~~

:x real, fraction to display.
: :mes string, message to display.
: :winH Handle of the waitbar.
:



Description
~~~~~~~~~~~

`waitbar(x)` create a new waitbar displaying a fraction x, return
handle of the waitbar.

`waitbar(x,mes)` create a new waitbar displaying a fraction x and
message mes, return handle of the waitbar.

`waitbar(mes)` create a new waitbar displaying a fraction 0 and
message mes, return handle of the waitbar.

`waitbar(x,mes)` create a new waitbar displaying a fraction 0 and
message mes, return handle of the waitbar.

`waitbar(x,winH)`, `waitbar(mes,winH)` and `waitbar(x,mes,winH)`
update waitbar with handle `winH`.



Examples
~~~~~~~~


::

    winH=waitbar('This is an example');
    `realtimeinit`_(0.3);
    for j=0:0.1:1,
      `realtime`_(3*j);
      waitbar(j,winH);
    end
    `winclose`_(winH);




