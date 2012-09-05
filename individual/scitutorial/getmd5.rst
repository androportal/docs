


getmd5
======

get md5 checksum



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res=getmd5(filename)
    res=getmd5(ParamString,'string')




Arguments
~~~~~~~~~

:res md5 result (string)
: :filename filename (string or matrix of strings)
: :ParamString string or matrix of strings
:



Description
~~~~~~~~~~~

`getmd5(...)` get md5 checksum of a file or a string.



Examples
~~~~~~~~


::

    getmd5('hello world','string')
    getmd5(['hello' 'world'],'string')
    getmd5(['hello' ; 'world'],'string')
    
    getmd5( SCI+'/modules/core/etc/core.start' )
    getmd5( SCI+'/modules/core/etc/'+['core.start' 'core.quit'])




