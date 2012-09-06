


list_param
==========

List all the parameters name in a list of parameters



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [string_list,err] = list_param(list_name)




Arguments
~~~~~~~~~

:list_name the list of parameters. This list must have been initialize
  by a call to init_param.
: :string_list the list of parameters name.
: :err an error flag which is set to %T if list_name is not of type
  plist (this list has not been initialized by a call to init_param).
:



Description
~~~~~~~~~~~

List all the parameters name in a list of parameters. If the err
output parameter is not present, when an error occurs, a message is
printed in the console.



Examples
~~~~~~~~


::

    mylist = `init_param`_();
    mylist = `add_param`_(mylist,'minbound',[0 0 0]);
    mylist = `add_param`_(mylist,'maxbound',[1 1 1]);
    `disp`_(list_param(mylist));




See Also
~~~~~~~~


+ `init_param`_ Initialize the structure which will handles the
  parameters list
+ `set_param`_ Set the value of a parameter in a parameter list
+ `get_param`_ Get the value of a parameter in a parameter list
+ `remove_param`_ Remove a parameter and its associated value from a
  list of parameters
+ `is_param`_ Check if a parameter is present in a parameter list


.. _is_param: is_param.html
.. _init_param: init_param.html
.. _get_param: get_param.html
.. _set_param: set_param.html
.. _remove_param: remove_param.html


