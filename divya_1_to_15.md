#<center>Setting the application on the Android</center>

Introduction
============
Devolping an application on **Aakash**, the basic software platform
utilised was Eclipse (Indigo).  The Android Version 2.2 was the
supporting version to devlop and implement an application on
AAKASH. The objective to port the programming languages C, C++,Python
and Scilab needed an interface on android, thus Android application
package file (APK) was devloped on Eclipse and was tested rigorously
to achieve the perfect version.

Setting up the Android Envionment
================================

+ **Android SDK**
	
	* Download the android SDK from the official website
          <http://developer.android.com/sdk/index.html>

+ **Software platform- Eclipse(Indigo)**
	
	* The basic software platform to devlop an application for
          that need to install Eclipse.
	
	* The official website to <http://www.eclipse.org/downloads/>.
The basic command for ubuntu users to check their configured version
is `uname -a`. Type the command on the terminal and check for the
system is 64 or 32 bit.
	
	* The linux users should install the proper version, as their
          is availabilty of two versions 64 and 32 bit.


+ **Installing the Packages in SDK Manager**
	
	* Configure the SDK manager and download tools and packages
          for different Android versions.
	
	* For example the Android 2.2 (froyo), Android 2.3
          (ginerbread), Android 3.0 or 3.1 (honeycomb), Android 4.0
          (ice cream sandwich)

+ **Adding and Configuring the ADT plugin**
	
	* Android offers a custom plugin for the Eclipse IDE, called
          Android Development Tools (ADT). This plugin is designed to
          give you a powerful, integrated environment in which to
          develop Android apps. It extends the capabilites of Eclipse
          to let you quickly set up new Android projects, build an app
          UI, debug your app, and export signed (or unsigned) app
          packages (APKs) for distribution.
	
	
		1. **Setups for configuring** :
			
			_NOTE_ : before starting the ADT plugin process
			(if installing from the internet), apply net
			settings in the Eclipse, select Windows >
			Preferences . On General option , click on
			Network and configure the internet settings.

			2. Start Eclipse, then select Help > Install
			New Software....
			
			2. Click Add, in the top-right corner. 
			
			2. In the Add Repository dialog that appears,
			enter "ADT Plugin" for the Name and the
			following URL for the location
			<https://dl-ssl.google.com/android/eclipse/>
			
			2. Click OK. _Note_, If you have trouble
			acquiring the plugin, try using 'http' in the
			Location URL, instead of 'https' (https is
			preferred for security reasons).
			
			2. In the Available Software dialog, select
			the checkbox next to Developer Tools and click
			Next.
			
			2. In the next window, you'll see a list of
			the tools to be downloaded. Click Next.
			
			2. Read and accept the license agreements,
			then click Finish.
			
			2. When the installation completes, restart
			Eclipse.

+ **Configure the ADT Plugin**
  
	* After you've installed ADT and restarted Eclipse, you must
          specify the location of your Android SDK directory.

	* Select Window > Preferences... to open the Preferences panel
          (on Mac OS X, select Eclipse > Preferences).

	* Select Android from the left panel.

	* For the SDK Location in the main panel, click Browse... and
          locate your downloaded Android SDK directory (such as
          android-sdk-windows).

	* Click Apply, then OK.

+ **Create new AVD**
	
	* Create a new avd in AVD manager and mention proper memory
          size of the SDcard and launch the emulator.

+ **Create your new project**
	
	* The android environment is set , create new projects and
          enjoy the android versions.


Developing the APK for the Porting of the Programming Languages
===============================================================

* The project was entiltled as __Aakash Programming Lab (APL)__

* The package name : **com.aakash.lab**

