


addmenu
=======

interactive button or menu definition



Calling Sequence
~~~~~~~~~~~~~~~~


::

    addmenu(button [,submenus] [,action])
    addmenu(gwin,button [,submenus] [,action])




Arguments
~~~~~~~~~

:button a character string. The button name. An & can be placed before
  the character in the name to be used for keyboard shortcut; this
  character will be underlined on the GUI. Under MacOSX, a sub-menu with
  the same name is automatically added (no button can be added to the
  menu bar).
: :submenus a vector of character string. The sub_menus items names
: :action a list with 2 elements action=list(flag,proc_name)
    :flag an integer (default value is 0)
    : :flag==0 the action is defined by a scilab instruction
    : :flag==1 the action is defined by a C or Fortran procedure
    : :flag==2 the action is defined by a scilab function
    : :proc_name a character string which gives the name of scilab
      variable containing the instruction or the name of procedure to call.
    :

: :gwin integer. The number of graphic window where the button is
  required to be installed
:



Description
~~~~~~~~~~~

The function allows the user to add new buttons or menus in the main
window or graphics windows command panels.

:If `action` argument is not given the action associated with a button
  must be defined by a scilab instruction given by the character string
  variable which name is + `button` for a main window command +
  `button_gwin` for a graphic window command
: :If `action` argument is set to 0 `proc_name` should be the name of
  a Scilab string vector. Actions associated with the kth sub_menu must
  be defined by scilab instructions stored in the kth element of the
  character string variable.
: :If `action` argument is set to 1 `proc_name` designes a C or
  Fortran procedure, this procedure may be interfaced in Fortran
  subroutine default/fbutn.f or dynamically linked with scilab using the
  `link` function. The C calling sequence is: `(char* button_name, int*
  gwin,int *k)`
: :If `action` argument is set to 2 `proc_name` designes a Scilab
  function. This function calling sequence should be: +
  `proc_name(k)`for a main window command + `proc_name(k,gwin)`for a
  graphic window command or a main window command
:



Examples
~~~~~~~~


::

    if (`getscilabmode`_() == "STD") then
          addmenu('foo');
          foo = 'disp(''hello'')';
          
          addmenu('Hello',['Franck';'Peter'])
          Hello = ['disp(''hello Franck'')';'disp(''hello Peter'')'];
          
          addmenu('Bye',`list`_(0,'French_Bye'));
          French_Bye = 'disp(''Au revoir'')';
          else
          `mprintf`_('This example requires to use scilab with GUI mode.\n');
          end
          
          addmenu(0,'Hello',['Franck';'Peter']);
          Hello_0 = ['disp(''hello Franck'')';'disp(''hello Peter'')'];
          
          //C defined Callback
          // creating Callback code
          code=[ '#include ""machine.h""'
          '#include ""sciprint.h""'
          'void foo(char *name, int *win, int *entry)'
          '{'
          '  if (*win==-1) '
          '    sciprint(""menu %s(%i) in Scilab window selected.\n"", name, *entry+1);'
          '  else'
          '    sciprint(""menu %s(%i) in window %i selected.\n"", name, *entry+1, *win);'
          '}'];
          //creating foo.c file
          current_dir = pwd();
          `chdir`_(TMPDIR);
          `mputl`_(code, TMPDIR+'/foo.c');
          //creating Makefile
          `ilib_for_link`_('foo','foo.c',[],'c');
          `exec`_('loader.sce');
          `chdir`_(current_dir);
          //add menu
          addmenu(0,'foo',['a','b','c'],`list`_(1,'foo'));




See Also
~~~~~~~~


+ `setmenu`_ interactive button or menu activation
+ `unsetmenu`_ interactive button or menu or submenu de-activation
+ `delmenu`_ interactive button or menu deletion


.. _unsetmenu: unsetmenu.html
.. _setmenu: setmenu.html
.. _delmenu: delmenu.html


