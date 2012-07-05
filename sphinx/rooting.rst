====
Rooting the device
====

``init.rc`` and ``default.prop``
====

The 'chroot' environment exist in the directory called ``linux`` which
is in the directory ``/data/local/`` of the device. The first step is
to make the path ``/data/local/`` writable, for this purpose the
script makes backup of file ``default.prop`` from the devices to the
working directory of host system and pushes a modified version of
``default.prop`` in ``/`` of the device. The device needs a reboot for
the changes to take effect.

The second step is to copy a tarball ``linux.tar.gz`` to the same
location ``/data/local/`` of the device and untar it. The script also
copies a binary `tar` file which does the work of extracting a
tarball. Once this is done, we have an ``chroot`` environment
ready. The hierarchy of ``/data/local/linux/`` is same as any other
GNU/Linux distribution, but completely inactive with 'no' web-server
and graphical support.

The mounting of file-systems such as ``/proc``, ``/sys`` and
``/dev/pts/`` is done by another bash script ``aakash.sh`` which also
takes care of initiating a webserver every time the device is turned
ON. ``aakash.sh`` also sets an display environment by initiating an
virtual framebuffer environment using ``Xvfb``. ``aakash.sh`` script
is called by Android's ``init.rc`` file at boot time.

- below lines in ``init.rc`` calls ``aakash.sh``

::
   
   service myscript /data/local/aakash.sh
        oneshot


Once all the files and directories are in place, ``install.sh`` script
does the work of cleanup. This will remove all temporary file created
at the time of installation and lock the device back by updating the
original ``default.prop``.
