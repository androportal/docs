====
"SUM_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 2)`_







Addition
--------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 3 / -1 -1 -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *plusblk*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/SUM_f.sci


Computational function (type 2)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    /* Copyright INRIA */
    #include "../machine.h"
    
    /* Element wise som */
    
    void 
    plusblk(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,rpar,nrpar,
    	       ipar,nipar,inptr,insz,nin,outptr,outsz,nout)
         integer *flag,*nevprt,*nx,*nz,*ntvec,*nrpar,ipar[],*nipar,insz[];
         integer *nin,outsz[],*nout;
         double x[],xd[],z[],tvec[],rpar[];
         double *inptr[],*outptr[],*t;
    {
        int k,i,n;
        double *y;
        double *u;
    
        n=outsz[0]; /* insz[0]==insz[1] .. ==insz[*nin]== outsz[0] */
    
        y=(double *)outptr[0];
    
        for (i=0;i<n;i++) {
          y[i]=0.0;
          for (k=0;k<*nin;k++) {
    	u=(double *)inptr[k];
    	y[i]=y[i]+u[i];
          }
        }
    }




Ramine Nikoukhah 2004-06-22

.. _Interfacing function: ://./scicos/SUM_f.htm#SECTION005815400000000000000
.. _Default properties: ://./scicos/SUM_f.htm#SECTION005815300000000000000
.. _Description: ://./scicos/SUM_f.htm#SECTION005815200000000000000
.. _Library: ://./scicos/SUM_f.htm#SECTION005815100000000000000
.. _Computational function (type 2): ://./scicos/SUM_f.htm#SECTION005815500000000000000


