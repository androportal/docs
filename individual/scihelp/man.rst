


Scilab documentation format
===========================

on line help XML file description format



Description
~~~~~~~~~~~

The on line help source files are written in XML.

Source files (with extension .xml) can be found in the
`<SCIDIR>/modules/<MODULE NAME>/help/<language>/*` directories. The
file name is usually associated to a keyword (corresponding to a
function name most of the cases) it describes.



A few words about XML
~~~~~~~~~~~~~~~~~~~~~

An XML file resembles to a HTML file but with a more rigid syntax. The
documentation of Scilab must be written using the strict subset of
DocBook 5 defined in SCI/modules/helptools/schema/scilab.rnc. DocBook
5 elements are fully documented in `"DocBook 5.0: The Definitive
Guide"`_

Scilab is able to understand a large subset of Docbook tags. However,
if any are missing, a bug report can be reported on the `Scilab bug
tracker`_.



How to write a simple XML scilab help page:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If one want to write the XML file associated to a new scilab function
he or she may use the Scilab function `help_skeleton`_ to produce the
skeleton of the XML file. In most cases, the user will not be required
to know XML syntax.



How to write a simple XML scilab help page: an example
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The root element of a document which conforms to the Scilab DocBook 5
subset must have version attribute set to "5.0-subset Scilab".


::

    <?xml version="1.0" encoding="UTF-8"?>
          <refentry version="5.0-subset Scilab" xml:id="foo" xml:lang="en"
     xmlns="http://docbook.org/ns/docbook"
     xmlns:xlink="http://www.w3.org/1999/xlink"
     xmlns:svg="http://www.w3.org/2000/svg"
     xmlns:ns4="http://www.w3.org/1999/xhtml"
     xmlns:mml="http://www.w3.org/1998/Math/MathML"
     xmlns:db="http://docbook.org/ns/docbook">


Example:


::

    function y=foo(a, b, c)
          y = a + 2 * b + c;
          endfunction
          
          path = `help_skeleton`_('foo', TMPDIR)
          if (`isdef`_('editor') | (`funptr`_('editor')<>0)) then
          `editor`_(path);
          end


Generated foo.xml in TMPDIR:


::

    <?xml version="1.0" encoding="UTF-8"?>
          <!--
          * Add some comments about XML file
          -->
          <refentry version="5.0-subset Scilab" xml:id="foo" xml:lang="en"
     xmlns="http://docbook.org/ns/docbook"
     xmlns:xlink="http://www.w3.org/1999/xlink"
     xmlns:svg="http://www.w3.org/2000/svg"
     xmlns:ns4="http://www.w3.org/1999/xhtml"
     xmlns:mml="http://www.w3.org/1998/Math/MathML"
     xmlns:db="http://docbook.org/ns/docbook">
          <info>
          <pubdate>$LastChangedDate: 29-11-2010 $</pubdate>
          </info>
          <refnamediv>
          <refname>foo</refname>
          <refpurpose>Add short description here. </refpurpose>
          </refnamediv>
          <refsynopsisdiv>
          <title>Calling Sequence</title>
          <synopsis>y = foo(a,b,c)</synopsis>
          </refsynopsisdiv>
          <refsection>
          <title>Parameters</title>
          <variablelist>
          <varlistentry>
          <term>a</term>
          <listitem>
          <para>
          Add here the input argument description.
          </para>
          </listitem>
          </varlistentry>
          <varlistentry>
          <term>b</term>
          <listitem>
          <para>
          Add here the input argument description.
          </para>
          </listitem>
          </varlistentry>
          <varlistentry>
          <term>c</term>
          <listitem>
          <para>
          Add here the input argument description.
          </para>
          </listitem>
          </varlistentry>
          <varlistentry>
          <term>y</term>
          <listitem>
          <para>
          Add here the output argument description.
          </para>
          </listitem>
          </varlistentry>
          </variablelist>
          </refsection>
          <refsection>
          <title>Description</title>
          <para>
          Add here a paragraph of the function description. 
          Other paragraph can be added 
          </para>
          <para>With a latex expression
          <latex>
          \begin{eqnarray}
          f(x,a,r) = \frac{1}{r^{-a}\Gamma(a)} \int_0^x t^{a-1} \exp\left(-rt\right) dt
          \end{eqnarray}
          </latex>
          </para>
          </refsection>
          
          <refsection>
          <title>More information</title>
          <note><para>A note about foo</para></note>
          <caution><para>A caution about foo</para></caution>
          <warning><para>A warsning about foo</para></warning>
          <important><para>A important about foo</para></important>
          <tip><para>A tip about foo</para></tip>
          </refsection>
          
          <refsection>
          <title>Examples</title>
          <programlisting role="example"><![CDATA[
          Add here scilab instructions and comments
          ]]></programlisting>
          </refsection>
          <refsection>
          <title>See Also</title>
          <simplelist type="inline">
          <member>
          <link linkend="add a reference name" >add a reference</link>
          </member>
          <member>
          <link linkend="add a reference name">add a reference</link>
          </member>
          </simplelist>
          </refsection>
          <refsection>
          <title>Authors</title>
          <simplelist type="vert">
          <member>add the author name and author reference</member>
          <member>add another author name and it's reference</member>
          </simplelist>
          </refsection>
          <refsection>
          <title>Bibliography</title>
          <para>
          Add here the function bibliography
          </para>
          </refsection>
          <refsection>
          <title>History</title>
          <revhistory>
          <revision>
          <revnumber>X.Y</revnumber>
          <revdescription>Function foo added</revdescription>
          </revision>
          </revhistory>
          </refsection>
          <refsection>
          <title>Used Functions</title>
          <para>
          Add here the Scilab, C,... used code references
          </para>
          </refsection>
          </refentry>




