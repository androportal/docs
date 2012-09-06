


set_param
=========

Set the value of a parameter in a parameter list



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [param_list,err] = set_param(list_name,param_name,param_value)




Arguments
~~~~~~~~~

:list_name the list of parameters. This list must have been initialize
  by a call to init_param.
: :param_name a string. The name of the parameter to be added in the
  list of parameters.
: :param_value the value to be associated to the parameter param_name.
: :param_list the updated list of parameters.
: :err an error flag which is set to %T if list_name is not of type
  plist (this list has not been initialized by a call to init_param).
:



Description
~~~~~~~~~~~

This function sets the value of an already existing parameter. If the
parameter does not exist, err is set to %T. If the err output
parameter is not present, when an error occurs, a message is printed
in the console.



Examples
~~~~~~~~


::

    mylist = `init_param`_();
    mylist = `add_param`_(mylist,'minbound',[0 0 0]);
    [mylist,err] = set_param(mylist,'minbound',[1 1 1]); `disp`_(err);
    [mylist,err] = set_param(mylist,'maxbound',[1 1 1]); `disp`_(err);




See Also
~~~~~~~~


+ `init_param`_ Initialize the structure which will handles the
  parameters list
+ `add_param`_ Add a parameter to a list of parameters
+ `get_param`_ Get the value of a parameter in a parameter list
+ `remove_param`_ Remove a parameter and its associated value from a
  list of parameters
+ `is_param`_ Check if a parameter is present in a parameter list


.. _is_param: is_param.html
.. _init_param: init_param.html
.. _add_param: add_param.html
.. _get_param: get_param.html
.. _remove_param: remove_param.html


