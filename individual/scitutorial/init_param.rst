


init_param
==========

Initialize the structure which will handles the parameters list



Calling Sequence
~~~~~~~~~~~~~~~~


::

    param_list = init_param(['param_name1',param_value1,...])




Arguments
~~~~~~~~~

:param_list an initialized list of parameters (if no input parameters
  are shipped, this list is empty and is of type plist).
:



Description
~~~~~~~~~~~

This function initialize an empty list of parameters. You must
initialize the list of parameters before using it.



Examples
~~~~~~~~


::

    // Creation of an empty plist
    mylist = init_param();
    mylist = `add_param`_(mylist,'minbound',[0 0 0]);
    
    // Creation of a pre-filled plist
    mylist_2 = init_param('minbound', [0 0 0], 'maxbound', [1 1 1]);




See Also
~~~~~~~~


+ `add_param`_ Add a parameter to a list of parameters
+ `set_param`_ Set the value of a parameter in a parameter list
+ `get_param`_ Get the value of a parameter in a parameter list
+ `remove_param`_ Remove a parameter and its associated value from a
  list of parameters
+ `is_param`_ Check if a parameter is present in a parameter list


.. _is_param: is_param.html
.. _add_param: add_param.html
.. _get_param: get_param.html
.. _set_param: set_param.html
.. _remove_param: remove_param.html


