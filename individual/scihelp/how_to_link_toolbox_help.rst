


Link toolbox help with Scilab one
=================================

How to make hyperlink in toolbox help pointing to Scilab's items



Description
~~~~~~~~~~~

Since Scilab 5.3.1, the hyperlinks in a toolbox help can be used to
point on any help pages or to execute demos in the console.

Now you can link a demo `Uicontrol demo`_ or execute a script
`about.sce`_



Details
~~~~~~~


+ To link from two external modules, the syntax is: <link
  type="scilab" linkend="module_name.help/fun_in_module_name">fun_in_mod
  ule_name</link> Usually, the name of the function is the id of the
  page.
+ To link from a external module to a Scilab function, the syntax is:
  <link type="scilab" linkend="scilab.help/bvode">bvode</link> Usually,
  the name of the function is the id of the page.
+ To enable the execution of a script, the syntax is: <link
  type="scilab"
  linkend="mytoolbox.exec/macros/fooexec.sce">macros/fooexec.sce</link>
+ To enable the execution of a demo, the syntax is: <link
  type="scilab" linkend="mytoolbox.demos/mydemo.dem">My demo</link>




Examples
~~~~~~~~


::

    <?xml version="1.0" encoding="UTF-8"?>
    <refentry version="5.0-subset Scilab"
     xmlns="http://docbook.org/ns/docbook"
     xmlns:html="http://www.w3.org/1999/xhtml"
     xmlns:db="http://docbook.org/ns/docbook">
      <refnamediv xml:id="foo">
        <refname>Foo</refname>
        <refpurpose>calculates foo</refpurpose>
      </refnamediv>
      <refsection>
        <!-- Link on Scilab's help -->
        <para>Firstly a link on <link type="scilab" linkend="scilab.help/bvode">bvode</link> in the Scilab Doc</para>
        <!-- Link on a demo, foodemo must be in toolbox_path/demos/ -->
        <para>Secondly a link on <link type="scilab" linkend="mytoolbox.demos/foodemo">My demo</link></para>
        <!-- the executed macro will be toolbox_path/macros/fooexec.sce -->
        <para>Thirdly a link on <link type="scilab" linkend="mytoolbox.exec/macros/fooexec.sce">macros/fooexec.sce</link></para>
        <!-- a link for erroneous links -->
        <para>Fourthly a link on <link type="scilab" linkend="scilab.help/invalidlink">invalid link</link></para>
      </refsection>
      <programlisting role="example">
        plot3d() // should link on plot3d
      </programlisting>
    </refentry>


.. _Uicontrol demo: nullscilab.demos/gui/demos/uicontrol_plot3d.dem
.. _about.sce: nullscilab.exec/helptools/demos/about.sce


