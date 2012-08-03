====
"WRITEC_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 2)`_







Write binary data
-----------------



Library
~~~~~~~
Sinks


Description
~~~~~~~~~~~
This block allows user to write datas in a C binary file.


Dialog Box
~~~~~~~~~~
Set WRITEC block parameters Input size 1 Output file name foo Output
Format c Buffer size 2 Swap mode 0/1 0

+ Input size: a scalar, the size of the input.
+ Output file name: a character string defining the output file name.
+ Output Format: a character string defining the format to use
+ Buffer size: o improve efficiency it is possible to buffer the input
  data. read on the file is only done after each **Buffer size** call to
  the block.
+ Swap mode 0/1:With **Swap mode=1** the file is supposed to be coded
  in ``little endian IEEE format'' and data are swaped if necessary to
  match the IEEE format of the processor. If **Swap mode=0** then
  automatic bytes swap is disabled.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *writec*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sinks/WRITEC_f.sci


Computational function (type 2)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include <stdio.h>
    #include <string.h>
    
    #include "../machine.h"
    
    extern  int C2F(cvstr)  __PARAMS((integer *,integer *,char *,integer *,unsigned long int));
    extern void sciprint __PARAMS((char *fmt,...));
    void mput2  __PARAMS((FILE *fa, integer swap, double *res, integer n, char *type, integer *ierr));
    
    void 
    writec(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,rpar,nrpar,
    	       ipar,nipar,inptr,insz,nin,outptr,outsz,nout)
    integer *flag,*nevprt,*nx,*nz,*ntvec,*nrpar,ipar[],*nipar,insz[],*nin,outsz[],*nout;
    double x[],xd[],z[],tvec[],rpar[];
    double *inptr[],*outptr[],*t;
         /*
         ipar[1]   = lfil : file name length
         ipar[2:4] = fmt  : numbers type ascii code
         ipar[5]   = n : buffer length in number of records
         ipar[6]   = swap
         ipar[7:6+lfil] = character codes for file name
         */
    {
      char str[100],type[4];
      int job = 1,three=3;
      FILE *fd;
      int n, k,/* m,*/ i, ierr;
      double *buffer,*record;
    /*  long offset;*/
      
    
      --ipar;
      --z;
      fd=(FILE *)(long)z[2];
      buffer = (z+3);
      ierr=0;
      /*
        k    : record counter within the buffer
      */
    
      if (*flag==2&&*nevprt>0) { /* add a new record to the buffer */
        n    = ipar[5];
        k    = (int)z[1];
        /* copy current record to output */
        record=buffer+(k-1)*(insz[0]);
    
        for (i=0;i<insz[0];i++)
          record[i] = *(inptr[0]+i);
        if (k<n) 
          z[1] = z[1]+1.0;
        else {/* buffer is full write it to the file */
          F2C(cvstr)(&three,&(ipar[2]),type,&job,strlen(type));
          for (i=2;i>=0;i--)
    	if (type[i]!=' ') { type[i+1]='\0';break;}
          mput2(fd,ipar[6],buffer,ipar[5]*insz[0],type,&ierr);
          if(ierr!=0) {
    	*flag = -3;
    	return;
          }
          z[1] = 1.0;
        }
      }
      else if (*flag==4) {
        F2C(cvstr)(&(ipar[1]),&(ipar[7]),str,&job,strlen(str));
        str[ipar[1]] = '\0';
        fd = fopen(str,"wb");
        if (!fd ) {
          sciprint("Could not open the file!\n");
          *flag = -3;
          return;
        }
        z[2]=(long)fd;
        z[1] = 1.0;
      }
      else if (*flag==5) {
        if(z[2]==0) return;
        k    =(int) z[1];
        if (k>=1) {/* flush rest of buffer */
          F2C(cvstr)(&three,&(ipar[2]),type,&job,strlen(type));
          for (i=2;i>=0;i--)
    	if (type[i]!=' ') { type[i+1]='\0';break;}
          mput2(fd,ipar[6],buffer,(k-1)*insz[0],type,&ierr);
          if(ierr!=0) {
    	*flag = -3;
    	return;
          }
        }
        fclose(fd);
        z[2] = 0.0;
      }
      return;
    }



Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/WRITEC_f.htm#SECTION00524400000000000000
.. _Library: ://./scicos/WRITEC_f.htm#SECTION00524100000000000000
.. _Interfacing function: ://./scicos/WRITEC_f.htm#SECTION00524500000000000000
.. _Description: ://./scicos/WRITEC_f.htm#SECTION00524200000000000000
.. _Computational function (type 2): ://./scicos/WRITEC_f.htm#SECTION00524600000000000000
.. _Dialog Box: ://./scicos/WRITEC_f.htm#SECTION00524300000000000000


