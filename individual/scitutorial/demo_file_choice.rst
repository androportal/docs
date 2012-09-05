


demo_file_choice
================

choose and executes an item within a list



Calling Sequence
~~~~~~~~~~~~~~~~


::

    demo_file_choice(path,ch)




Description
~~~~~~~~~~~

The function demo_file_choice choose and executes an item chosen in
the 'demolist' variable, that shall be written above. The variable
'demolist' is a text matrix whose first column contains names of items
displayed in an options window and whose second column contains the
names of the files that will be executed. The title of the options
window is 'Choose a demo'. The 'path' variable is the access to the
files called in the second column. The 'ch' variable allows to avoid
the special cases 'root' and 'anim' that are used in peculiar
demonstrations of Scilab. Then you have to enter another word than
'root' or 'ch', 'no' for example. If you choose to cancel the options
window, the console is put back to its previous width.



Examples
~~~~~~~~


::

    demolist=['n-pendulum','npend/npend_gateway.sce';
          'Wheel simulation','wheel2/wheel_gateway.sce';
          'Bike Simulation','bike/bike_gateway.sce';
          'ODE''S','ode/ode.dem';
          'DAE''S','dae/dae.dem']
    
    demo_file_choice('SCI/demos/simulation/','no');




See Also
~~~~~~~~


+ `demo_function_choice`_ choose and execute an item within a list


.. _demo_function_choice: demo_function_choice.html


