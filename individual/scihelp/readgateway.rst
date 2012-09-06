


readgateway
===========

get primitives list of a module



Calling Sequence
~~~~~~~~~~~~~~~~


::

    readgateway(module_name)
    primitives = readgateway(module_name);
    [primitives,primitivesID] = readgateway(module_name);
    [primitives,primitivesID,gatewayID] = readgateway(module_name);




Arguments
~~~~~~~~~

:module_name a string
: :primitives, primitivesID, gatewayID matrices of string
:



Description
~~~~~~~~~~~

`readgateway(module_name)` gets primitives list of a `module_name`.

`primitives`: list of primitives of a `module_name`.

`primitivesID`: list of ID for primitives.

`gatewayID`: list of ID of gateway associated to a `module_name`.



Examples
~~~~~~~~


::

    [primitives,primitivesID,gatewayID] = readgateway('core');
    primitives(1) // 'debug' primitive
    primitivesID(1) // 1 is ID of 'debug' in 'core' gateway
    gatewayID(1) // 13 is ID of 'core' gateway in scilab




See Also
~~~~~~~~


+ `getmodules`_ returns list of modules installed in Scilab


.. _getmodules: getmodules.html


