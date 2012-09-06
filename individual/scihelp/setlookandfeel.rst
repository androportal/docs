


setlookandfeel
==============

sets the current default look and feel.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    bok=setlookandfeel()
    bok=setlookandfeel(lnf)




Arguments
~~~~~~~~~

:lnf a string with a look and feel.
: :bok a boolean.
:



Description
~~~~~~~~~~~

Sets the current default Look and Feel.

setlookandfeel() without parameter set system default look and feel.



Examples
~~~~~~~~


::

    currentlnf = `getlookandfeel`_();
    
    // Look and feel Windows Classic
    setlookandfeel("com.sun.java.swing.plaf.windows.WindowsClassicLookAndFeel")
    
    // Look and feel Windows
    setlookandfeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel")
    
    `sleep`_(3000);
    
    // Look and feel CDE/Motif
    setlookandfeel("com.sun.java.swing.plaf.motif.MotifLookAndFeel")
    
    `sleep`_(3000);
    
    // Look and feel GTK+
    setlookandfeel("com.sun.java.swing.plaf.gtk.GTKLookAndFeel")
    
    `sleep`_(3000);
    
    // Look and feel métal
    setlookandfeel("javax.swing.plaf.metal.MetalLookAndFeel")
    
    `sleep`_(3000);
    
    // Look and feel Macintosh
    setlookandfeel("it.unitn.ing.swing.plaf.macos.MacOSLookAndFeel")
    
    // System default look and feel
    
    setlookandfeel()
    
    `sleep`_(3000);
    
    // restore previous look and feel
    setlookandfeel(currentlnf)




See Also
~~~~~~~~


+ `getinstalledlookandfeels`_ returns a string matrix with all Look
  and Feels.
+ `getlookandfeel`_ gets the current default look and feel.


.. _getinstalledlookandfeels: getinstalledlookandfeels.html
.. _getlookandfeel: getlookandfeel.html


