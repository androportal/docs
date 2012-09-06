


scicos_simulate
===============

Function for running xcos simulation in batch mode



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Info=scicos_simulate(scs_m)



::

    Info=scicos_simulate(scs_m,Info)



::

    Info=scicos_simulate(scs_m,context)



::

    Info=scicos_simulate(scs_m,flag)



::

    Info=scicos_simulate(scs_m ,Info [, context] [,flag])




Arguments
~~~~~~~~~

:scs_m: A diagram data structure (see `scs_m structure`_). : :Info: A
list. It must be set to `list()` at the first call, then use output
`Info` as input `Info`for the next calls. `Info` contains compilation
and simulation information and is used to avoid recompilation when not
needed. : :ContextValues: A Scilab struct containing values of
symbolic variables used in the context and xcos blocks. : :flag: A
string. If it equals 'nw' (no window), then blocks using graphical
windows are not executed. Note that the list of such blocks must be
updated as new blocks are added.:



Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~
This function is used to simulate xcos diagrams in batch mode. It
requires the `scs_m structure`_ which can be obtained by loading in
Scilab the `.xcos` file (see `importXcosDiagram`_ ).
The `ContextValues` may be used to change the main parameters value
set in the main diagram context. example: if the variable `A` is set
to 1 in the main context of the diagram. One can change the `A` value
for a `scicos_simulate` simulation by setting

::

    ContextValues.A=2



It is also possible to use variables defined inside Scilab directly
without using the `ContextValues` argument, but for such a use the
context definition must allow this: example, if one wants to allow
simulation use the `A` Scilab variable value for the parameter `A` the
diagram context definition should contain

::

    if ~`exists`_('A') then  A=1,end

Note that this second solution is fragile because it rely on the
current value of `A` in Scilab.



File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_auto/scicos_simulate.sci




Examples
~~~~~~~~
The xcos diagram in `SCI/modules/xcos/demos/batch_simulation.xcos`

::

    `importXcosDiagram`_("SCI/modules/xcos/demos/batch_simulation.xcos")
    
    `typeof`_(scs_m) //The diagram data structure
    
    //This diagram uses 3 context variables : 
    //  Amplitude : the sin function amplitude
    //  Pulsation : the sin function pulsation
    //  Tf        : the final simulation time
    scs_m.props.context; //the embedded definition
    
    //first batch simulation with the parameters embedded in the diagram 
    scicos_simulate(scs_m);
    // Change the final time value
    Context.Tf=10;
    scicos_simulate(scs_m,Context);
    // without display
    Context.Tf=10;
    Context.Pulsation=9;
    scicos_simulate(scs_m,`list`_(),Context,'nw');
    //get the variable created by the "from workspace block"
    counter




See Also
~~~~~~~~


+ `scs_m structure`_
+ `importXcosDiagram`_
+ `scicosim: xcos batch simulation function`_
+ `xcos: Block diagram editor and GUI for the hybrid simulator`_
+ `steadycos: Finds an equilibrium state of an xcos diagram`_
+ `lincos: Constructs by linearization a linear state-space model from
  an xcos diagram`_


.. _scicosim: xcos batch simulation function: scicosim.html
.. _scs_m structure: scicos_diagram.html
.. _lincos: Constructs by linearization a linear state-space model from an xcos diagram: lincos.html
.. _importXcosDiagram: importXcosDiagram.html
.. _steadycos: Finds an equilibrium state of an xcos diagram: steadycos.html
.. _xcos: Block diagram editor and GUI for the hybrid simulator: xcos.html


