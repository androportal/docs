


xmlGetNsByPrefix
================

Get a namespace by prefix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ns = xmlGetNsByPrefix(elem, prefix)




Arguments
~~~~~~~~~

:elem a mlist typed XMLElem
: :prefix a string giving the prefix
: :ns a mlist typed XMLNs
:



Description
~~~~~~~~~~~

Search a namespace with the given prefix on the element or on its
ancestors.



Examples
~~~~~~~~


::

    doc = `xmlReadStr`_("<root><a xmlns:scilab=""http://www.scilab.org""><b>Hello </b><scilab:c>World</scilab:c></a></root>")
    c = doc.root.children(1).children(2);
    xmlGetNsByPrefix(c, "scilab")
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `xmlNs`_ Create a new XML Namespace
+ `xmlGetNsByHref`_ Get a namespace by its href




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlNs: xmlNs.html
.. _xmlGetNsByHref: xmlGetNsByHref.html


