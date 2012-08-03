====
"RFILE_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Read from file
--------------



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
This block allows user to read datas in a file, in formatted or binary
mode. **Output record selection** and **Time record Selection** allows
the user to select data among file records. Each call to the block
advance one record in the file.


Dialog Box
~~~~~~~~~~
Set RFILE block parameters - a binary file if no format given - a
formatted file if a format (fortran type) isgiven Time record
selection [] Outputs record selection 1 Input file name foo Input
Format (7(e10.3,1x)) Buffer size 2

+ Time record selection: an empty matrix or a positive integer. If an
  integer is given the th element of the read record is assumed to be
  the date of the output event. If empty no output event exists.
+ Outputs record selection: a vector of positive integer. . The th
  element of the read record gives the value of i th output.
+ Input file name: a character string defining the path of the file
+ Input Format: a character string defining the Fortran format to use
  or nothing for an unformatted (binary) write. If given, the format
  must began by a left parenthesis and end by a right parenthesis.
  example: .
+ Buffer size: To improve efficiency it is possible to buffer the
  input data. read on the file is only done after each **Buffer size**
  call to the block.
+ Output size:a scalar. This fixes the number of ``value'' read.




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
+ name of computational function: *readf*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/RFILE_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine readf(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     write read from a binary or formatted file
          include '../stack.h'
    c     ipar(1) = lfil : file name length
    c     ipar(2) = lfmt : format length (0) if binary file
    c     ipar(3) = ievt  : 1 if each data have a an associated time
    c     ipar(4) = N : buffer length
    c     ipar(5:4+lfil) = character codes for file name
    c     ipar(5+lfil:4+lfil+lfmt) = character codes for format if any
    c     ipar(5+lfil+lfmt:5+lfil+lfmt+ny+ievt) = reading mask
    
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
    c
          integer n
          integer mode(2)
    c
          if(flag.eq.1) then
    c     discrete state
             n=ipar(4)
             k=int(z(1))
             ievt=ipar(3)
             kmax=int(z(2))
             lunit=int(z(3))
             if(k+1.gt.kmax.and.kmax.eq.n) then
    c     output
                call dcopy(ny,z(3+n*ievt+k),n,y,1)
    c     .     read a new buffer
                no=(nz-3)/N
                call bfrdr(lunit,ipar,z(4),no,kmax,ierr)
                if(ierr.ne.0) goto 110
                z(1)=1.0d0
                z(2)=kmax
             elseif(k.lt.kmax) then
    c     output
                call dcopy(ny,z(3+n*ievt+k),n,y,1)
                z(1)=z(1)+1.0d0
             endif
    c
          elseif(flag.eq.3) then
             n=ipar(4)
             k=int(z(1))
             kmax=int(z(2))
             if(k.gt.kmax.and.kmax.lt.n) then
                tvec(1)=t-1.0d0
             else
                tvec(1)=z(3+k)
             endif
          elseif(flag.eq.4) then
    c     file opening
             lfil=ipar(1)
             ievt=ipar(3)
             N=ipar(4)
             call cvstr(lfil,ipar(5),buf,1)
             lfmt=ipar(2)
             lunit=0
             if(lfmt.gt.0) then
                mode(1)=001
                mode(2)=0
                call clunit(lunit,buf(1:lfil),mode)
                if(err.gt.0) goto 100
             else
                mode(1)=101
                mode(2)=0
                call clunit(lunit,buf(1:lfil),mode)
                if(err.gt.0) goto 100
             endif
             z(3)=lunit
    c     buffer initialisation
             no=(nz-3)/N
             call bfrdr(lunit,ipar,z(4),no,kmax,ierr)
             if(ierr.ne.0) goto 110
             z(1)=1.0d0
             z(2)=kmax
          elseif(flag.eq.5) then
             lfil=ipar(1)
             N=ipar(4)
             K=int(z(1))
             lunit=int(z(3))
             if(lunit.eq.0) then
                return
             endif
             call clunit(-lunit,buf(1:lfil),mode)
             if(err.gt.0) goto 100
             z(3)=0.0d0
          endif
          return
     100  continue
          err=0
          lfil=ipar(1)
          call basout(io,wte,'File '//buf(1:lfil)//' Cannot be opened')
          flag=-1
          return
     110  continue
          lfil=ipar(1)
          call cvstr(lfil,ipar(5),buf,1)
          call clunit(-lunit,buf(1:lfil),mode)
          call basout(io,wte,'Read error on file '//buf(1:lfil))
          flag=-1
          return
          end
    
    
          subroutine bfrdr(lunit,ipar,z,no,kmax,ierr)
    c     buffered and masked read
          include '../stack.h'
          integer lunit,ipar(*),ierr
          double precision z(*)
          double precision tmp(100)
    c
          ievt=ipar(3)
          N=ipar(4)
    c      no=(nz-3)/N
    c     maximum number of value to read
          imask=5+ipar(1)+ipar(2)
          if(ievt.eq.0) imask=imask+1
          mm=0
          do 10 i=0,no-1
             mm=max(mm,ipar(imask+i))
     10   continue
    c
          lfmt=ipar(2)
          kmax=0
          if(lfmt.eq.0) then
    c     unformatted read
             do 12 i=1,N
                read(lunit,err=100,end=20) (tmp(j),j=1,mm)
                do 11 j=0,no-1
                   z(j*N+i)=tmp(ipar(imask+j))
     11         continue
                kmax=kmax+1
     12      continue
          else
    c     formatted read
             call cvstr(ipar(2),ipar(5+ipar(1)),buf,1)
             do 14 i=1,N
                read(lunit,buf(1:lfmt),err=100,end=20) (tmp(j),j=1,mm)
                do 13 j=0,no-1
                   z(j*N+i)=tmp(ipar(imask+j))
     13         continue
                kmax=kmax+1
     14      continue
          endif
     20   continue
          ierr=0
          return
     100  ierr=1 
          return
          end



Ramine Nikoukhah 2004-06-22
.. _Dialog Box: ://./scicos/RFILE_f.htm#SECTION00515300000000000000
.. _Default properties: ://./scicos/RFILE_f.htm#SECTION00515400000000000000
.. _Computational function (type 0): ://./scicos/RFILE_f.htm#SECTION00515600000000000000
.. _Interfacing function: ://./scicos/RFILE_f.htm#SECTION00515500000000000000
.. _Library: ://./scicos/RFILE_f.htm#SECTION00515100000000000000
.. _Description: ://./scicos/RFILE_f.htm#SECTION00515200000000000000


