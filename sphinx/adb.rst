====
ADB Installation and ADB commands
====


Introduction
============

* ADB installation via linux terminal makes it ease to push or pull
  files in the android environment or basically the sdcard.
* The content of the sdcard can easily be accessed from the terminal,
  and huge files and foldes can be easily and speedy pushed or pulled
  from the sdcard.
* ADB installation via linux terminal brings the power to execute the
  adb commands like ``adb connect``, ``adb devices``, ``adb install``,
  ``adb uninstall``, ``adb push`` and ``adb pull``
* The adb commands via linux terminal is useful while communicating
  with the real time android tablets or phones, and adding varied
  features to make the android application more innovative.


Installation of the ADB in the android sdk manager	
===================================================

* In the terminal direct to the android-linux-sdk path.

::
   
   cd home/android-sdk-linux/
	
* Enter the tools folder in android sdk linux
* Export the path of tools to ``~/bashrc`` file

::

   echo "export PATH=/home/android-sdk-linux/tools:$PATH" >> ~/.bashrc 

* In case we can also export the path of android tools by editing the
  ``bashrc`` file
* Open the ``.bashrc`` by `vim` or by `gedit`.
* At the end of bashrc script end the export line (basically after ``fi``
  command in ``.bashrc``)

::

   export PATH=:/home/android-sdk-linux/tools:$PATH 
	
* Similar operation has to be performed for the platform tools folder
  in the android to export its path.
* Direct to the platform-tools in ath android-sdk-linux
* Export the path of platform-tools to ``.bashrc``

::

   echo "export PATH=/home/android-sdk-linux/platform-tools:$PATH">> ~/.bashrc 

* In case we can also export the path of android platform-tools by
  editing the bashrc

* Open the ``.bashrc`` by `vim` or by `gedit`

* At the end of `.bashrc` script end the export line (basically after
  ``fi`` command in ``.bashrc``)

::

   export PATH=:/home/android-sdk-linux/platform-tools:$PATH 	

* In case we can also export the path of android tools by editing the
  ``.bashrc``

* Open the .bashrc by vi or by gedit

* At the end of bashrc script end the export line (basically after ``fi``
  command in ``.bashrc``)

::

   export PATH=:/home/android-sdk-linux/platform-tools:$PATH 

* Connect to the real devices by ``adb connect``, in case of the
  virtual machine(emulator) launch the emulator by the ``avd``
  manager.

* Check for the Devices by the ``adb devices``, shows you the list of
  the devices your machine is connected to.

ADB Commands
============

**adb connect <device-ip-address>**

* This adb command connects you the devices , to execute the command
  the ip address of the device is required. The device and the machine
  must be in the same network. The device an be acccessed through
  wireless by giving either a static or dynamic ip address.

Example::

  adb connect 10.101.201.130	
   
**adb devices** 

* This adb command shows the current devices connect to the system or
  the machine. Example:

::

   adb devices

**adb push**

* This adb command allows the user to push the files, folders,
  documents to the android filesystem and sdcard. The example shows
  the pushing of the simple text file into mydir folder in the sdcard.

::

   adb push sample.txt /sdcard/mydir/

* In case if the folder does not exists, we can make it by
   
:: 

     adb push sample.txt “/sdcard/mydir/”

**adb pull**

* This adb command allows the user to pull the files, folders,
  documents from the android filesystem and sdcard. The example shows
  the pulling of the simple text file from mydir folder of the sdcard.

::
   
   adb pull /sdcard/mydir/sample.txt /home/Documents/

**adb install**

* This adb command allows the user to install the application to real
  time device (tablet or phone) or from the emulator . Example: to
  install the ``apl.apk`` to the tablet .

::
   
   adb install apl.apk

**adb uninstall**

* This adb command allows the user to uninstall the application from
  the real time device (tablet or phone) or from the
  emulator. 

  Example: to uninstall the ``apl.apk`` to the tablet .

::

   adb uninstall com.aakash.lab

**adb kill-server**

* In case when the connection to the device is not properly
  established. The user can execute the command the ``adb
  kill-server`` and can restart the connection to communicate with the
  device.
		 
::

   adb kill-server



	
