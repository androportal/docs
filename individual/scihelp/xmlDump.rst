


xmlDump
=======

Dump a XML object



Calling Sequence
~~~~~~~~~~~~~~~~


::

    str = xmlDump(xmlObj [, indent])




Arguments
~~~~~~~~~

:xmlObj xmlObj, a XML mlist
: :indent indent, a boolean
: :str str, a matrix of strings
:



Description
~~~~~~~~~~~

Dump a XML object. The objects which are dumpable are XMLDoc,
XMLElement or XMLList. If indent is false (by default it is true), no
indentation and carriage return will be added.



Examples
~~~~~~~~


::

    doc = `xmlReadStr`_("<root><a att=""foo"" rib=""bar""><b>Hello</b></a></root>");
    // Dump a document
    xmlDump(doc)
    
    // Dump a document without indentation
    xmlDump(doc, %f)
    
    // Dump a node list
    xmlDump(doc.root.children)
    
    //Dump an element
    xmlDump(doc.root.children(1))
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `xmlWrite`_ Write a XML document in a file




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlWrite: xmlWrite.html


