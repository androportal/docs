====
"EXPBLK_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Exp
---



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
This block realizes . The input and output port sizes are determined
by the compiler.


Dialog Box
~~~~~~~~~~
Set a block parameters a ( 0) %e

+ a : A real positive scalar




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *expblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/EXPBLK_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine expblk(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     Outputs a^u(i)
    c     a=rpar(1)
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          if(flag.eq.1) then
             do 15 i=1,nu
                   y(i)=exp(log(rpar(1))*u(i))
     15      continue
          endif
          if(flag.ge.4) then
             do 20 i=1,nu
                   y(i)=exp(log(rpar(1))*u(i))
     20      continue
          endif
    
          end




Ramine Nikoukhah 2004-06-22
.. _Library: ://./scicos/EXPBLK_f.htm#SECTION00543100000000000000
.. _Interfacing function: ://./scicos/EXPBLK_f.htm#SECTION00543500000000000000
.. _Default properties: ://./scicos/EXPBLK_f.htm#SECTION00543400000000000000
.. _Dialog Box: ://./scicos/EXPBLK_f.htm#SECTION00543300000000000000
.. _Description: ://./scicos/EXPBLK_f.htm#SECTION00543200000000000000
.. _Computational function (type 0): ://./scicos/EXPBLK_f.htm#SECTION00543600000000000000


