====
"ISELECT_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 2)`_







Iselect
-------



Library
~~~~~~~
Branching


Description
~~~~~~~~~~~




Dialog Box
~~~~~~~~~~
Set parameters number of outputs 2 initial connected output 1

+ number of outputs: a scalar. Number of regular and event outputs.
+ initial connected output: an integer. It must be between 1 and the
  number of inputs.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / -1
+ number/sizes of outputs: 2 / -1 -1
+ number/sizes of activation inputs: 2 / 1 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *selector*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/branching/ISELECT_f.sci


Computational function (type 2)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    /* Copyright INRIA */
    #include "../machine.h"
    
    void 
    selector(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,rpar,nrpar,
    	       ipar,nipar,inptr,insz,nin,outptr,outsz,nout)
    integer *flag,*nevprt,*nx,*nz,*ntvec,*nrpar,ipar[],*nipar,insz[],*nin,outsz[],*nout;
    double x[],xd[],z[],tvec[],rpar[];
    double *inptr[],*outptr[],*t;
    
    {
        int k;
        double *y;
        double *u;
        int nev,ic;
        
        ic=(int)z[0];
        if ((*flag)<3) {
    	ic=-1;
    	nev=*nevprt;
    	while (nev>=1) {
    	    ic=ic+1;
    	    nev=nev/2;
    	}
        }
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

.. _Dialog Box: ://./scicos/ISELECT_f.htm#SECTION00536300000000000000
.. _Default properties: ://./scicos/ISELECT_f.htm#SECTION00536400000000000000
.. _Description: ://./scicos/ISELECT_f.htm#SECTION00536200000000000000
.. _Library: ://./scicos/ISELECT_f.htm#SECTION00536100000000000000
.. _Interfacing function: ://./scicos/ISELECT_f.htm#SECTION00536500000000000000
.. _Computational function (type 2): ://./scicos/ISELECT_f.htm#SECTION00536600000000000000


