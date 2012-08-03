====
"man"
====

Scilab Format Last update : 05/07/2005
**man** - on line help XML file description format



Description
~~~~~~~~~~~

The on line help source files are written in XML.

Source files (with extension .xml) can be found in the
**<SCIDIR>/man/<language>/*** directories. The file name is usually
associated to a keyword (corresponding to a function name most of the
cases) it describes.



A few words about XML
~~~~~~~~~~~~~~~~~~~~~

An XML file resembles to an HTML file but with both a more rigid and
free syntax. Free because you may build your own tags: the set of tags
together with its rules must be described somewhere, generally in
another file ( **<SCIDIR>/man/manrev.dtd** for scilab), and rigid
because, once the tags and rules are defined (which are called the
Definition Type Document: DTD) , you must respect its (in particular
to every open tags **<MY_TAG>** must correspond a closed **</MY_TAG>**
). The DTD manrev.dtd is written in SGML and precises the exact syntax
required by a scilab XML help page. So if you know this language you
may red this file. The following annotated example (see the next
section) shows you some possibilities offered by this DTD and may be
enough to write simple help pages. Once an XML page is written and
conforms to the DTD, it may be transformed in HTML to be red by your
favorite browser or by the tcltk scilab browser (see section browser
choice in this page). The XML -> HTML translation is controled by a
set of rules written in the (XML) file
**<SCIDIR>/man/language/html.xsl** . Those rules are currently more or
less restricted to fit the tcltk scilab browser features (which may
display correctly only basic HTML): if you use a real HTML browser and
want a better appearance you have to modify this file.



How to write a simple xml scilab help page: the lazzy way
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If one want to write the xml file associated to a new scilab function
he or she may use the Scilab function ` **help_skeleton** `_ to
produce the skeleton of the xml file. In most cases the user will not
be required to know xml syntax.



How to write a simple xml scilab help page: an example
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Here is a simple annotated XML scilab help page which describes an
hypothetic foo scilab function. In the following, the XML file is
displayed in a type writer font and cut-out in several parts, each
part being preceded by some associated explanations. The entire XML
file **foo.xml** is in the **<SCIDIR>/man/eng/utility** directory and
the result may be displayed by clicking on ` **foo** `_. (you may
found others examples in the **<SCIDIR>/examples/man-examples-xml**
directory). **Finally** note that some tag pairs **<TAG>** ,
**</TAG>** have been renamed here **<ATAG>** , **</ATAG>** . This is
because some scilab scripts which do some work on or from the xml
files don't verify if a tag is inside a **VERBATIM** entry. The 3
first lines of the file are mandatory, the second precises the path to
the DTD file and the third, formed by the **<MAN>** tag, begin the
hierarchical description (the file must finish with the **</MAN>**
tag). The 4 followings entries : **LANGUAGE** , **TITLE** , **TYPE**
and **DATE** , are also mandatory (in this order) the text
corresponding to **<TYPE>** being generally 'Scilab function' (most of
the cases) but may be simply 'Scilab keyword' or 'Scilab data type',
..., depending of what explains the help page.

::

    
    
           <?xml version="1.0" encoding="ISO-8859-1" standalone="no"?> 
           <!DOCTYPE MAN SYSTEM "<SCIDIR>/man/manrev.dtd">
           <MAN>
              <LANGUAGE>eng</LANGUAGE>
              <TITLE>foo</TITLE>
              <TYPE>Scilab function</TYPE>
    <DATE>05/07/2005</DATE>
       
            

The first of these 2 following entries ( **SHORT_DESCRIPTION** ) is
mandatory and important since the words of the short description text,
are used by the ` **apropos** `_ command to search help pages from a
keyword: the short description is used to build the **whatis.html**
file corresponding to your toolbox and the **apropos keyword** command
looks in all the whatis files and then proposes the links to every
page containing the word **keyword** in its short description (in fact
the actual associated tags are **<SHORT_DESCRIPTION>** and
**</SHORT_DESCRIPTION>** and not **<ASHORT_DESCRIPTION>** and
**</ASHORT_DESCRIPTION>** ). The next entry ( **CALLING_SEQUENCE** )
must be used if you describe a function (but is not strictly
mandatory). If your function have several calling sequences use
several **CALLING_SEQUENCE_ITEM** entries.

::

    
    
              <ASHORT_DESCRIPTION name="foo">foo short description</ASHORT_DESCRIPTION>
              <CALLING_SEQUENCE>
                  <CALLING_SEQUENCE_ITEM>[y] = foo(x)</CALLING_SEQUENCE_ITEM>
              </CALLING_SEQUENCE>
       
            

The following entry ( **PARAM** ) is not strictly mandatory but is the
good one to describe each parameters (input and output) in case of a
function.

::

    
    
              <PARAM>
                 <PARAM_INDENT>
                    <PARAM_ITEM>
                       <PARAM_NAME>x</PARAM_NAME>
                       <PARAM_DESCRIPTION>
                          <SP>: what may be x</SP>
                       </PARAM_DESCRIPTION> 
                    </PARAM_ITEM>
                    <PARAM_ITEM>
                       <PARAM_NAME>y</PARAM_NAME>
                       <PARAM_DESCRIPTION>
                          <SP>: what may be y</SP>
                       </PARAM_DESCRIPTION> 
                    </PARAM_ITEM>
                 </PARAM_INDENT>
              </PARAM>
       
            

The **DESCRIPTION** entry is perhaps the most significant one (but not
strictly mandatory) and may be more sophisticated than in this example
(for instance you may have **DESCRIPTION_ITEM** sub-entries). Here you
see how to write several paragraphes (each one enclosed between the
**<P>** and **</P>** tags), how to emphasis a variable or a function
name (by enclosing it between the **<VERB>** and **</VERB>** tags),
how to emphasis a part of text ( **<EM>** or **<BD>** and **<TT>** to
put it in a type writer font)), and finally, how to put a link onto
another help page (in fact the actual associated tags are **<LINK>**
and **</LINK>** and not **<ALINK>** and **</ALINK>** ).

::

    
    
             <DESCRIPTION>
                 <P>
                    A first paragraph which explains what computes the foo function.
                    If you want to emphasis a parameter name then you use the following
                    tag <VERB>x</VERB>, if you want to emphasis a part of text
                    <EM>inclose it inside theses tags</EM> and use theses ones
                    <BD>to have a bold font</BD> and finally <TT>for a type writer style</TT>.
                 </P>
                 <P>
                    A second paragraph... Here is an example of a link to another page :
                    <ALINK>man</ALINK>.
                 </P>
             </DESCRIPTION>
       
            

Here is how to write your own entry, for instance to describe some
outside remarks and/or notes about your wonderful function.

::

    
    
             <SECTION label='Notes'>
                 <P>
                    Here is a list of notes :
                 </P>
                 <ITEM label='first'><SP>blablabla...</SP></ITEM>
                 <ITEM label='second'><SP>toto is the french foo...</SP></ITEM>
             </SECTION>
       
            

An important entry is the **EXAMPLE** one which is reserved to show
scilab uses of your function (begin with simple ones !). Note that you
must close this entry with **]]></EXAMPLE>** and not like here with
**}}></EXAMPLE>** (once again this is a bad trick to avoid some
interpretation problems).

::

    
    
             <EXAMPLE><![CDATA[
                 deff("y=foo(x)","y=x"); // define the foo function as the identity function
                 foo("toto")
          }}></EXAMPLE>
       
            

This last part explains how to put the links onto others related help
pages (as said before the good tags are in fact **<LINK>** and
**</LINK>** and not **<ALINK>** and **</ALINK>** ) and finally how to
reveal your name if you want (use one **AUTHOR_ITEM** entry by
author). Perhaps it is a good idea to put an email adress if you look
for bug reports !

::

    
    
             <SEE_ALSO>
               <SEE_ALSO_ITEM> <ALINK>man</ALINK> </SEE_ALSO_ITEM>
               <SEE_ALSO_ITEM> <ALINK>apropos</ALINK> </SEE_ALSO_ITEM>
             </SEE_ALSO>
    
             <AUTHOR>
               <AUTHOR_ITEM>B. P.</AUTHOR_ITEM>
             </AUTHOR>
           </MAN>
       
            





How to create an help chapter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create a directory and write down a set of xml files build as
described above. Then start Scilab and execute **xmltohtml(dir)** ,
where **dir** is a character string giving the path of the directory
(see ` **xmltohtml** `_ for more details) .



How to make Scilab know a new help chapter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This can be done by the function ` **add_help_chapter** `_.



Examples
~~~~~~~~


::

    
        function y=foo(a,b,c),y=a+2*b+c,endfunction
        path=help_skeleton('foo',TMPDIR)
        scipad(path)
      




See Also
~~~~~~~~

` **apropos** `_,` **help** `_,` **help_skeleton** `_,

.. _
        : ://./utilities/xmltohtml.htm
.. _
      : ://./utilities/apropos.htm
.. _
      : ://./utilities/help_skeleton.htm
.. _
      : ://./utilities/help.htm
.. _
        : ://./utilities/add_help_chapter.htm
.. _
        : ://./utilities/foo.htm


