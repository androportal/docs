


usecanvas
=========

Get/Set the main component used for Scilab graphics.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [canvasused] = usecanvas([usecanvasfordisplay]);




Arguments
~~~~~~~~~

:canvasused Boolean:

    + `%T` if a "GLCanvas" is used for graphics display (Mixing uicontrols
      and graphics **not available**).
    + `%F` if a "GLJPanel" is used for graphics display (Mixing uicontrols
      and graphics available).

: :usecanvasfordisplay Boolean:

    + `%T` to use a "GLCanvas" for graphics display (Mixing uicontrols and
      graphics **not available**).
    + `%F` to use a "GLJPanel" for graphics display (Mixing uicontrols and
      graphics available).

:



Description
~~~~~~~~~~~

Scilab uses a "GLJPanel" (a Swing OpenGL component) to display
graphics (plot3d, plot, ...). This component uses some high level
OpenGL primitives which are not correctly supported on some platforms
(depending on the operating system, video cards, drivers ...)

"GLCanvas" (AWT + OpenGL) is an alternative component provided by the
Java Framework. Scilab can use it to render graphics. **However, using
this component disables some capabilities such as mixing plots and
uicontrols (see demo GUI/UIcontrol2). That is why it is not the
default behavior.**

In some particular cases, the use of the "GLCanvas" component is
forced when Scilab starts (a warning message is displayed when a
graphics function is used for the first time), here is a list of these
cases:
**Operating System** **Video Card** **Details** 64-bits Windows All
When Scilab is used in a remote session. Linux NVIDIA Card With free
drivers. ATI Card With free drivers or ATI-drivers with version <
8.52.3 (Installer version < 8.8 / OpenGL version < 2.1.7873). INTEL
Card With Direct Rendering activated.
You can also dynamically activate this component through Scilab using
`usecanvas`:


+ `usecanvas(%T)` will use "GLCanvas" for plot rendering.
+ `usecanvas(%F)` will use "GLJPanel" for plot rendering. If your
  configuration is known as a one having problems with "GLJPanel" (See
  table above), a warning message will be displayed.


If you believe your configuration is able to use the "GLJPanel" and
Scilab automatically forces the use of "GLCanvas", you can test your
configuration by swithing to "GLJPanel" ( `usecanvas(%F)`) and try to
plot something ( `plot3d()` for example). If Scilab graphics work,
please inform us about it by sending an email to
`scilab.support@scilab.org` and giving us your Operating System/Video
Card/Video Card driver version: this will help us to improve future
versions of Scilab.



Workaround
~~~~~~~~~~

This code fixes most of the potential issues related to graphic cards
issues. Please note that decreases the performances.

::

    `system_setproperty`_("jogl.gljpanel.nohw","");





Technical Aspects
~~~~~~~~~~~~~~~~~

Since version 5.0, Scilab is doing an advanced use of JOGL (the Java
Binding for the OpenGL), which is using the Java2D OpenGL Pipeline.
For performance reasons, we use the Java2D OpenGL Pipeline. From a
more technical aspect, it uses the internal buffer of the graphic
cards called `pbuffer`.

Problems may occur when the driver of the graphic card does not
support properly this approach. As far as we know, there is no free
driver under Linux handling this feature. In the proprietary world,
the situation is as follows:


+ `NVIDIA`: Nvidia provides the appropriate proprietary drivers.
  Scilab's graphics work without any problem with most NVIDIA drivers.
+ `ATI`: From the driver version 8.8, most ATI graphics supports the
  pbuffer under Linux.
+ `Intel`: This is the big drawback of using the pbuffer. There is
  currently no support of pbuffer by any official Intel drivers under
  Linux.


There is a workaround for Linux to tackle this issue, but a solution
is to use a software accelerated driver. To do it, in
`/etc/X11/xorg.conf`, look for the Section "Device" and change the
option Driver to vesa :


::

    Section "Device"
            Identifier      "Your Graphic card"
            Driver  "vesa"
    [...]
    EndSection


Unfortunately, this solution makes Scilab pretty slow.

Under Windows, video cards manufacturers update regularly and
`pbuffers` are managed. Please download recent drivers at:


+ For `ATI cards`: `http://ati.amd.com/support/driver.html`_
+ For `Intel cards`: `http://www.intel.com/support/graphics/`_
+ For `Matrox cards`:
  `http://www.matrox.com/graphics/en/support/drivers/`_
+ For `NVIDIA cards`:
  `http://www.nvidia.com/content/drivers/drivers.asp`_
+ For `S3 cards`:
  `http://www.s3graphics.com/en/resources/drivers/index.jsp`_
+ For `SiS cards`: `http://www.sis.com/download/`_
+ For `VIA cards`: `http://www.viaarena.com/default.aspx?PageID=2`_


Some troubles can also occur when using Windows 2000 (video drivers
are no more updated and no more supported).

In the cases where pBuffer create a problem, waiting for a working
`pbuffer` is not a solution indeed: ` The OpenGL community is moving
away from pbuffers and toward the frame buffer object extension, which
is a more portable and higher-performance solution for offscreen
rendering than pbuffers. `_ .The JOGL team is working to fix this
issue.

For more information about this problem, please refer to:


+ `JoGL` bug database: `Bug #366`_
+ `Scilab` bug database: `Bug #3525`_
+ `Debian` bug database: `Bug #501799`_
+ `Freedesktop` bug database: `Bug #17603`_




Examples
~~~~~~~~


::

    // Example using GLJPanel (Mixing uicontrols and graphics is available)
    usecanvas(%F);
    `plot2d`_();
    `uicontrol`_("String", "Close the window", "Position", [10 10 100, 25], "Callback", "delete(gcf())");
    `messagebox`_("You can see the button on the figure.", "Usecanvas example", "info");
    
    // Example using GLCanvas (Mixing uicontrols and graphics is not available, uicontrols are not visible)
    usecanvas(%T);
    `plot2d`_();
    `uicontrol`_("String", "Close the window", "Position", [10 10 100, 25], "Callback", "delete(gcf())");
    `messagebox`_("You can''t see any button on the figure.", "Usecanvas example", "info");


.. _http://www.nvidia.com/content/drivers/drivers.asp: http://www.nvidia.com/content/drivers/drivers.asp
.. _The OpenGL community is moving away from pbuffers and toward the frame buffer object extension, which is a more portable and higher-performance solution for offscreen rendering than pbuffers.: https://jogl.dev.java.net/issues/show_bug.cgi?id=163
.. _http://ati.amd.com/support/driver.html: http://ati.amd.com/support/driver.html
.. _Bug #366: https://jogl.dev.java.net/issues/show_bug.cgi?id=366
.. _Bug #3525: http://bugzilla.scilab.org/show_bug.cgi?id=3525
.. _http://www.matrox.com/graphics/en/support/drivers/: http://www.matrox.com/graphics/en/support/drivers/
.. _http://www.intel.com/support/graphics/: http://www.intel.com/support/graphics/
.. _Bug #17603: https://bugs.freedesktop.org/show_bug.cgi?id=17603
.. _http://www.s3graphics.com/en/resources/drivers/index.jsp: http://www.s3graphics.com/en/resources/drivers/index.jsp
.. _http://www.viaarena.com/default.aspx?PageID=2: http://www.viaarena.com/default.aspx?PageID=2
.. _Bug #501799: http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=501799
.. _http://www.sis.com/download/: http://www.sis.com/download/


