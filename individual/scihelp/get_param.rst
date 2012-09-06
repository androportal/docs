


get_param
=========

Get the value of a parameter in a parameter list



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [res,err] = get_param(list_name,param_name,default_value)




Arguments
~~~~~~~~~

:list_name the list of parameters. This list must have been
  initialized by a call to init_param.
: :param_name a string. The name of the parameter to be add in the
  list of parameters.
: :default_value the default value to be stored in the parameter if
  param_name has not been found.
: :res the value of the parameter. If the parameter does not exist,
  res = [].
: :err an error flag which is set to %T if list_name is not of type
  plist (this list has not been initialized by a call to init_param).
:



Description
~~~~~~~~~~~

This function returns the value of the parameter param_name in a
parameter list. If the err output parameter is not present, when an
error occurs, a message is printed in the console.



Examples
~~~~~~~~


::

    mylist = `init_param`_();
    mylist = `add_param`_(mylist,'minbound',[0 0 0]);
    `disp`_(get_param(mylist,'minbound',-[1 1 1]));
    `disp`_(get_param(mylist,'maxbound', [1 1 1]));




See Also
~~~~~~~~


+ `init_param`_ Initialize the structure which will handles the
  parameters list
+ `set_param`_ Set the value of a parameter in a parameter list
+ `add_param`_ Add a parameter to a list of parameters
+ `remove_param`_ Remove a parameter and its associated value from a
  list of parameters
+ `is_param`_ Check if a parameter is present in a parameter list


.. _is_param: is_param.html
.. _init_param: init_param.html
.. _add_param: add_param.html
.. _set_param: set_param.html
.. _remove_param: remove_param.html


