


xmlIsValidObject
================

Test the existence of an XML object



Calling Sequence
~~~~~~~~~~~~~~~~


::

    exists = xmlIsValidObject(obj)




Arguments
~~~~~~~~~

:obj a XML object or a matrix of strings containing the variables
  names
: :exists a boolean or a matrix of booleans to indicate if the XML
  objects exist or not
:



Description
~~~~~~~~~~~

When a XML document has been deleted all the attached objects are
destroyed, but on the Scilab side the objects are still alive. So this
function is useful to know if an object on the Scilab side is valid or
not.



Examples
~~~~~~~~


::

    doc = `xmlRead`_("http://www.w3.org/TR/2009/REC-xml-names-20091208/xml-names-10-3e.xml");
    r = doc.root
    // must return %T
    xmlIsValidObject(r)
    
    // We delete the doc
    xmlDelete(doc);
    
    // must return [%F %F]
    xmlIsValidObject(["doc" "r"])




See Also
~~~~~~~~


+ `XML Objects`_ Describe the properties of the different XML objects
+ `xmlDelete`_ Delete a XML document




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _XML Objects: XMLObjects.html
.. _xmlDelete: xmlDelete.html


