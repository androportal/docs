====
Implementations in Shellinabox to implement horizontal and vertical scrolling and cursor problem.
====


Vertical scroll
====

In ``vt100.js`` file of shellinabox following changes were made

.. code-block:: guess
   :emphasize-lines: 3

      '<div id="keyboard" unselectable="on">' +
      '</div>' +
      '<div id="scrollable" style="height:auto;min-height:350px;">'   +
      '<table id="kbd_button">' +
      '<tr><td width="100%">&nbsp;</td>' +
      '<td><img id="kbd_img" src="keyboard.png" /></td>' +

A line was commented

.. code-block:: guess
   :emphasize-lines: 2

      var partial = height % this.cursorHeight;
      // this.scrollable.style.height = (height > 0 ? height : 0) + 'px';  
      this.padding.style.height    = (partial > 0 ? partial : 0) + 'px';


Horizontal scroll
====

In ``style.css`` following html attribute was added .As webview in
android is having a definite width ,exceeding the html width make's it
scroll horizontally.  

::
  
   html
   {
   width:350%;
   }


Cursor Problem
====

Cursor when viewed in the shellinabox in android 2.2 then it doesn't
appends the last character rather comes 4 characters before .The
problem was solved by editing the scaling factor of cursor and
optimising the value of scale factor so it appears where required.
Following lines were edited in ``vt100.js`` file in
``/shellinabox-2.14/shellinabox/vt100`` directory

.. code-block:: guess
   :emphasize-lines: 1

      this.scale=0.57;  
      if (wasCompressed) {
      this.resizer();
      }


.. code-block:: guess
   :emphasize-lines: 7

    
      this.currentScreen           = 0;
      this.cursorX                 = 0;
      this.cursorY                 = 0;
      this.numScrollbackLines      = 0;
      this.top                     = 0;
      this.bottom                  = 0x7FFFFFFF;
      this.scale                  = 0.57;  
      this.resizer();
      this.focusCursor();
      this.input.focus();


.. code-block:: guess
   :emphasize-lines: 2

      var kbd                        = this.keyboard.firstChild;
      var scale                      = 0.57;  
      var transform                  = this.getTransformName();


