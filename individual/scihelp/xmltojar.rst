


xmltojar
========

converts xml Scilab help files to javaHelp format



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xmltojar(dirs [,titles [,dir_language [default_language]]]]])




Arguments
~~~~~~~~~

:dirs vector of strings: a set of directory paths for which html
  manuals are to be generated or `[]`
: :titles vector of strings: titles associated to directory paths or
  []
: :dir_language vector of strings: languages associated to directory
  paths or []
: :default_language vector of strings: default languages associated to
  directory paths or []. If an XML file is missing in the dir_language,
  it's copied from the default_language.
:



Description
~~~~~~~~~~~

converts xml Scilab help files contained in a set of directories into
jar files.



Examples
~~~~~~~~


::

    // example_1/
    // `-- help
    //     |-- en_US
    //     |   |-- example_1_function_1.xml
    //     |   |-- example_1_function_2.xml
    //     |   `-- example_1_function_3.xml
    //     `-- fr_FR
    //         |-- example_1_function_1.xml
    //         |-- example_1_function_2.xml
    //         `-- example_1_function_3.xml
    //     `-- zh_TW
    //         |-- example_1_function_1.xml
    //         |-- example_1_function_2.xml
    //         `-- example_1_function_3.xml
    
    my_module_path = `pathconvert`_(SCI+'/modules/helptools/examples/example_1',%f,%f)
    
    // Build the french help
    // =============================================================================
    my_french_help_dir    =  my_module_path+'/help/fr_FR';
    my_french_help_title  =  'Example 1 [fr_FR]';
    xmltojar(my_french_help_dir,my_french_help_title,'fr_FR');
    
    // Build the english help
    // =============================================================================
    my_english_help_dir   =  my_module_path+'/help/en_US';
    my_english_help_title =  'Example 1 [en_US]';
    xmltojar(my_english_help_dir,my_english_help_title,'en_US');
    
    // Build the chinese help
    // =============================================================================
    my_chinese_help_dir   =  my_module_path+'/help/zh_TW';
    my_chinese_help_title =  'Example 1 [zh_TW]';
    xmltojar(my_chinese_help_dir,my_chinese_help_title,'zh_TW');
    
    // Add french, english or chinese help chapters
    // =============================================================================
    
    if `getlanguage`_() == 'fr_FR' then
      `add_help_chapter`_(my_french_help_title,my_module_path+"/jar");
    
    elseif `getlanguage`_() == 'zh_TW' then
      `add_help_chapter`_(my_chinese_help_title,my_module_path+"/jar");
    
    else
      `add_help_chapter`_(my_english_help_title,my_module_path+"/jar");
    end
    
    // See the result in the help browser
    // =============================================================================
    `help`_();
    
    // Del french and english help chapters
    // =============================================================================
    if `getlanguage`_() == 'fr_FR' then
      `del_help_chapter`_(my_french_help_title);
    else
      `del_help_chapter`_(my_english_help_title);
    end




See Also
~~~~~~~~


+ `help`_ on-line help command
+ `add_help_chapter`_ Add an entry in the help list


.. _add_help_chapter: add_help_chapter.html
.. _help: help.html


