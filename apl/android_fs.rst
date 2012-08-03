====
Android Filesystem
====


how it is different from general GNU/linux
====



Introduction to ``chroot``
====


Aakash Programming Language, APL for short, is a web based front end
to four programming languages C, C++, Python and Scilab. In the
backend, we run a webserver in a ``chroot'd`` environment. The
``chroot`` environment is a custom made GNU/Linux distribution without
any 'Xserver'. Instead of having a 'Xserver' which is high on both CPU
and memory, we use a X virtual framebuffer called ``Xvfb``. ``Xvfb``
is low on both CPU and memory and requires no dedicated display
hardware for graphical display. All display of graphs in APL is done
using ``Xvfb``.

