


xmlAddNs
========

Add a namespace to a XML Element



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xmlAddNs(elem, [, ns1 [, ns2, ...]])




Arguments
~~~~~~~~~

:elem a mlist typed XMLElem
: :nsi a mlist typed XMLNs
:



Description
~~~~~~~~~~~

Add one or more namespaces to an element



Examples
~~~~~~~~


::

    doc = `xmlDocument`_("TMPDIR/foo.xml");
    doc.root = `xmlElement`_(doc, "root");
    a = `xmlElement`_(doc, "a");
    b = `xmlElement`_(doc, "b");
    ns_scilab = `xmlNs`_(a, "scilab", "http://www.scilab.org");
    ns_balics = `xmlNs`_(a, "balics", "http://gro.balics.www");
    xmlAddNs(b, ns_scilab, ns_balics);
    
    doc.root.children(1) = a;
    doc.root.children(2) = b;
    `xmlDump`_(doc)
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `XML Objects`_ Describe the properties of the different XML objects
+ `xmlDocument`_ Create a new XML document
+ `xmlElement`_ Create a new XML element
+ `xmlNs`_ Create a new XML Namespace
+ `xmlGetNsByHref`_ Get a namespace by its href
+ `xmlGetNsByPrefix`_ Get a namespace by prefix




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlNs: xmlNs.html
.. _xmlGetNsByPrefix: xmlGetNsByPrefix.html
.. _xmlDocument: xmlDocument.html
.. _xmlGetNsByHref: xmlGetNsByHref.html
.. _XML Objects: XMLObjects.html
.. _xmlElement: xmlElement.html


