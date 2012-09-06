


ged
===

Scilab Graphic Editor



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ged(action, fignum)




Arguments
~~~~~~~~~

:action Real: action to be executed on graphic window given by
`fignum`:

    + 1: Select window `fignum` as current figure.
    + 2: Redraw window `fignum`.
    + 3: Clear window `fignum`.
    + 4: Ask the user to select a graphic entity to copy.
    + 5: Paste last graphic entity copied using action `4`.
    + 6: Ask the user to select a graphic entity and then move it.
    + 7: Ask the user to select the graphic entity to delete.
    + 8: Start a GUI to edit window properties.
    + 9: Start a GUI to edit current axes properties.
    + 10: Start an entity picker to select a graphic object and edit it
      using Graphic Editor GUI.
    + 11: Stop the entity picker.

: :fignum Real: Graphic window number, the figure to edit.
:



Description
~~~~~~~~~~~

`ged` starts Scilab Graphic Editor on figure number `fignum` and
execute action given by `action`.



Examples
~~~~~~~~


::

    // Moving a curve
    `scf`_(0);
    `plot2d`_();
    ged(6,0) // Then click on a curve and try moving it




