====
"EVENTSCOPE_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Activation scope
----------------



Library
~~~~~~~
Sinks


Description
~~~~~~~~~~~
This block realizes the visualization of the input event signals.


Dialog Box
~~~~~~~~~~
Set Scope parameters Number of event inputs 1 colors c ( 0) or mark (
0) 1 Output window number 1 Output window position [] Output window
sizes [600;400] Refresh period 30

+ Number of event inputs: an integer giving the number of event input
  ports colors : a vector of integers. The i-th element is the color
  number ( ) or dash type ( ) used to draw the evolution of the i-th
  input port signal. See **xset** for color (dash type) definitions.
+ colors c : an integer. It is the color number ( ) or dash type ( )
  used to draw the evolution of the input port signal. See **plot2d**
  for color (dash type) definitions.
+ Output window number:The number of graphic window used for the
  display. It is often good to use high values to avoid conflict with
  palettes and Super Block windows. If you have more than one scope,
  make sure they don't have the same window numbers (unless
  superposition of the curves is desired). Output window position : a 2
  vector specifying the coordinates of the upper left corner of the
  graphic window. Answer [] for default window position.
+ Output window position:
+ Output window sizes:a 2 vector specifying the width and height of
  the graphic window. Answer [] for default window dimensions.
+ Refresh period:Maximum value on the X-axis (time). The plot is
  redrawn when time reaches a multiple of this value.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: yes
