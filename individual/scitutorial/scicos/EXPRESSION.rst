====
"EXPRESSION"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 4)`_







Mathematical expression
-----------------------



Library
~~~~~~~
Others


Description
~~~~~~~~~~~
The Expression block allows the definition of a formula in terms of
u1,u2,u3... The u's can be scalar inputs of the block or scalar
components of the unique input vector. The formula must be defined in
Scilab syntax using elementary operators and the following functions:
sin, cos, tan, exp, log, sinh, cosh, tanh, int, round, ceil, floor,
sign, abs, max, min, asin, acos, atan, asinh, acosh, atanh, atan2,
log10.


Dialog Box
~~~~~~~~~~
Give a scalar scilab expression using inputs u1, u2,... ex:
(dd*u1+sin(u2) 0)*u3 Note that here dd must be defined in context
number of inputs 2 scilab expression (u1 0)*sin(u2)2 use zero-crossing
(0: no, 1 yes) 1

+ number of inputs: Block input can be a scalar or vector.
+ scilab expression: The Scilab expression applied to the input.
+ use zero-crossing :Select to enable zero crossing detection.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: yes
+ mode: yes
+ number/sizes of inputs: 2 / 1 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *evaluate_expr*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/EXPRESSION.sci


Computational function (type 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include "scicos_block.h"
    #include <math.h>
    #if WIN32
    #include <float.h>
    #endif
    
    #if defined(solaris)
    #include <ieeefp.h>
    int isinf(double x) { return !finite(x) && x==x; }
    #endif
    
    #if WIN32
    /*
    arcsinh z = log (z+sqrt(1+z2))
    */
    double asinh(double x)
    {
      return log(x+sqrt(x*x+1));
    }
    
    double acosh(double x)
    {
      return log(x+sqrt(x*x-1));
    }
    
    /* atanh(x)
     *      For x>=0.5
     *                  1              2x                          x
     *	atanh(x) = --- * log(1 + -------) = 0.5 * log1p(2 * --------)
     *                  2             1 - x                      1 - x
     *	
     * 	For x<0.5
     *	atanh(x) = 0.5*log1p(2x+2x*x/(1-x))
     *
     */
    
    double atanh(double x)
    {
    	if (x >=0.5) 
    	{
    		return 0.5*log((1+x)/(1-x));
    	}
    	else
    	{
    		return 0.5*log((2*x)+(2*x)*x/(1-x));
    	}
      
    }
    #endif
    
    void evaluate_expr(scicos_block *block,int flag)
    {
      static double stack [1000];
      static int count,bottom,nzcr,i,phase; 
      int j;  
      if (flag==1||flag==9){
        phase=get_phase_simulation();
        bottom=-1;
        count=-1;
        nzcr=-1;
        while (count<block->nipar-1){
          count=count+1;
          switch (block->ipar[count]) {
          case 2:
    	count=count+1;
    	bottom=bottom+1;
    	if(bottom>999){
    	  set_block_error(-16);
    	  return;
    	}
    	if (block->nin>1){
    	  stack[bottom]=block->inptr[block->ipar[count]-1][0];
    	}else{
    	  j=block->ipar[count]-1;
    	  if (j<block->insz[0]){
    	    stack[bottom]=block->inptr[0][block->ipar[count]-1];
    	  }else{
    	    stack[bottom]=0.;
    	  }
    	}
    	break;
          case 6:
    	count=count+1;
    	bottom=bottom+1;
    	if(bottom>999){
    	  set_block_error(-16);
    	  return;
    	}
    	stack[bottom]=block->rpar[block->ipar[count]-1];
    	break;
          case 5:
    	count=count+1;
    	switch (block->ipar[count]) {
    	case 1:
    	  stack[bottom-1]=stack[bottom-1]+stack[bottom];
    	  bottom=bottom-1;
    	  break;
    	case 2:
    	  stack[bottom-1]=stack[bottom-1]-stack[bottom];
    	  bottom=bottom-1;
    	  break;
    	case 3:
    	  stack[bottom-1]=stack[bottom-1]*stack[bottom];
    	  bottom=bottom-1;
    	  break;
    	case 7:
    	  stack[bottom-1]=stack[bottom-1]/stack[bottom];
    	  bottom=bottom-1;
    	  break;
    	case 15:
    	  stack[bottom-1]=pow(stack[bottom-1],stack[bottom]);
    	  bottom=bottom-1;
    	  break;
    	case 16: /* case == */
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    block->g[nzcr]=stack[bottom-1]-stack[bottom];
    	    if(phase==1) {
    	      block->mode[nzcr]=(stack[bottom-1]==stack[bottom]);
    	    }
    	  }
    	  if(phase==1||block->ng==0){
    	    i=(stack[bottom-1]==stack[bottom]);
    	  } else{
    	    i=block->mode[nzcr];
    	  }
    	  stack[bottom-1]=(double)i;
    	  bottom=bottom-1;
    	  break;
    
    	case 17:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    block->g[nzcr]=stack[bottom-1]-stack[bottom];
    	    if(phase==1) {
    	      block->mode[nzcr]=(stack[bottom-1]<stack[bottom]);
    	    }
    	  }
    	  if(phase==1||block->ng==0){
    	    i=(stack[bottom-1]<stack[bottom]);
    	  } else{
    	    i=block->mode[nzcr];
    	  }
    	  stack[bottom-1]=(double)i;
    	  bottom=bottom-1;
    	  break;
    	case 18:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    block->g[nzcr]=stack[bottom-1]-stack[bottom];
    	    if(phase==1) {
    	      block->mode[nzcr]=(stack[bottom-1]>stack[bottom]);
    	    }
    	  }
    	  if(phase==1||block->ng==0){
    	    i=(stack[bottom-1]>stack[bottom]);
    	  } else{
    	    i=block->mode[nzcr];
    	  }
    	  stack[bottom-1]=(double)i;
    	  bottom=bottom-1;
    	  break;
    	case 19:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    block->g[nzcr]=stack[bottom-1]-stack[bottom];
    	    if(phase==1) {
    	      block->mode[nzcr]=(stack[bottom-1]<=stack[bottom]);
    	    }
    	  }
    	  if(phase==1||block->ng==0){
    	    i=(stack[bottom-1]<=stack[bottom]);
    	  } else{
    	    i=block->mode[nzcr];
    	  }
    	  stack[bottom-1]=(double)i;
    	  bottom=bottom-1;
    	  break;
    	case 20:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    block->g[nzcr]=stack[bottom-1]-stack[bottom];
    	    if(phase==1) {
    	      block->mode[nzcr]=(stack[bottom-1]>=stack[bottom]);
    	    }
    	  }
    	  if(phase==1||block->ng==0){
    	    i=(stack[bottom-1]>=stack[bottom]);
    	  } else{
    	    i=block->mode[nzcr];
    	  }
    	  stack[bottom-1]=(double)i;
    	  bottom=bottom-1;
    	  break;
    	case 21:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    block->g[nzcr]=stack[bottom-1]-stack[bottom];
    	    if(phase==1) {
    	      block->mode[nzcr]=(stack[bottom-1]!=stack[bottom]);
    	    }
    	  }
    	  if(phase==1||block->ng==0){
    	    i=(stack[bottom-1]!=stack[bottom]);
    	  } else{
    	    i=block->mode[nzcr];
    	  }
    	  stack[bottom-1]=(double)i;
    	  bottom=bottom-1;
    	  break;
    	case 28:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    block->g[nzcr]=stack[bottom-1]-stack[bottom];
    	    if(phase==1) {
    	      block->mode[nzcr]=((int)stack[bottom-1]||(int)stack[bottom]);
    	    }
    	  }
    	  if(phase==1||block->ng==0){
    	    i=((int)stack[bottom-1]||(int)stack[bottom]);
    	  } else{
    	    i=block->mode[nzcr];
    	  }
    	  stack[bottom-1]=(double)i;
    	  bottom=bottom-1;
    	  break;
    	case 29:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    block->g[nzcr]=stack[bottom-1]-stack[bottom];
    	    if(phase==1) {
    	      block->mode[nzcr]=((int)stack[bottom-1]&&(int)stack[bottom]);
    	    }
    	  }
    	  if(phase==1||block->ng==0){
    	    i=((int)stack[bottom-1]&&(int)stack[bottom]);
    	  } else{
    	    i=block->mode[nzcr];
    	  }
    	  stack[bottom-1]=(double)i;
    	  bottom=bottom-1;
    	  break;
    
    	case 30:
    	  if (flag==9) {
    	    block->g[nzcr]=stack[bottom];
    	    if(phase==1) {
    	      block->mode[nzcr]=(0.0==stack[bottom]);
    	    }
    	  }
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if(phase==1||block->ng==0){
    	    i=(stack[bottom]==0.0);
    	  }else{
    	    i=block->mode[nzcr];
    	  }
    	  if (i){
    	    stack[bottom]=1.0;
    	  }else{
    	    stack[bottom]=0.0;   
    	  }
    	  break;
    	case 99:
    	  stack[bottom]=-stack[bottom];
    	  break;
    	case 101:
    	  stack[bottom]=sin(stack[bottom]);
    	  break;
    	case 102:
    	  stack[bottom]=cos(stack[bottom]);
    	  break;
    	case 103:
    	  stack[bottom]=tan(stack[bottom]);
    	  break;
    	case 104:
    	  stack[bottom]=exp(stack[bottom]);
    	  break;
    	case 105:
    	  stack[bottom]=log(stack[bottom]);
    	  break;
    	case 106:
    	  stack[bottom]=sinh(stack[bottom]);
    	  break;
    	case 107:
    	  stack[bottom]=cosh(stack[bottom]);
    	  break;
    	case 108:
    	  stack[bottom]=tanh(stack[bottom]);
    	  break;
    
    	case 109:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    if (stack[bottom]>0) {
    	      i=floor(stack[bottom]);
    	    }else{
    	      i=ceil(stack[bottom]);
    	    }
    	    if(i==0)  {
    	      block->g[nzcr]=(stack[bottom]-1)*(stack[bottom]+1);
    	    }else if(i>0){
    	      block->g[nzcr]=(stack[bottom]-i-1.)*(stack[bottom]-i);
    	    }else{
    	      block->g[nzcr]=(stack[bottom]-i)*(stack[bottom]-i+1);
    	    }
    	    if(i%2)  block->g[nzcr]=-block->g[nzcr];
    	    if(phase==1) block->mode[nzcr]=i;
    	  }
    	  if(phase==1||block->ng==0){
    	    if (stack[bottom]>0) {
    	      stack[bottom]=floor(stack[bottom]);
    	    }else{
    	      stack[bottom]=ceil(stack[bottom]);
    	    }
    	  }else{
    	    stack[bottom]=(double) block->mode[nzcr];
    	  }
    	  break;
    	  /*
    	  if (stack[bottom]>0) {
    	    stack[bottom]=floor(stack[bottom]);
    	  }else{
    	    stack[bottom]=ceil(stack[bottom]);
    	    }*/
    	  break;
    	case 110:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    if (stack[bottom]>0) {
    	      i=floor(stack[bottom]+.5);
    	    }else{
    	      i=ceil(stack[bottom]-.5);
    	    }
    	    block->g[nzcr]=(stack[bottom]-i-.5)*(stack[bottom]-i+.5);
    	    if(i%2)  block->g[nzcr]=-block->g[nzcr];
    	    if(phase==1) block->mode[nzcr]=i;
    	  }
    	  if(phase==1||block->ng==0){
    	    if (stack[bottom]>0) {
    	      stack[bottom]=floor(stack[bottom]+.5);
    	    }else{
    	      stack[bottom]=ceil(stack[bottom]-.5);
    	    }
    	  }else{
    	    stack[bottom]=(double) block->mode[nzcr];
    	  }
    	  break;
    	  /*  if (stack[bottom]>0) {
    	    stack[bottom]=floor(stack[bottom]+.5);
    	  }else{
    	    stack[bottom]=ceil(stack[bottom]-.5);
    	  }*/
    	case 111:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    i=ceil(stack[bottom]);
    	    block->g[nzcr]=(stack[bottom]-i)*(stack[bottom]-i+1);
    	    if(i%2)  block->g[nzcr]=-block->g[nzcr];
    	    if(phase==1) block->mode[nzcr]=i;
    	  }
    	  if(phase==1||block->ng==0){
    	    stack[bottom]=ceil(stack[bottom]);
    	  }else{
    	    stack[bottom]=(double) block->mode[nzcr];
    	  }
    	  break;
    	case 112:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    i=floor(stack[bottom]);
    	    block->g[nzcr]=(stack[bottom]-i-1)*(stack[bottom]-i);
    	    if(i%2)  block->g[nzcr]=-block->g[nzcr];
    	    if(phase==1) block->mode[nzcr]=i;
    	  }
    	  if(phase==1||block->ng==0){
    	    stack[bottom]=floor(stack[bottom]);
    	  }else{
    	    stack[bottom]=(double) block->mode[nzcr];
    	  }
    	  break;
    	case 113:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    if (stack[bottom]>0) {
    	      i=1;
    	    }else if (stack[bottom]<0){
    	      i=-1;
    	    }else{
    	      i=0;
    	    }
    	    block->g[nzcr]=stack[bottom];
    	    if(phase==1) block->mode[nzcr]=i;
    	  }
    	  if(phase==1||block->ng==0){
    	    if (stack[bottom]>0) {
    	      stack[bottom]=1.0;
    	    }else if(stack[bottom]<0){
    	      stack[bottom]=-1.0;
    	    }else{
    	      stack[bottom]=0.0;
    	    }
    	  }else{
    	    stack[bottom]=(double) block->mode[nzcr];
    	  }
    	  break;
    	  /* if (stack[bottom]>0) {
    	    stack[bottom]=1.0;
    	  }else if(stack[bottom]<0){
    	    stack[bottom]=-1.0;
    	  }else{
    	    stack[bottom]=0.0;
    	    }*/
    	case 114:  /* abs */
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    if (stack[bottom]>0) {
    	      i=1;
    	    }else if (stack[bottom]<0){
    	      i=-1;
    	    }else{
    	      i=0;
    	    }
    	    block->g[nzcr]=stack[bottom];
    	    if(phase==1) block->mode[nzcr]=i;
    	  }
    	  if(phase==1||block->ng==0){
    	    if (stack[bottom]>0) {
    	      stack[bottom]=stack[bottom];
    	    }else {
    	      stack[bottom]=-stack[bottom];
    	    }
    	  }else{
    	    stack[bottom]=stack[bottom]*(block->mode[nzcr]);
    	  }
    	  break;
    	  /* if (stack[bottom]>0) {
    	    stack[bottom]=stack[bottom];
    	  }else {
    	    stack[bottom]=-stack[bottom];
    	    }*/
    	case 115:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    if (stack[bottom]>stack[bottom-1]) {
    	      i=0;
    	    }else {
    	      i=1;
    	    }
    	    block->g[nzcr]=stack[bottom]-stack[bottom-1];
    	    if(phase==1) block->mode[nzcr]=i;
    	  }
    	  if(phase==1||block->ng==0){
    	    stack[bottom-1]=max(stack[bottom-1],stack[bottom]);
    	  }else{
    	    stack[bottom-1]=stack[bottom-block->mode[nzcr]];
    	  }
    	  bottom=bottom-1;
    	  break;
    	case 116:
    	  if(block->ng>0) nzcr=nzcr+1;
    	  if (flag==9) {
    	    if (stack[bottom]<stack[bottom-1]) {
    	      i=0;
    	    }else {
    	      i=1;
    	    }
    	    block->g[nzcr]=stack[bottom]-stack[bottom-1];
    	    if(phase==1) block->mode[nzcr]=i;
    	  }
    	  if(phase==1||block->ng==0){
    	    stack[bottom-1]=min(stack[bottom-1],stack[bottom]);
    	  }else{
    	    stack[bottom-1]=stack[bottom-block->mode[nzcr]];
    	  }
    	  bottom=bottom-1;
    	  break;
    	case 117:
    	  stack[bottom]=asin(stack[bottom]);
    	  break;
    	case 118:
    	  stack[bottom]=acos(stack[bottom]);
    	  break;
    	case 119:
    	  stack[bottom]=atan(stack[bottom]);
    	  break;
    	case 120:
    	  stack[bottom]=asinh(stack[bottom]);
    	  break;
    	case 121:
    	  stack[bottom]=acosh(stack[bottom]);
    	  break;
    	case 122:
    	  stack[bottom]=atanh(stack[bottom]);
    	  break;
    	case 123:
    	  stack[bottom-1]=atan2(stack[bottom-1],stack[bottom]);
    	  bottom=bottom-1;
    	  break;
    
    	case 124:
    	  stack[bottom]=log10(stack[bottom]);
    	  break;
    	}
          }
        }
        #if WIN32
        if(!_finite(stack[bottom])||_isnan(stack[bottom])){
        #else
         if(isinf(stack[bottom])||isnan(stack[bottom])){
        #endif
          set_block_error(-2);
          return;
        }else{
          block->outptr[0][0]=stack[bottom];
        }
      }
    }



Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/EXPRESSION.htm#SECTION005414400000000000000
.. _Interfacing function: ://./scicos/EXPRESSION.htm#SECTION005414500000000000000
.. _Library: ://./scicos/EXPRESSION.htm#SECTION005414100000000000000
.. _Computational function (type 4): ://./scicos/EXPRESSION.htm#SECTION005414600000000000000
.. _Description: ://./scicos/EXPRESSION.htm#SECTION005414200000000000000
.. _Dialog Box: ://./scicos/EXPRESSION.htm#SECTION005414300000000000000


