====
"pvmd3"
====

pvm daemon Last update : 13/01/2005
**pvmd3** - PVM daemon



Description
~~~~~~~~~~~

pvmd3 is a daemon process which coordinates hosts in a virtual
machine. One pvmd must run on each host in the group. They provide the
communication and process control functions needed by the user's PVM
processes. The daemon can be started manually with a host file
argument that will automatically start the remote pvmds. The local and
remote pvmds can also be started from the PVM console program pvm.

The name of the daemon executable is pvmd3. It is usually started by a
shell script, **$PVM_ROOT/lib/pvmd** .

Local daemon may also be started by the scilab instruction
**pvm_start()** and remote daemons may also be started by the scilab
function pvm_addhosts





Options
~~~~~~~

The following options may be specified on the command line when
starting the master pvmd or PVM console:
