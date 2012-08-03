====
Installing Aakash Programming Lab
====

Prerequisite
====

* This installtion procedure only works on `GNU/Linux` based systems
* Make sure your device is connected to Wi-Fi network
* Note down the device's IP-address
* The best case would be to give a static IP-address to the device
* Select the Wi-Fi sleep policy to *Never*
* Screen timeout to **30 minutes**

Select the Wi-Fi sleep policy to *Never*:
====

Goto **Wireless & networks**, 

.. image:: images/display.png
   :alt: display
   :align: center

from the option menu(next to ``back`` button in the status bar), select **Advanced**

.. image:: images/advance.png
   :alt: advanced
   :align: center

select **Wi-Fi sleep policy** from the menu, and press **Never**

.. image:: images/never.png
   :alt: never
   :align: center

Screen timeout to **30 minutes**
====

Goto **Display**, 

.. image:: images/display.png
   :alt: display
   :align: center

in the *Display Settings* menu, select **Screen timeout**

.. image:: images/screen-timeout.png
   :alt: screen-timeout
   :align: center

and press option **30 minutes**

.. image:: images/30min.png
   :alt: 30min
   :align: center


Extraction the tarball and installation using ubuntu linux 
====

 
* Open the terminal and visit the directory where you have saved the
  tarball file and type the command below to extract the content

::
   
   tar -xvzf linux.tar.gz

this will extract the directory called ``stable``

* now change the directory to ``stable``

::

   cd stable 

* make sure atleast following file are present in the directory (using
  ``ls -l`` command)


  - ``install.sh``
  - ``default.prop``
  - ``aakash.sh``
  - ``init.rc``
  - ``linux.tar.gz``
  - ``tar``
  - ``MD5CHECK``
  - ``APL_v2.apk`` 


* and type the following command,

::
   
   bash install.sh <IP-address-of-aakash>

for example

::

   bash install.sh 10.101.152.13


.. image:: images/cmd_install.png
   :alt: installing using command line
   :align: center	 


* This command will begin installation of **Aakash Programming Lab**,
  please follow the instruction which appear on the terminal
