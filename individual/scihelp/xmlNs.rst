


xmlNs
=====

Create a new XML Namespace



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ns = xmlNs(elem, [prefix, [, href]])




Arguments
~~~~~~~~~

:elem a mlist typed XMLElem
: :prefix a string giving the prefix for this namespace
: :href a string giving the href for this namespace
:



Description
~~~~~~~~~~~

Create a new XML namespace associated with a XML element. The created
namespace can be used in the element or in its children.



Examples
~~~~~~~~


::

    doc = `xmlDocument`_("TMPDIR/foo.xml");
    doc.root = `xmlElement`_(doc, "root");
    ns = xmlNs(doc.root, "scilab", "http://www.scilab.org");
    doc.root.children(1) = "<a>hello</a>";
    doc.root.children(1).namespace = ns;
    `xmlDump`_(doc)
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `XML Objects`_ Describe the properties of the different XML objects
+ `xmlDocument`_ Create a new XML document
+ `xmlElement`_ Create a new XML element
+ `xmlAddNs`_ Add a namespace to a XML Element
+ `xmlGetNsByHref`_ Get a namespace by its href
+ `xmlGetNsByPrefix`_ Get a namespace by prefix




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlGetNsByPrefix: xmlGetNsByPrefix.html
.. _xmlDocument: xmlDocument.html
.. _xmlGetNsByHref: xmlGetNsByHref.html
.. _xmlAddNs: xmlAddNs.html
.. _XML Objects: XMLObjects.html
.. _xmlElement: xmlElement.html


