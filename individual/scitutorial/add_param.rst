


add_param
=========

Add a parameter to a list of parameters



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [param_list,err] = add_param(list_name,param_name,param_value)




Arguments
~~~~~~~~~

:list_name the list of parameters. This list must have been initialize
  by a call to init_param.
: :param_name a string. The name of the parameter to be added in the
  list of parameters.
: :param_value the value associated to the parameter param_name. This
  parameter is optional. You can set the value of this parameter via a
  call to set_param.
: :param_list the updated list of parameters.
: :err an error flag which is set to %T if list_name is not of type
  plist (this list has not been initialized by a call to init_param).
:



Description
~~~~~~~~~~~

This function creates a new parameter in a list of parameters. You can
set the value of the parameter using this function or you can set it
via a call to set_param.



Examples
~~~~~~~~


::

    mylist = `init_param`_();
    mylist = add_param(mylist,'minbound',[0 0 0]);




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


