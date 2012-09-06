


getlookandfeel
==============

gets the current default look and feel.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    lnf=getlookandfeel()




Arguments
~~~~~~~~~

:lnf a string with current look and feel.
: :bok a boolean.
:



Description
~~~~~~~~~~~

Gets the current default look and feel.



Examples
~~~~~~~~


::

    currentlnf = getlookandfeel();
    
    // Look and feel CDE/Motif
    `setlookandfeel`_("com.sun.java.swing.plaf.motif.MotifLookAndFeel")
    
    `sleep`_(3000);
    
    // Look and feel métal
    `setlookandfeel`_("javax.swing.plaf.metal.MetalLookAndFeel")
    
    `sleep`_(3000);
    
    `setlookandfeel`_(currentlnf)




See Also
~~~~~~~~


+ `getinstalledlookandfeels`_ returns a string matrix with all Look
  and Feels.
+ `setlookandfeel`_ sets the current default look and feel.


.. _setlookandfeel: setlookandfeel.html
.. _getinstalledlookandfeels: getinstalledlookandfeels.html


