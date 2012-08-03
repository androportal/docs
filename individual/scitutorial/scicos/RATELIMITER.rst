====
"RATELIMITER"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Rate limiter
------------



Library
~~~~~~~
Others


Description
~~~~~~~~~~~
The output slope is bounded by block paramters, otherwise it follows
the input.



Dialog Box
~~~~~~~~~~
Set rate limiter parameters max slope 1 min slope -1

+ max slope: the upper slope which constraints the output
+ min slope: the lower slope which constraints the output




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *ratelimiter*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/RATELIMITER.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    
    #if WIN32
    #define NULL    0
    #endif
    
    void ratelimiter(scicos_block *block,int flag)
    {/*  rpar[0]=rising rate limit, rpar[1]=falling rate limit */
      double* pw,rate,t;
      if (flag == 4){/* the workspace is used to store previous values */
        if ((*block->work=
    	 scicos_malloc(sizeof(double)*4))== NULL ) {
          set_block_error(-16);
          return;
        }
        pw=*block->work; 
        pw[0]=0.0;
        pw[1]=0.0;
        pw[2]=0.0;
        pw[3]=0.0;
      }else  if (flag == 5){
        scicos_free(*block->work);
      } else if (flag==1) {
        if (get_phase_simulation()==1) do_cold_restart();
        pw=*block->work; 
        t=get_scicos_time();
        if(t>pw[2]){
          pw[0]=pw[2];
          pw[1]=pw[3];
          rate=(block->inptr[0][0]-pw[1])/(t-pw[0]);
        }
        else if(t<=pw[2]){
          if(t>pw[0]){
    	rate=(block->inptr[0][0]-pw[1])/(t-pw[0]);
          }else{
    	rate=0.0;
          }
        }
        if(rate>block->rpar[0]){
          block->outptr[0][0]=(t-pw[0])*block->rpar[0]+pw[1];
        } else if(rate<block->rpar[1]){
          block->outptr[0][0]=(t-pw[0])*block->rpar[1]+pw[1];
        }else{
          block->outptr[0][0]=block->inptr[0][0];
        }
        pw[2]=t;
        pw[3]=block->outptr[0][0];
      }
    }




Ramine Nikoukhah 2004-06-22

.. _Description: ://./scicos/RATELIMITER.htm#SECTION00577200000000000000
.. _Computational function (type 4): ://./scicos/RATELIMITER.htm#SECTION00577600000000000000
.. _Library: ://./scicos/RATELIMITER.htm#SECTION00577100000000000000
.. _Interfacing function: ://./scicos/RATELIMITER.htm#SECTION00577500000000000000
.. _Dialog Box: ://./scicos/RATELIMITER.htm#SECTION00577300000000000000
.. _Default properties: ://./scicos/RATELIMITER.htm#SECTION00577400000000000000


