====
"DERIV"
====

Subsections

+ `Library`_
+ `Description`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Derivative
----------



Library
~~~~~~~
Linear


Description
~~~~~~~~~~~
The Derivative block approximates the derivative of its input by
computing:






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
+ name of computational function: *deriv*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/linear/DERIV.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    
    #include "scicos_block.h"
    #include <math.h>
    
    #if WIN32
    #define NULL    0
    #endif
    
    void deriv(scicos_block *block,int flag)
    { 
      double* rw;
      double t,dt;
      int i;
      if (flag == 4){/* the workspace is used to store previous values */
        if ((*block->work=
    	 scicos_malloc(sizeof(double)*2*(1+block->insz[0])))== NULL ) {
          set_block_error(-16);
          return;
        }
        rw=*block->work; 
        t=get_scicos_time();
        rw[0]=t;
        rw[1]=t;
        for(i=0;i<block->insz[0];++i){
          rw[2+2*i]=0;
          rw[3+2*i]=0;
        }
      }else  if (flag == 5){
        scicos_free(*block->work);
      }else  if (flag == 1) {
        rw=*block->work;
        t=get_scicos_time();
        if(t>rw[1]) {
          rw[0]=rw[1];
          for(i=0;i<block->insz[0];++i)  {rw[2+2*i]=rw[3+2*i];}
        }
        rw[1]=t;
        for(i=0;i<block->insz[0];++i) {
          rw[3+2*i]=block->inptr[0][i];
        }
        dt=rw[1]-rw[0];
    
        if(dt!=0.0) {
          for(i=0;i<block->insz[0];++i)
    	block->outptr[0][i]=(rw[3+2*i]-rw[2+2*i])/dt;
        }
      }
    }
      




Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/DERIV.htm#SECTION005816200000000000000
.. _Default properties: ://./scicos/DERIV.htm#SECTION005816300000000000000
.. _Interfacing function: ://./scicos/DERIV.htm#SECTION005816400000000000000
.. _Library: ://./scicos/DERIV.htm#SECTION005816100000000000000
.. _Computational function (type 4): ://./scicos/DERIV.htm#SECTION005816500000000000000


