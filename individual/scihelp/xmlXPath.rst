


xmlXPath
========

Make an XPath query on a XML document



Calling Sequence
~~~~~~~~~~~~~~~~


::

    result = xmlXPath(xmlObj, queryStr [, namespaces])




Arguments
~~~~~~~~~

:xmlObj a XML mlist typed XMLDoc or XMLElem
: :queryStr a Xpath query
: :namespaces An optional matrix nx2 of strings
: :result result can be a set of XMLElements or a number or a string
  or a boolean
:



Description
~~~~~~~~~~~

Make an XPath query on a document or in starting on an element. If you
need to use namespaces, then you must define them in using the
optional argument. XML namespaces are defined in the first tag with
the keyword "xmlns".

For more information about XPath, you can read the `W3C
recommandation`_.



Examples
~~~~~~~~


::

    doc = `xmlRead`_("http://www.w3.org/TR/2009/REC-xml-names-20091208/xml-names-10-3e.xml");
    
    // Retrieve the nodes with name equals to "note"
    xp = xmlXPath(doc, "//note");
    s = `size`_(xp);
    for i=1:s(2)
        `xmlDump`_(xp(i))
    end
    
    // Count the nodes with name equals to "note"
    xp = xmlXPath(doc, "count(//note)")
    
    // Retrieve the node with id="Philosophy"
    xp = xmlXPath(doc, "//*[@id=""Philosophy""]");
    s = `size`_(xp);
    if (s(2) <> 0) then
        `xmlDump`_(xp(1))
    end
    
    // Retrieve the nodes with an attribute num equals to the number 5
    xp = xmlXPath(doc, "//*[number(@num)=5]");
    s = `size`_(xp);
    if (s(2) <> 0) then
        `xmlDump`_(xp(1))
    end
    
    // Get the name and the content of all the attributes of nodes named 'emph'
    xp = xmlXPath(doc, "//emph/@*");
    xp.name
    xp.content
    
    xmlDelete(doc);
    
    // Query using namespaces
    doc = `xmlReadStr`_("<root xmlns:scilab=""http://www.scilab.org""><scilab:a att=""foo"" rib=""bar""><b>Hello</b></scilab:a></root>");
    
    // We search for element named a
    xmlXPath(doc, "//a") // => nothing
    xmlXPath(doc, "//scilab:a", ["scilab" "http://www.scilab.org"]) // => OK
    
    // This code will fail:
    // xmlXPath(doc, "//scilab:a") // => error
    
    xmlDelete(doc);
    
    // Query starting on an element
    doc = `xmlReadStr`_("<root att=""attribute""><a a1=""A1"" a2=""A2"" a3=""A3""><b>Hello</b><c>Scilab</c><b>World</b></a><b>Nothing</b></root>");
    e = doc.root.children(1);
    
    // Get the attributes of e
    xp = xmlXPath(e, "@*");
    xmlAsText(xp)
    
    // Get the 'b' from e
    xp = xmlXPath(e, "b");
    xmlAsText(xp)
    
    xmlDelete(doc);




See Also
~~~~~~~~


+ `W3C XPath recommandation`_
+ `XPath tutorial`_




History
~~~~~~~
Version Description 5.4.0 XML module introduced.
.. _XPath tutorial: http://www.w3schools.com/xpath/
.. _W3C XPath recommandation: http://www.w3.org/TR/1999/REC-xpath-19991116/


