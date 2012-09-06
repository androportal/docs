


system_getproperty
==================

gets the system property indicated by a specified key.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res=system_getproperty(key)




Arguments
~~~~~~~~~

:res a string value
: :key a string
:



Description
~~~~~~~~~~~

gets the system property indicated by a specified key.
java.version Java Runtime Environment version java.vendor Java Runtime
Environment vendor java.vendor.url Java vendor URL java.home Java
installation directory java.vm.specification.version Java Virtual
Machine specification version java.vm.specification.vendor Java
Virtual Machine specification vendor java.vm.specification.name Java
Virtual Machine specification name java.vm.version Java Virtual
Machine implementation version java.vm.vendor Java Virtual Machine
implementation vendor java.vm.name Java Virtual Machine implementation
name java.specification.version Java Runtime Environment specification
version java.specification.vendor Java Runtime Environment
specification vendor java.specification.name Java Runtime Environment
specification name java.class.version Java class format version number
java.class.path Java class path java.library.path List of paths to
search when loading libraries java.io.tmpdir Default temp file path
java.compiler Name of JIT compiler to use java.ext.dirs Path of
extension directory or directories os.name Operating system name
os.arch Operating system architecture os.version Operating system
version file.separator File separator ("/" on UNIX) path.separator
Path separator (":" on UNIX) line.separator Line separator ("\n" on
UNIX) user.name User's account name user.home User's home directory
user.dir User's current working directory


Examples
~~~~~~~~


::

    system_getproperty('awt.toolkit')
    system_getproperty('file.encoding')
    system_getproperty('file.encoding.pkg')
    system_getproperty('java.awt.graphicsenv=sun.awt.Win32GraphicsEnvironment')
    system_getproperty('java.awt.printerjob=sun.awt.windows.WPrinterJob')
    system_getproperty('java.class.path')
    system_getproperty('java.class.version')
    system_getproperty('java.endorsed.dirs')
    system_getproperty('java.ext.dirs')
    system_getproperty('java.home')
    system_getproperty('java.io.tmpdir')
    system_getproperty('java.library.path')
    system_getproperty('java.runtime.name')
    system_getproperty('java.runtime.version')
    system_getproperty('java.specification.name')
    system_getproperty('java.specification.vendor')
    system_getproperty('java.specification.version')
    system_getproperty('java.vendor')
    system_getproperty('java.vendor.url')
    system_getproperty('java.vendor.url.bug')
    system_getproperty('java.version')
    system_getproperty('java.vm.info')
    system_getproperty('java.vm.name')
    system_getproperty('java.vm.specification.name')
    system_getproperty('java.vm.specification.vendor')
    system_getproperty('java.vm.specification.version')
    system_getproperty('java.vm.vendor')
    system_getproperty('java.vm.version')
    system_getproperty('line.separator')
    system_getproperty('os.arch')
    system_getproperty('os.name')
    system_getproperty('os.version')
    system_getproperty('path.separator')
    system_getproperty('sun.arch.data.model')
    system_getproperty('sun.boot.class.path')
    system_getproperty('sun.boot.library.path')
    system_getproperty('sun.cpu.endian')
    system_getproperty('sun.cpu.isalist')
    system_getproperty('sun.desktop')
    system_getproperty('sun.io.unicode.encoding')
    system_getproperty('sun.jnu.encoding')
    system_getproperty('sun.management.compiler')
    system_getproperty('sun.os.patch.level')
    system_getproperty('user.country')
    system_getproperty('user.dir')
    system_getproperty('user.home')
    system_getproperty('user.language')
    system_getproperty('user.name')
    system_getproperty('user.timezone')
    system_getproperty('user.variant')




