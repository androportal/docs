


xmlFormat
=========

Format a Scilab variable into XML



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xmlCode = xmlFormat(scilabVar)




Arguments
~~~~~~~~~

:scilabVar scilabVar, a Scilab's variable
: :xmlCode xmlCode, a string containing XML code
:



Description
~~~~~~~~~~~

This function does nothing by itself ! It needs to be overloaded to be
useful.

It is used when a Scilab variable is inserted in the XML tree.



Examples
~~~~~~~~


::

    doc = `xmlReadStr`_("<root><a att=""foo"" rib=""bar""><b>Hello</b></a></root>");
    // This code will fail:
    // doc.root.children(1.5) = 1.23456;
    
    // Now we define %s_xmlFormat to handle double type
    // Take care, in this example, the double matrix is not handled
    function y=%s_xmlFormat(x), y="<number>" + `string`_(x) + "</number>", endfunction;
    
    // we retry a number insertion
    doc.root.children(1.5) = 1.23456;
    `xmlDump`_(doc)
    
    xmlDelete(doc);




History
~~~~~~~
Version Description 5.4.0 XML module introduced.


