====
"WFILE_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Write to file
-------------



Library
~~~~~~~
Sinks


Description
~~~~~~~~~~~
This block allows user to save data in a file, in formatted and binary
mode. Each call to the block corresponds to a record in the file. Each
record has the following form: where is the value of time when block
is called and is the ith input value.


Dialog Box
~~~~~~~~~~
Set WFILE block parameters Input size 1 Output file name foo Output
Format (7(e10.3,1x)) Buffer size 2

+ Input size:a scalar. This fixes the input size
+ Output file name:a character string defining the path of the file
+ Output Format:a character string defining the Fortran format to use
  or nothing for an unformatted (binary) write. If given, the format
  must began by a left parenthesis and end by a right parenthesis.
  example: (e10.3).
+ Buffer size: To improve efficiency it is possible to buffer the
  input data. Write on the file is only done after each **Buffer size **
  calls to the block.




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
+ name of computational function: *writef*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sinks/WFILE_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine writef(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     write input to a binary or formatted file
    c     ipar(1) = lfil : file name length
    c     ipar(2) = lfmt : format length (0) if binary file
    c     ipar(3)          unused
    c     ipar(4) = N : buffer length
    c     ipar(5:4+lfil) = character codes for file name
    c     ipar(5+lfil:4+lfil+lfmt) = character codes for format if any
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    
          include '../stack.h'
          integer i,n
          integer mode(2)
    c     
          N=ipar(4)
          K=int(z(1))
          lunit=int(z(2))
    c
          if(flag.eq.2.and.nevprt.gt.0) then
    c     add new point to the buffer
             K=K+1
             z(2+K)=t
             do 01 i=1,nu
                z(2+N+(i-1)*N+K)=u(i)
     01      continue
             z(1)=K
             if(K.lt.N) return
    c     write on the file
             if (ipar(2).gt.0) then
    c     .     formatted write
                call cvstr(ipar(2),ipar(5+ipar(1)),buf,1)
                do 10 j=1,K
                   write(lunit,buf(1:ipar(2)),err=100)
         $              (z(2+N+(i-1)*N+j),i=0,nu)
     10         continue
             else
    c     .     unformatted write
                do 11 j=1,K
                   write(lunit,err=100) (z(2+N+(i-1)*N+j),i=0,nu)
     11         continue
             endif
             z(1)=0.0d0
          elseif(flag.eq.4) then
    c     file opening
             lfil=ipar(1)
             call cvstr(lfil,ipar(5),buf,1)
             lfmt=ipar(2)
             lunit=0
             if(lfmt.gt.0) then
                mode(1)=003
                mode(2)=0
                call clunit(lunit,buf(1:lfil),mode)
                if(err.gt.0) goto 100
             else
                mode(1)=103
                mode(2)=0
                call clunit(lunit,buf(1:lfil),mode)
                if(err.gt.0) goto 100
             endif
             z(1)=0
             z(2)=lunit
             z(3)=t
             call dset(nu*N,0.0d0,z(4),1)
          elseif(flag.eq.5) then
             if(lunit.eq.0) then
                return
             endif
             if(K.ge.1) then
    c     write on the file
                lfmt=ipar(2)
                if (lfmt.gt.0) then
    c     .        formatted write
                   call cvstr(lfmt,ipar(5+ipar(1)),buf,1)
                   do 20 j=1,K
                      write(lunit,buf(1:lfmt)) (z(2+N+(i-1)*N+j),i=0,nu)
     20            continue
                else
    c     .        unformatted write
                   do 21 j=1,K
                      write(lunit) (z(2+N+(i-1)*N+j),i=0,nu)
     21            continue
                endif
             endif
             lfil=ipar(1)
             call clunit(-lunit,buf(1:lfil),mode)
             if(err.gt.0) goto 100
             z(2)=0.0d0
          endif
          return
     100  continue
          err=0
          call basout(io,wte,'File '//buf(1:lfil)//' Cannot be opened')
          iflag=-1
          end



Ramine Nikoukhah 2004-06-22
.. _Description: ://./scicos/WFILE_f.htm#SECTION005211200000000000000
.. _Computational function (type 0): ://./scicos/WFILE_f.htm#SECTION005211600000000000000
.. _Library: ://./scicos/WFILE_f.htm#SECTION005211100000000000000
.. _Interfacing function: ://./scicos/WFILE_f.htm#SECTION005211500000000000000
.. _Default properties: ://./scicos/WFILE_f.htm#SECTION005211400000000000000
.. _Dialog Box: ://./scicos/WFILE_f.htm#SECTION005211300000000000000


