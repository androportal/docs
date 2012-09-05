


names
=====

Scilab names syntax



Description
~~~~~~~~~~~

Names of variables and functions must begin with a letter or one of
the following special characters ' `%`', ' `_`', ' `#`', ' `!`', '
`$`', ' `?`'.

Next characters may be letters or digits or any special character in '
`_`', ' `#`', ' `!`', ' `$`', ' `?`'.


Upper and lower case letters are different.
Names may be as long as you want but only the first 24 characters are
taken into account. If you exceed this limit you get a warning. Please
note that this limitation will be fixed with the release of Scilab 6.



Examples
~~~~~~~~


::

    //Valid names
    %eps
    A1=123
    #Color=8
    My_Special_Color_Table=`rand`_(10,3)
    //Non valid names
    //1A , b%, .C
    
    // Long names
    Try_to_use_a_long_name = 1 // long, but not too
    Try_to_use_a_too_long_name = 1 // too long
    
    // let we insert a second variable with similar long name...
    Try_to_use_a_too_long_name2 = 2
    
    // ... and see the value of first variable
    `disp`_(Try_to_use_a_too_long_name)
    // Please note that this limitation will be fixed with the release of Scilab 6.




