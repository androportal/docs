


remove_param
============

Remove a parameter and its associated value from a list of parameters



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [param_list,err] = remove_param(list_name,param_name)




Arguments
~~~~~~~~~

:list_name the list of parameters. This list must have been initialize
  by a call to init_param.
: :param_name a string. The name of the parameter to be removed from
  the list of parameters. If the parameter does not exist, nothing
  happens.
: :param_list the updated list of parameters.
: :err an error flag which is set to %T if list_name is not of type
  plist (this list has not been initialized by a call to init_param).
:



Description
~~~~~~~~~~~

This function allows to remove a parameter and its associated value
from a list of parameters. If the err output parameter is not present,
when an error occurs, a message is printed in the console.



Examples
~~~~~~~~


::

    mylist = `init_param`_();
    mylist = `add_param`_(mylist,'minbound',[0 0 0]);
    mylist = `add_param`_(mylist,'maxbound',[0 0 0]);
    mylist = remove_param(mylist,'minbound');




See Also
~~~~~~~~


+ `init_param`_ Initialize the structure which will handles the
  parameters list
+ `set_param`_ Set the value of a parameter in a parameter list
+ `get_param`_ Get the value of a parameter in a parameter list
+ `add_param`_ Add a parameter to a list of parameters
+ `is_param`_ Check if a parameter is present in a parameter list


.. _is_param: is_param.html
.. _init_param: init_param.html
.. _add_param: add_param.html
.. _get_param: get_param.html
.. _set_param: set_param.html


