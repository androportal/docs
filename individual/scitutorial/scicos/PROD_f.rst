====
"PROD_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 2)`_







Multiplication
--------------



Library
~~~~~~~
Non_linear


Description
~~~~~~~~~~~
The output is the element wize product of the inputs.


Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 2 / -1 -1
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *prod*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/nonlinear/PROD_f.sci


Computational function (type 2)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    /* Copyright INRIA */
    #include "../machine.h"
    
    /* Element wise product */
    
    void 
    prod(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,rpar,nrpar,
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
          y[i]=1.0;
          for (k=0;k<*nin;k++) {
    	u=(double *)inptr[k];
    	y[i]=y[i]*u[i];
          }
        }
    }




Ramine Nikoukhah 2004-06-22
.. _Library: ://./scicos/PROD_f.htm#SECTION005411100000000000000
.. _Computational function (type 2): ://./scicos/PROD_f.htm#SECTION005411500000000000000
.. _Interfacing function: ://./scicos/PROD_f.htm#SECTION005411400000000000000
.. _Default properties: ://./scicos/PROD_f.htm#SECTION005411300000000000000
.. _Description: ://./scicos/PROD_f.htm#SECTION005411200000000000000