How to create a help chapter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create a directory and write down a set of XML files build as
described above. Then start Scilab and execute `xmltojar` (see
`xmltojar`_ for more details) .



How to make Scilab know a new help chapter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This can be done by the function `add_help_chapter`_.



List of docbook supported tags
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Generic tags `refentry`_ A reference page `section`_ A recursive
section `book`_ A book `part`_ A division in a book `chapter`_ A
chapter, as of a book `title`_ The text of the title of a section of a
document or of a formal block-level element `para`_ A paragraph
`literal`_ Inline text that is some literal value `refnamediv`_ The
name, purpose, and classification of a reference page `refname`_ The
name of (one of) the subject(s) of a reference page `refpurpose`_ A
short (one sentence) synopsis of the topic of a reference page
`refsynopsisdiv`_ A syntactic synopsis of the subject of the reference
page `synopsis`_ A general-purpose element for representing the syntax
of commands or functions `refsection`_ A recursive section in a
refentry `programlisting`_ A literal listing of all or part of a
program `screen`_ Text that a user sees or might see on a computer
screen `pubdate`_ The date of publication of a document `link`_ A
hypertext link `ulink`_ A link that addresses its target by means of a
URL (Uniform Resource Locator) `xref`_ A cross reference to another
part of the document `term`_ The word or phrase being defined or
described in a variable list `emphasis`_ Emphasized text
`informalequation`_ A displayed mathematical equation without a title
`subscript`_ A subscript (as in H 2 O, the molecular formula for
water) `superscript`_ A superscript (as in x 2 , the mathematical
notation for x multiplied by itself) `replaceable`_ Content that may
or must be replaced by the user `caption`_ A caption `surname`_ A
family name; in western cultures the 'last name' `firstname`_ The
first name of a person `bibliomset`_ A 'cooked' container for related
bibliographic information `bibliomixed`_ An entry in a Bibliography

List tags: `simplelist`_ An undecorated list of single words or short
phrases `member`_ An element of a simple list `listitem`_ A wrapper
for the elements of a list item `varlistentry`_ A wrapper for a set of
terms and the associated description in a variable list
`variablelist`_ A list in which each entry is composed of a set of one
or more terms and an associated description `itemizedlist`_ A list in
which each entry is marked with a bullet or other dingbat
`orderedlist`_ A list in which each entry is marked with a
sequentially incremented label

Table tags: `table`_ A formal table in a document `informaltable`_ A
table without a title `tbody`_ A wrapper for the rows of a table or
informal table `tr`_ A row in an HTML table `td`_ A table entry in an
HTML table `th`_ A table header entry in an HTML table

Image tags: `imagedata`_ Pointer to external image data `imageobject`_
A wrapper for image data and its associated meta-information
`inlinemediaobject`_ An inline media object (video, audio, image, and
so on) `screenshot`_ A representation of what the user sees or might
see on a computer screen `mediaobject`_ A displayed media object
(video, audio, image, etc.)

FAQ tags: `question`_ A question in a QandASet `answer`_ An answer to
a question posed in a QandASet `qandaentry`_ A question/answer set
within a QandASet `qandaset`_ A question-and-answer set

History tags: `revhistory`_ A history of the revisions to a document
`revision`_ An entry describing a single revision in the history of
the revisions to a document `revnumber`_ A document revision number
`revremark`_ A description of a revision to a document
`revdescription`_ A extended description of a revision to a document

Information tags: `note`_ A message set off from the text `warning`_
An admonition set off from the text `caution`_ A note of caution
`tip`_ A suggestion to the user, set off from the text `important`_ An
admonition set off from the text

Scilab specific tag: latex Scilab proprietary tag to write directly
LaTeX expression in the help pages



History
~~~~~~~
Version Description 5.4.0 Management of tags <note>, <caution>,
<warning>, <important> and <tip>


See Also
~~~~~~~~


+ `apropos`_ searches keywords in Scilab help
+ `help`_ on-line help command
+ `help_skeleton`_ build the skeleton of the xml help file associated
  to a Scilab function
+ `help_from_sci`_ Generate help files and demo files from the head
  comments section of a .sci source file.
+ `xmltojar`_ converts xml Scilab help files to javaHelp format
+ `add_help_chapter`_ Add an entry in the help list


