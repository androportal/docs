====
"AFFICH_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 0)`_







Display
-------



Library
~~~~~~~
Sinks


Description
~~~~~~~~~~~
This block displays the value of its unique input inside the block (in
the diagram) during simulation. The block must be located in the main
Scicos window.
**Warning:** each time the block is moved user must click on it to set
its parameters. The display position is then automatically updated.


Dialog Box
~~~~~~~~~~
Set parameters Font number 1 Font size 1 Color 1 Total number of
digits 9 Number of rational part digits 2 Block inherits (1) or not
(0) 0

+ Font number: integer, the selected font number (see xset).
+ Font size:nteger, the selected font size (set xset)
+ Color: integer, the selected color for the text (see xset)
+ Total number of digits: an integer greater than 3, the maximum
  number of digits used to represent the number (sign, integer part and
  rational part)
+ Number of rational part digits: n integer greater than or equal 0,
  the number of digits used to represent the rational part
+ Block inherits : Specifies whether the block should have an input
  activation port or not. If not the activation is inherited.




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
+ name of computational function: *affich*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sinks/AFFICH_f.sci


Computational function (type 0)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine affich(flag,nevprt,t,xd,x,nx,z,nz,tvec,ntvec,
         &     rpar,nrpar,ipar,nipar,u,nu,y,ny)
    c     Copyright INRIA
    
    c     Scicos block simulator
    c     Displays the value of the input in a graphic window
    c
    c     ipar(1) = font
    c     ipar(2) = fontsize
    c     ipar(3) = color
    c     ipar(4) = win
    c     ipar(5) = nt : total number of output digits
    c     ipar(6) = nd number of rationnal part digits
    
    c
    c     z(1)=value
    c     w(2)=window
    c     z(3)=x
    c     z(4)=y
    c     z(5)=width
    c     z(6)=height
    
          double precision t,xd(*),x(*),z(*),tvec(*),rpar(*),u(*),y(*)
          integer flag,nevprt,nx,nz,ntvec,nrpar,ipar(*)
          integer nipar,nu,ny
    
    
          integer wid
    
          integer cur,v
          double precision dv,round,ur
          character*40 drv
          data cur/0/
    
    
    c     
    c     
          if(flag.eq.2) then
    c     state evolution
             ur=10.0d0**ipar(6)
             ur=round(u(1)*ur)/ur
             if (ur.eq.z(1)) return
             wid=z(2)
             if(wid.lt.0) return
    
             call setblockwin(int(z(2)),cur)
             call  dr1('xgetdr'//char(0),drv,v,v,v,v,v,v,dv,dv,dv,dv)
             call  dr1('xsetdr'//char(0),'X11'//char(0),v,v,v,v,v,v,
         $        dv,dv,dv,dv)
    
             call recterase(z(3))
             z(1)=ur
             call affdraw(ipar(1),ipar(5),z(1),z(3))
             call  dr1('xsetdr'//char(0),drv,v,v,v,v,v,v,dv,dv,dv,dv)
          elseif(flag.eq.4) then
    c     init
    c     .  initial value         
             z(1)=0.0d0
    c     .  get geometry of the block
             call getgeom(z(2))
    
             if(z(2).lt.0.0d0) return
             call setblockwin(int(z(2)),cur)
             call  dr1('xgetdr'//char(0),drv,v,v,v,v,v,v,dv,dv,dv,dv)
             call  dr1('xsetdr'//char(0),'X11'//char(0),v,v,v,v,v,v,
         $        dv,dv,dv,dv)
    
             call recterase(z(3))
             call affdraw(ipar(1),ipar(5),z(1),z(3))
             call  dr1('xsetdr'//char(0),drv,v,v,v,v,v,v,dv,dv,dv,dv)
    
          endif
          end
    
          subroutine setblockwin(win,cur)
          integer win,cur
          integer v,verb
          double precision dv
          data verb/0/
    
          call dr1('xget'//char(0),'window'//char(0),verb,cur,na,v,v,v,
         $     dv,dv,dv,dv)
          if(cur.ne.win) then
             call dr1('xset'//char(0),'window'//char(0),win,v,v,v,v,v,
         $        dv,dv,dv,dv)
          endif
          return
          end
    
          subroutine recterase(r)
          double precision r(4)
          integer v
          double precision dv,dx,dy,x,y,w,h
          data dx/0.06/,dy/0.06/
    
          x=r(1)+dx*r(3)
          y=r(2)+r(4)
          w=r(3)*(1.0d0-dx)
          h=r(4)*(1.0d0-dy)
          call  dr1('xclea'//char(0),'v'//char(0),v,v,v,v,v,v,x,y,w,h)
          return
          end
    
          subroutine affdraw(fontd,form,val,r)
          integer fontd(2),form(2)
          double precision val,x,y,angle,rect(4),r(4),dx,dy
          character*40 fmt,value
          integer font(5),nf,pix
          integer v,verb
          double precision dv
          data angle/0.0d0/,verb/0/
    
          write(fmt,'(''(f'',i3,''.'',i3,'')'')') form(1),form(2)
          call dr1('xget'//char(0),'font'//char(0),verb,font,nf,v,v,
         $     v,dv,dv,dv,dv)
          call dr1('xset'//char(0),'font'//char(0),fontd(1),fontd(2),v,v,v,
         $     v,dv,dv,dv,dv)
          value=' '
          write(value,fmt) val
          ln=lnblnk(value)
          value(ln+1:ln+1)=char(0)
    
          call dr1('xstringl'//char(0),value,v,v,v,v,v,v,r(1),r(2),rect,dv)
          x=r(1)+max(0.0d0,(r(3)-rect(3))/2.0d0)
          y=r(2)+max(0.0d0,(r(4)-rect(4))/2.0d0)
          call dr1('xstring'//char(0),value,v,v,v,0,v,v,x,y,angle,dv)
          call dr1('xset'//char(0),'font'//char(0),font(1),font(2),v,v,v,
         $     v,dv,dv,dv,dv)
          call dr1('xget'//char(0),'pixmap'//char(0),verb,pix,na,v,v,v,
         $     dv,dv,dv,dv)
          if(pix.eq.1) then
             call dr1('xset'//char(0),'wshow'//char(0),v,v,v,v
         $        ,v,v,dv,dv,dv,dv)
          endif
          return
          end
    
    
          subroutine getgeom(g)
          include "../stack.h"
          double precision g(*)
          integer scicstring,ret
          integer sadr,iadr
          iadr(l) = l + l - 1
          sadr(l)=(l/2)+1
          ret=scistring(rhs+1, 'getgeom',1,0)
          il=iadr(lstk(top+1))
          l=sadr(il+4)
          call dcopy(5,stk(l),1,g,1)
    c      top=top-1
          return
          end



Ramine Nikoukhah 2004-06-22
.. _Library: ://./scicos/AFFICH_f.htm#SECTION00521100000000000000
.. _Interfacing function: ://./scicos/AFFICH_f.htm#SECTION00521500000000000000
.. _Description: ://./scicos/AFFICH_f.htm#SECTION00521200000000000000
.. _Computational function (type 0): ://./scicos/AFFICH_f.htm#SECTION00521600000000000000
.. _Dialog Box: ://./scicos/AFFICH_f.htm#SECTION00521300000000000000
.. _Default properties: ://./scicos/AFFICH_f.htm#SECTION00521400000000000000


