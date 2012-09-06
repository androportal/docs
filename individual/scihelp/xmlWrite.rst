


xmlWrite
========

Write a XML document in a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xmlWrite(doc [, filename] [, indent])
    xmlWrite(doc [, indent])




Arguments
~~~~~~~~~

:doc doc, a mlist typed XMLDoc
: :filename filename, a string
: :indent indent, a boolean
:



Description
~~~~~~~~~~~

Write a XML document in a file with the given filename or with the
document url. If indent is true, then the document will be indented,
by default indent is true.



Examples
~~~~~~~~


::

    doc = `xmlReadStr`_("<root><a att=""foo"" rib=""bar""><b>Hello</b></a></root>");
    xmlWrite(doc, TMPDIR+"/foo.xml", %f);
    
    // Now we open the previous file, modify it and save it
    doc1 = `xmlRead`_(TMPDIR+"/foo.xml");
    doc1.root.children(1).name = "newName";
    xmlWrite(doc1);
    
    // Now we check that the modification has been done
    doc2 = `xmlRead`_(TMPDIR+"/foo.xml");
    doc2.root.children(1).name
    
    xmlDelete("all");




See Also
~~~~~~~~


+ `xmlDump`_ Dump a XML object




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlDump: xmlDump.html


