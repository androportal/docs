====
"node44"
====




Setup
-----
In the main Scicos window, clicking on the Setup menu item invokes a
dialog box that allows you to change integration parameters:
- Final integration time (integration ends at this time, it always
starts from 0),
- Real time scaling (forces real time simulation by setting Scicos
unit of time to 1 second),
- Absolute and relative error tolerances (solver properties),
- Time tolerance (the smallest time interval for which the ode solver
is used to update continuous states),
- Max integration time interval (the maximum time interval for each
call to solver, it must be reduced if the error message "too many
calls" is encountered),
- Solver (choose the numerical solver to be used),
Max step size (max time step taken by solver).


Ramine Nikoukhah 2004-06-22









