====
"Scilab"
====

Java Interface Last update : 01/06/2006
**Scilab** - Scilab Class



Description
~~~~~~~~~~~



Method Summary :

**public static void Events()** : do a scilab event.

**public static boolean HaveAGraph() ** : return true if there is a
scilab graphic window.

**public static boolean Exec(String job) ** : execute a job in scilab.
return true if there is no error.

**public static native boolean ExistVar(String VarName) ** : Detect if
VarName exists in Scilab. return true if Varname exist.

**public static native int TypeVar(String VarName) ** : return Scilab
type of VarName. See ` **type** `_

**public static native int GetLastErrorCode() ** : return last Error
code. See ` **lasterror** `_

**public static native boolean Finish() ** : terminate scilab (call
scilab.quit , close a scilab object)



Examples
~~~~~~~~


::

     // See SCI/examples/Callsci/CallsciJava directory




See Also
~~~~~~~~

` **SciDouble** `_,` **SciDoubleArray** `_,` **SciString** `_,`
**SciStringArray** `_,` **type** `_,` **lasterror** `_,



Author
~~~~~~

A.C

.. _
      : ://./java/../programming/lasterror.htm
.. _
      : ://./java/../programming/type.htm
.. _
      : ://./java/SciString.htm
.. _
      : ://./java/SciStringArray.htm
.. _
      : ://./java/SciDoubleArray.htm
.. _
      : ://./java/SciDouble.htm


