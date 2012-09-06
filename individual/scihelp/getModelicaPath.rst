


getModelicaPath
===============

Get the Modelica directory path needed by Xcos diagram containing
Modelica blocks



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [modelica_path, modelica_directory] = getModelicaPath()




Description
~~~~~~~~~~~

This function is used to know where are the Modelica files used to
define Xcos Modelica blocks.

If the user wants to define his own Modelica blocks, Modelica files
describing the blocks must be indicated. The variable
%MODELICA_USER_LIBS has to be declared before launching xcos.



Arguments
~~~~~~~~~


+ **modelica_path:** a string providing the absolute path of the
  Modelica directory containing the defining blocks Modelica files.
+ **modelica_directory:** a string providing the name of the Modelica
  directory where are created the files needed for the simulation.




Example
~~~~~~~


::

    //Get the modelica path and directory
    [modelica_path, modelica_directory] = getModelicaPath()
    
    // To define user's Modelica blocks
    // path of the directory containing the user's Modelica files
    %MODELICA_USER_LIBS = SCI + "/modules/xcos/modelica_library";
    
    // launch xcos
    `xcos`_();
    // load the diagram with Modelica blocks
    
    [modelica_path, modelica_directory] = getModelicaPath()
    
    // To define user's Modelica blocks
    // paths of the directory containing the user's Modelica files
    %MODELICA_USER_LIBS = [%MODELICA_USER_LIBS , SCI + "/modules/xcos/my_modelica_blocks/Electrical_network"];
    
    // launch xcos
    `xcos`_();
    // load the diagram with Modelica blocks
    
    [modelica_path, modelica_directory] = getModelicaPath()




