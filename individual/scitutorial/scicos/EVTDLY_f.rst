====
"EVTDLY_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Event delay
-----------



Library
~~~~~~~
Events


Description
~~~~~~~~~~~
One event is generated **Delay** after an event enters the unique
input event port. Block may also generate an initial output event.


Dialog Box
~~~~~~~~~~
Set Event Delay block parameters and the generated output event Block
may initially generate an output event before any input event. "Date
of initial output event" gives the date of this event. Set a negative
value if no initial event required Delay 0.1 Date of initial output
event 0.1

+ Delay: scalar. Time delay between input and output event.
+ Date of initial output event:scalar. If **Auto-exec>=0 ** block
  initially generates an output event at date **Auto-exec**.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 1 / 1
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *evtdly*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/events/EVTDLY_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine evtdly(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    c     Scicos block simulator
    c     event delay
    c     delay=rpar(1)
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
    c
          if(flag.eq.3) then
             tvec(1)=t+rpar(1)
          endif
          return
          end



Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/EVTDLY_f.htm#SECTION00555400000000000000
.. _Library: ://./scicos/EVTDLY_f.htm#SECTION00555100000000000000
.. _Interfacing function: ://./scicos/EVTDLY_f.htm#SECTION00555500000000000000
.. _Description: ://./scicos/EVTDLY_f.htm#SECTION00555200000000000000
.. _Computational function (type 0): ://./scicos/EVTDLY_f.htm#SECTION00555600000000000000
.. _Dialog Box: ://./scicos/EVTDLY_f.htm#SECTION00555300000000000000


