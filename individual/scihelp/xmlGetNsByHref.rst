


xmlGetNsByHref
==============

Get a namespace by its href



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ns = xmlGetNsByHref(elem, href)




Arguments
~~~~~~~~~

:elem a mlist typed XMLElem
: :href a string giving the href
: :ns a mlist typed XMLNs
:



Description
~~~~~~~~~~~

Search a namespace with the given href on the element or on its
ancestors.



Examples
~~~~~~~~


::

    doc = `xmlReadStr`_("<root><a xmlns:scilab=""http://www.scilab.org""><b>Hello </b><scilab:c>World</scilab:c></a></root>")
    c = doc.root.children(1).children(2);
    xmlGetNsByHref(c, "http://www.scilab.org")
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `xmlNs`_ Create a new XML Namespace
+ `xmlGetNsByPrefix`_ Get a namespace by prefix




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _xmlNs: xmlNs.html
.. _xmlGetNsByPrefix: xmlGetNsByPrefix.html


