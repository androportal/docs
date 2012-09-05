


FROMWSB
=======

Data from Scilab workspace to Xcos



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Data from Scilab workspace to Xcos`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Compiled Super Block content`_
    + `See also`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

That block is used to get data defined in the Scilab workspace and use
them in Xcos. Data should have "time" and "values" fields.





Dialog box
~~~~~~~~~~






+ **Variable name:** This variable is defined in Scilab and should be
  a structure with two fields, i.e., a "time" field of size (Nx1) and a
  "values" filed of size (NxM). "time" is a column vector of size Nx1
  and "values" is a matrix of size "N*M". "time" filed can only be of
  Real type, whereas the "values" field can be , , , , , , , and .
+ **Interpolation method:** Variables read by Xcos are data values
  read at discrete instants given by the time field. This option causes
  the block to interpolate at time steps for which no corresponding
  workspace data exists. There are four interpolation methods available.

    + **0: "Zero order method"**. This method generates a piecewise
      constant signal. i.e., for , .This method is available for all data
      types.
    + **1: "Linear method"**. This method generates a piecewise linear
      signal, i.e., for , .For data types other than double and complex, the
      linear interpolation can be used, but the final output will be
      computed by casting interpolation result into the original data type.
    + **2:"NATURAL method"**. This cubic spline is computed by using the
      following conditions (considering points ): . This method is only
      available for Real and complex data types.
    + **3:"NOT_A_KNOT method"**. The cubic spline is computed by using the
      following conditions (considering points ): . This method is only
      available for Real and complex data types.

+ **Enable zero crossing(0:No, 1:Yes)?:** Enables zero crossing
  detection. When and interpolation methods are chosen, the output
  signal will be discontinuous at data time instants. These possible
  discontinuities may cause problem for the numerical solver. In order
  to perform a reliable numerical integration, the zero crossing option
  is used. If output of the block affects data used by the numerical
  solver, at discontinuous points, a discrete event is generated and the
  numerical solver is cold restarted. The discrete event is also
  generated at the and for other interpolating methods.
+ **Output at end(0:Zero, 1:Hold, 2:Repeat):** This option is for
  selecting method for generating output after the last time point for
  which data is available from the workspace.

    + **0("Zero"):** The output is set to zero.
    + **1("Hold"):** The output is hold.
    + **2("Repeat"):** The output is repeated from workspace.





Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** csuper




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sources/FROMWSB.sci




Compiled Super Block content
~~~~~~~~~~~~~~~~~~~~~~~~~~~~





See also
~~~~~~~~


+ `TOWS_c - Data to Scilab worspace`_


.. _Default
                properties: FROMWSB.html#Defaultproperties_FROMWSB
.. _Sources palette: Sources_pal.html
.. _Dialog box: FROMWSB.html#Dialogbox_FROMWSB
.. _See also: FROMWSB.html#Seealso_FROMWSB
.. _Compiled Super Block
                content: FROMWSB.html
.. _Description: FROMWSB.html#Description_FROMWSB
.. _Interfacing
                function: FROMWSB.html#Interfacingfunction_FROMWSB
.. _Palette: FROMWSB.html#Palette_FROMWSB
.. _TOWS_c - Data to Scilab
            worspace: TOWS_c.html


