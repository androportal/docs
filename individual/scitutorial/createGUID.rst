


createGUID
==========

Creates a GUID (Windows only)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = createGUID(number_of_GUID)




Description
~~~~~~~~~~~

createGUID creates a Globally Unique IDentifier (GUID), , a unique
128-bit integer used for CLSIDs and interface identifiers .



Example
~~~~~~~


::

    if `getos`_() == 'Windows' then
      `disp`_(createGUID(1));
    end




