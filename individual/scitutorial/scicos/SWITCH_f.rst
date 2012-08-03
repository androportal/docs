====
"SWITCH_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 2)`_







Swith
-----



Library
~~~~~~~
Branching


Description
~~~~~~~~~~~
The output comes from the input specified by block parameter



Dialog Box
~~~~~~~~~~
Set switch parameters number of inputs 2 connected input 1

+ number of inputs: changes the number of input ports
+ connected input: chose the connected input




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: yes
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 2 / -1 -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *switchn*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/branching/SWITCH_f.sci


Computational function (type 2)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    /* Copyright INRIA */
    #include "../machine.h"
    
    void 
    switchn(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,rpar,nrpar,
    	       ipar,nipar,inptr,insz,nin,outptr,outsz,nout)
    integer *flag,*nevprt,*nx,*nz,*ntvec,*nrpar,ipar[],*nipar,insz[],*nin,outsz[],*nout;
    double x[],xd[],z[],tvec[],rpar[];
    double *inptr[],*outptr[],*t;
    
    {
    
        int k;
        double *y;
        double *u;
        int /*nev,*/ic;
        ic=ipar[0];
        if (*nin>1) {
          y=(double *)outptr[0];
          u=(double *)inptr[ic];
          for (k=0;k<outsz[0];k++)
    	*(y++)=*(u++);  
        }
        else {
          y=(double *)outptr[ic];
          u=(double *)inptr[0];
          for (k=0;k<outsz[0];k++)
    	*(y++)=*(u++);  
        }
    }
    
    




Ramine Nikoukhah 2004-06-22

.. _Dialog Box: ://./scicos/SWITCH_f.htm#SECTION005313300000000000000
.. _Computational function (type 2): ://./scicos/SWITCH_f.htm#SECTION005313600000000000000
.. _Description: ://./scicos/SWITCH_f.htm#SECTION005313200000000000000
.. _Interfacing function: ://./scicos/SWITCH_f.htm#SECTION005313500000000000000
.. _Library: ://./scicos/SWITCH_f.htm#SECTION005313100000000000000
.. _Default properties: ://./scicos/SWITCH_f.htm#SECTION005313400000000000000