* In the android project mainly the editing part was in
layout,Activity(java class) and in AndroidManifest.xml

    1. **Designing the Layout for the application**

        * The layout of the android APK consists of three xml files
		namely as `main.xml, main1.xml, and main2`.

        * `main.xml` contains the features for the first screen that
		displays the four main icons of the programming languages
		**C, C++, Python and Scilab**, besides the main heading **Aakash
		Programming Lab (APL)**.

        * The icons were padded properly to fit according to tablet
		screen size and resolution

        * The icons were polished and scaled for glossy display of the
		application on the tablet screen.

        * In order to display the web page of the each programming language
		main1.xml was created.

        * The webview feature was added in the xml file, which will be utilised
		by the each webpage of programming language to display the its key
		features and functionality.

        CODE AND 2nd SCREENSHOT
				
		* In order to display the web page for Help and About
		main2.xml was created.
		
		* The webview feature and Button was added in the xml file,
		the webview for webpage of help and options , and a close
		button to take back the user back to the previous state.
		
		CODE
		
		
    2. **The APL activity**
        
		* The main activity was entiltled as APL Activity.

        * The activity contains the essential and required import like
		
		CODE
		
        * The activity intializes all the essential parameters and
        variables.
		  
		CODE
		
		* Synchronises the four subclasses created mainly for C, C++,
		Python and Scilab.
		
		CODE
		
        * Contains the code for user to quit and switch to another
		programming language. 
		
		CODE
		
		
    3. **The Sub Classes**		
	
	    * _c.java_
		
            * The sub class for programming language C.
			* The subclass contains the essential and required import
			like
            
			CODE
			
			* Webview feature implementation- the java script is
			enabled,
			* the scrollbars are disabled to avoid the screen shift,
			* the cache problem is resolved,
			* the pop ups in the webview are enabled to take the
              arguments.
			
			CODE
			
            * Menu implementation for options like _Save_, _Open_ and
			_Example_, _Help_ and _About_.
	
	        CODE
			
			* Save feature to save the code in sdcard.
			
			CODE
			
            * Open feature to display the list of files saved in
			sdcard and display the file in codemirror of the webpage
			using javascript.
			
			CODE
			
			* Examples for the demo part was also added in the simlar
			fashion as open was implemented .
			
			* For implementing the Help and Options , two new sub
			classes were created namely **help.class** and **options.class**
			which are explained in detail after sci.class.
			
			* Similar process was repeated in **cpp.java** for C++ and in
			**py.java** for Python creating the web view, implementing the
			menu and additional features like Open, Save, Example,
			Help and About to increase the functionality of the
			programming language so ported on the tablet.

        * _sci.java_
		
		    * In Scilab along with the output, the garpical output
            (plot) is also displayed , so additional feature like Save
            Figure was implemented.
			
			CODE
			
		* _help.java_
		
		    * Help is implemented to provide the guidance to the user.
            To enrich this feature a new sub class is created and
            whenevr the user opts for Help in menu, it directs him to
            the new webview that displays the contents of help.html.
			
			CODE
			
        * _options.java_
		
		    * To make the user compatible with different layout, icons
		    and their functionality, the options was added in the
		    menu.
			
			* Whenever the user opts for the options in menu, the
		    class directs the user to new screen displaying the
		    required important content.
	
	        CODE
			
    4. **The Android Manifest.xml**			
	
	    * The most important part for a project to execute, lies in
	    its manifest.xml file.
		* The manifest contains the permission for the webview
	    enability, for the webview feature.
		* The permission to read and write from the External Source,
	    handling the sdcard.

        CODE
		
		* The application intilaization and icon and its label
          information.
		  
        CODE
		
		* The main activity APL and its sub classes
        intilaization,name, label and name information.
		
		CODE
		
		

----



#<center>Shell in a box version</center>

Need of another version
=======================

* The previous version so implemented was incapable to take input from
the user hence a robust version need to develop to make the
application more interactive with user, giving the user a chance to
code and enhance further the concepts and deepen its roots in the
programming language.
	
## Developing the APK for the next version for the Porting of the Programming Languages

* The  project was entiltled as **Aakash Programming Lab (APL)**
* The package name : **com.aakash.lab**

## Designing the Layout for the application

* The layout of the android APK consists of four xml files namely as
`main.xml, main1.xml, main2.xml, main3.xml`.
	
### Xml files

* `main.xml` contains the features for the first screen that displays
the four main icons of the programming languages **C, C++, Python**
and Scilab, besides the main heading **Aakash Programming Lab (APL)**.
* In order to display the web page of the each programming language
`main1.xml` was created.
* The webview feature was added in the xml file, which will be
utilised by the each webpage of programming language to display the
its key features and functionality.
	
CODE and SCREENSHOT

* To display the graphical output of the scilab on a two column web
page format, we need an image view and close button thus the layout
was sketched at  `main3.xml`.

CODE

* In order to display the web page for Help and About `main3.xml` was
created. The webview feature and Button was added in the xml file, the
webview for webpage of help and options , and a close button to take
back the user back to the previous state.

CODE


## The APL activity

* The main activity was entiltled as APL Activity.
* The activity contains the essential and required import like,

CODE

* The activity intializes all the essential parameters and variables.

CODE

* Synchronises the four subclasses created mainly for C, C++, Python
and Scilab.

CODE

* Contains the code for user to quit and switch to another programming
  language.
  
CODE

## The Sub Classes

1. _c.java_
	
    * The sub class for programming language C.
	* The subclass contains the essential and required import.
	* Webview feature implementation-
	* The java script is enabled,
	* The scrollbars are disabled to avoid the screen shift, 
	* The cache problem is resolved,
	* The pop ups in the webview are enabled to take the arguments.
	* The feature to focus the both web pages, links
	simultaneously was also added
	* Two web views are implemented, one for code mirror and
	another for shell in a box .
	* For the first web view
		
	CODE
		
    * For the second web view 
		
	CODE
		
    * Menu implementation for options like Save, Open and Example,
    Help and About .
		
	CODE
		
		