+ name of computational function: *evscpe*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sinks/EVENTSCOPE_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine evscpe(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     Event scope
    c     ipar(1) = win_num
    c     ipar(2) = 0/1 color flag
    c     ipar(3:10) = color
    c     ipar(nipar-3:nipar-2) = window position
    c     ipar(nipar-1:nipar)= window position
    c
    c     rpar(1)=periode
    c
    c
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    c
          double precision ymin,ymax,per,rect(4),xx(2),yy(2)
          integer verb,cur,na,v,wid,nax(4)
          character*40 strf,buf
          double precision dv
          double precision frect(4)
          character*(4) logf
          character*4 name
    
          integer kfun
          common /curblk/ kfun
          data frect / 0.00d0,0.00d0,1.00d0,1.00d0/
          data cur/0/,verb/0/
    
    c      data yy / 0.00d0,0.80d0/
    c     
    c     
          call dr1('xgetdr'//char(0),name,v,v,v,v,v,v,
         $     dv,dv,dv,dv)
          if(name(1:3).ne.'Rec') then
             call dr1('xsetdr'//char(0),'Rec'//char(0),v,v,v,v,v,v,
         $        dv,dv,dv,dv)
          endif
    
    c     
          if(flag.eq.2) then
             per=rpar(1)
             wid=ipar(1)
             if(t/per.ge.z(1)) then
                z(1)=int(t/per)+1.0d0
    c     clear window
                nax(1)=2
                nax(2)=10
                nax(3)=2
                nax(4)=10
                call dr1('xget'//char(0),'window'//char(0),verb,cur,na,
         $		v,v,v,
         $          dv,dv,dv,dv)
                if(cur.ne.wid) then
                   call dr1('xset'//char(0),'window'//char(0),wid,v,v,v,v,v,
         $              dv,dv,dv,dv)
                endif
    
                call dr1('xclear'//char(0),'v'//char(0),v,v,v,v,v,v,
         $           dv,dv,dv,dv)
                call dr1('xset'//char(0),'use color'//char(0),ipar(2),0,0,
         &           0,0,v,dv,dv,dv,dv)
                call dr('xstart'//char(0),'v'//char(0),wid,v,v,v,v,v,
         $           dv,dv,dv,dv)
                buf='t@ @input and output'
                strf='011'//char(0)
                rect(1)=per*(z(1)-1.0d0)
                rect(2)=0.0d0
                rect(3)=per*z(1)
                rect(4)=1.0d0
                call dr1('xset'//char(0),'dashes'//char(0),0,0,0,
         &           0,0,v,dv,dv,dv,dv)
                call plot2d(rect(1),rect(2),1,1,-1,strf,buf,rect,nax)
             endif
    c
             call dr1('xget'//char(0),'window'//char(0),verb,cur,na,
         $		v,v,v,
         $          dv,dv,dv,dv)
             if(cur.ne.wid) then
                call dr1('xset'//char(0),'window'//char(0),wid,v,v,v,v,v,
         $           dv,dv,dv,dv)
             endif
             call dr1('xset'//char(0),'use color'//char(0),ipar(2),0,0,
         &        0,0,v,dv,dv,dv,dv)
             buf='xlines'//char(0)
             xx(1)=t
             xx(2)=t 
    
    c  ------------------------------------------------------
             yy(1)=0.0
             yy(2)=0.8
             i=1
             nx=1
     10      if (iand(nevprt,nx) .ne. 0)  then
                call dr1('xpolys'//char(0),'v'//char(0),v,v,
         $           ipar(2+i),1,2,v,xx,yy,dv,dv)
                yy(1)=(yy(1)+yy(2))/2
             endif
             i=i+1
             nx=nx*2
             if(nx.le.nevprt) goto 10
             yy(1)=0.0
    c ----------------------------------------------------------
          elseif(flag.eq.4) then
             wid=ipar(1)
             ymin=0.0d0
             ymax=1.0d0
             per=rpar(1)
             nax(1)=2
             nax(2)=10
             nax(3)=2
             nax(4)=10
             n1=int(t)/per
             if(t.le.0.0d0) n1=n1-1
             call sciwin()
             call dr1('xget'//char(0),'window'//char(0),verb,cur,na,
         $        v,v,v,
         $        dv,dv,dv,dv)
             if(cur.ne.wid) then
                call dr1('xset'//char(0),'window'//char(0),wid,v,v,v,v,v,
         $           dv,dv,dv,dv)
             endif
    c         
             rect(1)=per*(1+n1)
             rect(2)=ymin
             rect(3)=per*(2+n1)
             rect(4)=ymax
             call  setscale2d(frect,rect,'nn'//char(0))
             
             iwp=nipar-3
             if(ipar(iwp).ge.0) then
                call dr1('xset'//char(0),'wpos'//char(0),ipar(iwp),
         $           ipar(iwp+1),v,v,v,v,dv,dv,dv,dv)
             endif
             iwd=nipar-1
             if(ipar(iwd).ge.0) then
                call dr1('xset'//char(0),'wdim'//char(0),ipar(iwd),
         $           ipar(iwd+1),v,v,v,v,dv,dv,dv,dv)
             endif
    c
    
             call dr1('xset'//char(0),'use color'//char(0),ipar(2),0,0,
         &        0,0,v,dv,dv,dv,dv)
             call dr1('xset'//char(0),'alufunction'//char(0),3,0,0,
         &        0,0,v,dv,dv,dv,dv)
             
             call dr1('xclear'//char(0),'v'//char(0),v,v,v,v,v,v,
         $        dv,dv,dv,dv)
             call dr('xstart'//char(0),'v'//char(0),wid,v,v,v,v,v,
         $        dv,dv,dv,dv)
             buf='t@ @input and output'
             strf='011'//char(0)
             call dr1('xset'//char(0),'dashes'//char(0),0,0,0,
         &        0,0,v,dv,dv,dv,dv)
             call plot2d(rect(1),rect(2),1,1,-1,strf,buf,rect,nax)
             nxname=40
             call getlabel(kfun,buf,nxname)
             if(nxname.gt.39) nxname=39
             buf(nxname+1:nxname+1)=char(0)
             if ((nxname.eq.1.and.buf(1:1).eq.' ').or.(nxname.eq.0)) then
             else
                call dr('xname'//char(0),buf,v,v,v,v,v,v,dv,dv,dv,dv)
             endif
             call sxevents()
             z(1)=0.0d0
          endif
    
          call dr1('xsetdr'//char(0),name,v,v,v,v,v,v,
         $     dv,dv,dv,dv)
     
          end



Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/EVENTSCOPE_f.htm#SECTION00529400000000000000
.. _Interfacing function: ://./scicos/EVENTSCOPE_f.htm#SECTION00529500000000000000
.. _Library: ://./scicos/EVENTSCOPE_f.htm#SECTION00529100000000000000
.. _Computational function (type 0): ://./scicos/EVENTSCOPE_f.htm#SECTION00529600000000000000
.. _Description: ://./scicos/EVENTSCOPE_f.htm#SECTION00529200000000000000
.. _Dialog Box: ://./scicos/EVENTSCOPE_f.htm#SECTION00529300000000000000