.. _refnamediv: http://docbook.org/tdg/en/html/refnamediv.html
.. _qandaentry: http://docbook.org/tdg/en/html/qandaentry.html
.. _member: http://docbook.org/tdg/en/html/member.html
.. _surname: http://docbook.org/tdg/en/html/surname.html
.. _book: http://docbook.org/tdg/en/html/book.html
.. _inlinemediaobject: http://docbook.org/tdg/en/html/inlinemediaobject.html
.. _varlistentry: http://docbook.org/tdg/en/html/varlistentry.html
.. _para: http://docbook.org/tdg/en/html/para.html
.. _table: http://docbook.org/tdg/en/html/table.html
.. _xmltojar: xmltojar.html
.. _term: http://docbook.org/tdg/en/html/term.html
.. _variablelist: http://docbook.org/tdg/en/html/variablelist.html
.. _help_from_sci: help_from_sci.html
.. _Scilab bug tracker: http://bugzilla.scilab.org/
.. _firstname: http://docbook.org/tdg/en/html/firstname.html
.. _informalequation: http://docbook.org/tdg/en/html/informalequation.html
.. _caution: http://docbook.org/tdg/en/html/caution.html
.. _answer: http://docbook.org/tdg/en/html/answer.html
.. _tip: http://docbook.org/tdg/en/html/tip.html
.. _revision: http://docbook.org/tdg/en/html/revision.html
.. _note: http://docbook.org/tdg/en/html/note.html
.. _superscript: http://docbook.org/tdg/en/html/superscript.html
.. _chapter: http://docbook.org/tdg/en/html/chapter.html
.. _section: http://docbook.org/tdg/en/html/section.html
.. _revdescription: http://docbook.org/tdg/en/html/revdescription.html
.. _subscript: http://docbook.org/tdg/en/html/subscript.html
.. _help_skeleton: help_skeleton.html
.. _question: http://docbook.org/tdg/en/html/question.html
.. _qandaset: http://docbook.org/tdg/en/html/qandaset.html
.. _informaltable: http://docbook.org/tdg/en/html/informaltable.html
.. _tbody: http://docbook.org/tdg/en/html/tbody.html
.. _xref: http://docbook.org/tdg/en/html/xref.html
.. _important: http://docbook.org/tdg/en/html/important.html
.. _replaceable: http://docbook.org/tdg/en/html/replaceable.html
.. _emphasis: http://docbook.org/tdg/en/html/emphasis.html
.. _itemizedlist: http://docbook.org/tdg/en/html/itemizedlist.html
.. _td: http://docbook.org/tdg/en/html/td.html
.. _part: http://docbook.org/tdg/en/html/part.html
.. _refpurpose: http://docbook.org/tdg/en/html/refpurpose.html
.. _ulink: http://docbook.org/tdg/en/html/ulink.html
.. _pubdate: http://docbook.org/tdg/en/html/pubdate.html
.. _tr: http://docbook.org/tdg/en/html/tr.html
.. _": http://docbook.org/tdg5/en/html/docbook.html
.. _revnumber: http://docbook.org/tdg/en/html/revnumber.html
.. _literal: http://docbook.org/tdg/en/html/literal.html
.. _programlisting: http://docbook.org/tdg/en/html/programlisting.html
.. _bibliomixed: http://docbook.org/tdg/en/html/bibliomixed.html
.. _revhistory: http://docbook.org/tdg/en/html/revhistory.html
.. _title: http://docbook.org/tdg/en/html/title.html
.. _screenshot: http://docbook.org/tdg/en/html/screenshot.html
.. _simplelist: http://docbook.org/tdg/en/html/simplelist.html
.. _synopsis: http://docbook.org/tdg/en/html/synopsis.html
.. _apropos: apropos.html
.. _refsection: http://docbook.org/tdg/en/html/refsection.html
.. _imagedata: http://docbook.org/tdg/en/html/imagedata.html
.. _refentry: http://docbook.org/tdg/en/html/refentry.html
.. _refsynopsisdiv: http://docbook.org/tdg/en/html/refsynopsisdiv.html
.. _refname: http://docbook.org/tdg/en/html/refname.html
.. _add_help_chapter: add_help_chapter.html
.. _th: http://docbook.org/tdg/en/html/th.html
.. _caption: http://docbook.org/tdg/en/html/caption.html
.. _screen: http://docbook.org/tdg/en/html/screen.html
.. _listitem: http://docbook.org/tdg/en/html/listitem.html
.. _warning: http://docbook.org/tdg/en/html/warning.html
.. _orderedlist: http://docbook.org/tdg/en/html/orderedlist.html
.. _bibliomset: http://docbook.org/tdg/en/html/bibliomset.html
.. _help: help.html
.. _imageobject: http://docbook.org/tdg/en/html/imageobject.html
.. _link: http://docbook.org/tdg/en/html/link.html
.. _revremark: http://docbook.org/tdg/en/html/revremark.html
.. _mediaobject: http://docbook.org/tdg/en/html/mediaobject.html


