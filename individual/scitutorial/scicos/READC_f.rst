====
"READC_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 2)`_







Read binary data
----------------



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
This block allows user to read datas in a C file. Output record
selection and Time record Selection allows the user to select data
among file records. Each call to the block advance one record in the
file.


Dialog Box
~~~~~~~~~~
Set READC block parameters Time record selection [] Outputs record
selection 1 Input file name foo Input Format d Record size 1 Buffer
size (in records) 20 Initial record index 1 Swap mode 0/1 0

+ Time record selection: an empty matrix or a positive integer. If an
  integer i is given the i th element of the read record is assumed to
  be the date of the output event. If empty no output event exists.
+ Outputs record selection: a vector of positive integer. ,The th
  element of the read record gives the value of th output.
+ Input file name:a character string defining the path of the file.
+ Input Format: a character string defining the format to use.
+ Record size: The file is supposed to be formed by a sequence of data
  with same format. these data are organized in a sequence of record
  each of them containing Record size data.
+ Buffer size : To improve efficiency it is possible to buffer the
  input data. read on the file is only done after each Buffer size call
  to the block.
+ Initial record index: a scalar. This fixes the first record of the
  file to use.
+ Swap mode 0/1: With **Swap mode=1** the file is supposed to be coded
  in "little endian IEEE format" and data are swaped if necessary to
  match the IEEE format of the processor. If **Swap mode=0** then
  automatic bytes swap is disabled.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *readc*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/READC_f.sci


