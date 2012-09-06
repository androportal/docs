


xcos_simulate
=============

Function for running xcos simulation in batch mode



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Info=xcos_simulate(scs_m, needcompile)




Arguments
~~~~~~~~~

:scs_m: A diagram data structure (see `scs_m structure`_). :
:needcompile: An integer. If it equals 4, then the simulator will
perform a complete compilation of the diagram. If not, it will use
cached value of %cpr. DEPRECATED:



Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~
This function is used to simulate xcos diagrams in batch mode. It
requires the `scs_m structure`_ which can be obtained by loading in
Scilab the `.xcos` file (see `importXcosDiagram`_ ).
User can also define `pre_xcos_simulate` function that will run before
simulation.

::

    function continueSimulation=pre_xcos_simulate(scs_m, needcompile)
    // Do nothing
    continueSimulation = %t;
    endfunction

If this function fails the error will be trapped and the simulation
aborted. If `continueSimulation` is set to false, the simulation will
stop.

User can also define `post_xcos_simulate` function that will run after
simulation.

::

    function post_xcos_simulate(%cpr, scs_m, needcompile)
    // Do Nothing
    endfunction

If this function fails the error will be trapped.



File content
~~~~~~~~~~~~


+ SCI/modules/xcos/macros/xcos_simulate.sci




Examples
~~~~~~~~

The xcos diagram in `SCI/modules/xcos/demos/batch_simulation.xcos`
Simulate this diagram in batch mode and change some context values.

::

    `importXcosDiagram`_("SCI/modules/xcos/demos/batch_simulation.xcos")
    
    `typeof`_(scs_m) //The diagram data structure
    
    //This diagram uses 3 context variables :
    //  Amplitude : the sin function amplitude
    //  Pulsation : the sin function pulsation
    //  Tf        : the final simulation time
    scs_m.props.context //the embedded definition
    
    //first batch simulation with the parameters embedded in the diagram
    xcos_simulate(scs_m, 4);
    
    // Change the final time value
    scs_m.props.context = ["Amplitude=2" "Pulsation=3" "Tf=10"];
    xcos_simulate(scs_m, 4);
    
    // Now Change pulsation
    scs_m.props.context = ["Amplitude=2" "Pulsation=9" "Tf=10"];
    xcos_simulate(scs_m, 4);
    //get the variable created by the "from workspace block"
    counter



Statistic analysis of the diagram using pre_xcos_simulate function.

::

    `importXcosDiagram`_("SCI/modules/xcos/demos/batch_simulation.xcos")
    
    `typeof`_(scs_m) //The diagram data structure
    
    // Declare pre_xcos_simulation to only analyze Diagram.
    
    function continueSimulation=pre_xcos_simulate(scs_m, needcompile)
        // Retrieve all objects
        objs = scs_m.objs;
    
        links = 0;
        blocks = 0;
        other = 0;
        // Count Links and Blocks
        for i = 1:`size`_(objs)
            currentType = `typeof`_(objs(i));
            select (currentType)
            case "Link"
                links = links + 1;
            case "Block"
                blocks = blocks + 1;
            else
                other = other + 1;
            end
        end
    
            // Diplay Diagram analisys.
            `disp`_("Diagram Analysis:")
            `disp`_("Found "+`string`_(blocks)+" Blocks.")
            `disp`_("Found "+`string`_(links)+" Links.")
            `disp`_("Found "+`string`_(other)+" Other component.")
    
            // We do not want any simulation, just analyze Diagram
            continueSimulation = %f;
        endfunction
    
        //first batch simulation with the parameters embedded in the diagram
        xcos_simulate(scs_m, 4);



The xcos diagram: `SCI/modules/xcos/demos/Command.xcos` Simulate this
diagram in batch mode and perform bode plotting of transfert function
using post_xcos_simulate,

::

    `importXcosDiagram`_("SCI/modules/xcos/demos/Command.xcos")
    
    // Clear any pre_xcos_simulation;
    clear pre_xcos_simulate;
    
    function post_xcos_simulate(%cpr, scs_m, needcompile)
        // Retrieve all objects
        objs = scs_m.objs;
    
        clrBlock = [];
        //Looking for CLR block
        for i=1:`size`_(objs)
            if objs(i).gui == "CLR" then
                clrBlock = objs(i);
                break;
            end
        end
    
        // Check if we found some CLR
        if `isempty`_(clrBlock) then
            `disp`_("No CLR block found.")
            return
        end
    
        // Retrieve exprs
        exprs = clrBlock.graphics.exprs;
        s = `poly`_(0,'s');
        num = `eval`_(exprs(1));
        den = `eval`_(exprs(2));
        h = `syslin`_('c', num/den);
        // Open new figure then plot Bode
        `scf`_(`max`_(`winsid`_())+1);
        `bode`_(h, 0.01, 100);
    endfunction
    
    xcos_simulate(scs_m, 4);



The xcos diagram: `SCI/modules/xcos/demos/Command_bode.xcos` Simulate
this diagram in batch mode and perform bode plotting of transfert
function using post_xcos_simulate,

::

    `importXcosDiagram`_("SCI/modules/xcos/demos/Command_bode.xcos")
    
    // Clear any post_xcos_simulation;
    clear post_xcos_simulate;
    
    function continueSimulation=pre_xcos_simulate(scs_m, needcompile)
        // Retrieve all objects
        objs = scs_m.objs;
    
        clrBlock = [];
        //Looking for CLR block
        for i=1:`size`_(objs)
            if objs(i).gui == "CLR" then
                clrBlock = objs(i);
                break;
            end
        end
    
        // Check if we found some CLR
        if `isempty`_(clrBlock) then
            `disp`_("No CLR block found.")
            return
        end
    
        // Retrieve exprs
        exprs = clrBlock.graphics.exprs;
        s = `poly`_(0,'s');
        num = `eval`_(exprs(1));
        den = `eval`_(exprs(2));
        h = `syslin`_('c', num/den);
        // Open new figure then plot Bode
        `scf`_(`max`_(`winsid`_())+1);
        `bode`_(h, 0.01, 100);
    
        // Stop after bode plot. We do not want any simulation.
        continueSimulation = %f;
    endfunction
    
    xcos_simulate(scs_m, 4);





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


