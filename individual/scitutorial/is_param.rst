


is_param
========

Check if a parameter is present in a parameter list



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [res,err] = is_param(list_name,param_name)




Arguments
~~~~~~~~~

:list_name the list of parameters. This list must have been initialize
  by a call to init_param.
: :param_name a string. The name of the parameter to be add in the
  list of parameters.
: :res the result: %T is the parameter is present, %F otherwise.
: :err an error flag which is set to %T if list_name is not of type
  plist (this list has not been initialized by a call to init_param).
:



Description
~~~~~~~~~~~

This function checks if a parameter is present in a parameter list. If
the err output parameter is not present, when an error occurs, a
message is printed in the console.



Examples
~~~~~~~~


::

    mylist = `init_param`_();
    mylist = `add_param`_(mylist,'minbound',[0 0 0]);
    `disp`_(is_param(mylist,'minbound'));
    `disp`_(is_param(mylist,'maxbound'));




See Also
~~~~~~~~


+ `init_param`_ Initialize the structure which will handles the
  parameters list
+ `set_param`_ Set the value of a parameter in a parameter list
+ `get_param`_ Get the value of a parameter in a parameter list
+ `remove_param`_ Remove a parameter and its associated value from a
  list of parameters
+ `add_param`_ Add a parameter to a list of parameters


.. _init_param: init_param.html
.. _add_param: add_param.html
.. _get_param: get_param.html
.. _set_param: set_param.html
.. _remove_param: remove_param.html


