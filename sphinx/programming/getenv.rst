Scilab Function

Last update : April 1994

**getenv** - get the value of an environment variable

Calling Sequence
~~~~~~~~~~~~~~~~

``env=getenv(str [, rep] )  ``

Parameters
~~~~~~~~~~

-  ``           str         ``: character string specifying environment
   variable name rep : an optional character string. When this optional
   value is used, the function ``           getenv         `` returns
   the value ``           rep         `` when the environment variable
   ``           str         `` is not found.
-  ``           env         ``: character string which contain the
   environment variable value

Description
~~~~~~~~~~~

Return the value of an environment variable if it exists.

Examples
~~~~~~~~

::


     getenv('SCI')
     getenv('FOO','foo') 
     
      