Computational function (type 2)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    #include <stdio.h>
    #include <string.h>
    
    #include "../machine.h"
    extern  int C2F(cvstr)  __PARAMS((integer *,integer *,char *,integer *,unsigned long int));
    extern void sciprint __PARAMS((char *fmt,...));
    extern void mget2 __PARAMS((FILE *fa, integer swap, double *res, integer n, char *type, integer *ierr));
    
    
    int worldsize(type)
    char type[4];
    {
      char c;
      int wsz;
    
      c=type[0];
      if (c=='u') c=type[1];
      switch ( c )
        {
        case 'l' : wsz=sizeof(long);
          break;
        case 's' : wsz=sizeof(short);
          break;
        case 'c' : wsz=sizeof(char);
          break;
        case 'd' : wsz=sizeof(double);
          break;
        case 'f' : wsz=sizeof(float); 
          break;
        }
      return wsz;
    }
    void 
    readc(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,rpar,nrpar,
    	       ipar,nipar,inptr,insz,nin,outptr,outsz,nout)
         /*
         ipar[1]   = lfil : file name length
         ipar[2:4] = fmt  : numbers type ascii code
         ipar[5]   = is there a time record
         ipar[6]   = n : buffer length in number of records
         ipar[7]   = maxvoie : record size
         ipar[8]   = swap
         ipar[9]   = first : first record to read
         ipar[10:9+lfil] = character codes for file name
         ipar[10+lfil:9+lfil++ny+ievt] = reading mask
         */
    integer *flag,*nevprt,*nx,*nz,*ntvec,*nrpar,ipar[],*nipar;
    integer insz[],*nin,outsz[],*nout;
    double x[],xd[],z[],tvec[],rpar[];
    double *inptr[],*outptr[],*t;
    
    {
      char str[100],type[4];
      int job = 1,three=3;
      FILE *fd;
      int n, k, ievt, kmax,/* no,*//* lfil,*/ m, i, irep,/* nm,*/ ierr;
      double *buffer,*record;
      int *mask;
      long offset;
      
    
      --ipar;
      --z;
      fd=(FILE *)(long)z[3];
      buffer = (z+4);
      mask = ipar+11+ipar[1]-ipar[5];
        
      /*
        k    : record counter within the buffer
        kmax :  number of records in the buffer
      */
    
      if (*flag==1) {
        n    = ipar[6];
        ievt = ipar[5];
        k    = (int)z[1];
        /* copy current record to output */
        record=buffer+(k-1)*ipar[7]-1;
    
        for (i=0;i<outsz[0];i++)
          *(outptr[0]+i)=record[mask[ievt+i]];
    
        if (*nevprt>0) {
          /*     discrete state */
          kmax = (int)z[2];
          if (k>=kmax&&kmax==n) {
    	/*     read a new buffer */
    	m=ipar[6]*ipar[7];
    	F2C(cvstr)(&three,&(ipar[2]),type,&job, strlen(type));
    	for (i=2;i>=0;i--)
    	  if (type[i]!=' ') { type[i+1]='\0';break;}
    	ierr=0;
    	mget2(fd,ipar[8],buffer,m,type,&ierr);
    	if (ierr>0) {
    	  sciprint("Read error!\n");
    	  fclose(fd);
    	  z[3] = 0.0;
    	  *flag = -1;
    	  return;
    	}
    	else if (ierr<0) { /* EOF reached */
    	  kmax=-(ierr+1)/ipar[7];
    	}
    	else
    	  kmax=ipar[6];
    
    	z[1] = 1.0;
    	z[2] = kmax;
          }
          else if (k<kmax) 
    	z[1] = z[1]+1.0;
        }
      }
      else if (*flag==3) {
        ievt = ipar[5];
        n    = ipar[6];
        k    = (int)z[1];
        kmax = (int) z[2];
        if (k > kmax && kmax < n) {
          if(ievt) 
    	tvec[0] = *t-1.0;
          else
    	tvec[0] = *t*(1.0+0.0000000001);
        }
        else {
          record=buffer+(k-1)*ipar[7]-1;
          if(ievt) tvec[0] = record[mask[0]];
        }
      }
      else if (*flag==4) {
        F2C(cvstr)(&(ipar[1]),&(ipar[10]),str,&job,strlen(str));
        str[ipar[1]] = '\0';
        fd = fopen(str,"rb");
        if (!fd ) {
          sciprint("Could not open the file!\n");
          *flag = -1;
          return;
        }
        z[3]=(long)fd;
        /* skip first records */
        if (ipar[9]>1) {
          F2C(cvstr)(&three,&(ipar[2]),type,&job,strlen(type));
          for (i=2;i>=0;i--)
    	  if (type[i]!=' ') { type[i+1]='\0';break;}
          offset=(ipar[9]-1)*ipar[7]*worldsize(type);
          irep = fseek(fd,offset,0) ;
          if ( irep != 0 ) 
    	{
    	  sciprint("Read error\r\n");
    	  *flag = -1;
    	  fclose(fd);
    	  z[3] = 0.0;
    	  return;
    	}
        }
        /* read first buffer */
        m=ipar[6]*ipar[7];
        F2C(cvstr)(&three,&(ipar[2]),type,&job,strlen(type));
        for (i=2;i>=0;i--)
    	  if (type[i]!=' ') { type[i+1]='\0';break;}
        mget2(fd,ipar[8],buffer,m,type,&ierr);
        if (ierr>0) {
          sciprint("Read error!\n");
          *flag = -1;
          fclose(fd);
          z[3] = 0.0;
          return;
        }
        else if (ierr<0) { /* EOF reached */
          kmax=-(ierr+1)/ipar[7];
        }
        else
          kmax=ipar[6];
    
        z[1] = 1.0;
        z[2] = kmax;
      }
      else if (*flag==5) {
        if(z[3]==0) return;
        fclose(fd);
        z[3] = 0.0;
      }
      return;
    }



Ramine Nikoukhah 2004-06-22
.. _Dialog Box: ://./scicos/READC_f.htm#SECTION005115300000000000000
.. _Default properties: ://./scicos/READC_f.htm#SECTION005115400000000000000
.. _Interfacing function: ://./scicos/READC_f.htm#SECTION005115500000000000000
.. _Library: ://./scicos/READC_f.htm#SECTION005115100000000000000
.. _Computational function (type 2): ://./scicos/READC_f.htm#SECTION005115600000000000000
.. _Description: ://./scicos/READC_f.htm#SECTION005115200000000000000


