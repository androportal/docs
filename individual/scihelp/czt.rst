


czt
===

chirp z-transform algorithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [czx]=czt(x,m,w,phi,a,theta)




Arguments
~~~~~~~~~

:x input data sequence
: :m czt is evaluated at `m` points in z-plane
: :w magnitude multiplier
: :phi phase increment
: :a initial magnitude
: :theta initial phase
: :czx chirp z-transform output
:



Description
~~~~~~~~~~~

chirp z-transform algorithm which calcultes the z-transform on a
spiral in the z-plane at the points
`[a*exp(j*theta)][w^kexp(j*k*phi)]` for `k=0,1,...,m-1`.



Examples
~~~~~~~~


::

    a=.7*`exp`_(%i*%pi/6);
    [ffr,bds]=`xgetech`_(); //preserve current context
    rect=[-1.2,-1.2*`sqrt`_(2),1.2,1.2*`sqrt`_(2)];
    t=2*%pi*(0:179)/179;`xsetech`_([0,0,0.5,1]);
    `plot2d`_(`sin`_(t)',`cos`_(t)',[2],"012",' ',rect)
    `plot2d`_([0 `real`_(a)]',[0 `imag`_(a)]',[3],"000")
    `xsegs`_([-1.0,0;1.0,0],[0,-1.0;0,1.0])
    w0=.93*`exp`_(-%i*%pi/15);w=`exp`_(-(0:9)*`log`_(w0));z=a*w;
    zr=`real`_(z);zi=`imag`_(z);
    `plot2d`_(zr',zi',[5],"000")
    `xsetech`_([0.5,0,0.5,1]);
    `plot2d`_(`sin`_(t)',`cos`_(t)',[2],"012",' ',rect)
    `plot2d`_([0 `real`_(a)]',[0 `imag`_(a)]',[-1],"000")
    `xsegs`_([-1.0,0;1.0,0],[0,-1.0;0,1.0])
    w0=w0/(.93*.93);w=`exp`_(-(0:9)*`log`_(w0));z=a*w;
    zr=`real`_(z);zi=`imag`_(z);
    `plot2d`_(zr',zi',[5],"000")
    `xsetech`_(ffr,bds); //restore context




