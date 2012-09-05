


block_parameter_error
=====================

Displays a parameter input error box for an Xcos block



Calling Sequence
~~~~~~~~~~~~~~~~


::

    block_parameter_error(inform, expected)




Arguments
~~~~~~~~~

:inform: a string, type of error
: :expected: a string, the expected value or the range of expected
  values.
:



Description
~~~~~~~~~~~

The goal of this function is to give a precise information to an user
on his error when he inputs a block parameter. The user information is
displayed on two lines provided respectively by the parameters:


+ **inform**: it is reserved to the information for the user on his
  mistake. The better way to do this is to do a recall of the parameter
  name and of the wrong value provided by the user.
+ **expected**: a positive information to guide the user to be in the
  way of the error correction. By example, if the parameter is an
  integer, the message may be "Must be an integer", for a range of
  values we can use a message like that:

::

    `msprintf`_(`gettext`_("Must be in the interval %s."), "[3, 8]")






Examples
~~~~~~~~

The example below is a simple use case for the function. The user
inputs a value in the parameter dialog box. If the value is not valid,
the example displays this error box:






::

    `loadXcosLibs`_ // Useless in Xcos block programming context
    
    ok = %f;
    
    while ~ok do
        // Input the parameter
        [Datatype] = `x_mdialog`_( ..
            "Parameter input", ..
            "Data Type (3:int32, 4:int16, 5:int8, ...) ?", ..
            "3" ..
        );
    
        if `isempty`_(Datatype) then // Cancel or Ok ?
            break;
    
        else
            Datatype = `evstr`_(Datatype);
    
        end
        // Test 'Data Type' parameter and displays error box if necessary
        if Datatype < 3 | Datatype > 8 then
            block_parameter_error( ..
                `msprintf`_("Wrong values for ''Data Type'' parameter: %d.", Datatype), ..
                `msprintf`_("Must be in the interval %s.", "[3, 8]") ..
            );
            ok = %f;
    
        else // Parameter is valid, continue the job
            ok = %t;
            `print`_(%io(2), "Data Type parameter is valid");
        end
    end




See also
~~~~~~~~


+ `x_mdialog`_ Dialog for interactive vector/matrix input.


.. _x_mdialog: x_mdialog.html


