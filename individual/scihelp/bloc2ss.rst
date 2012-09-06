


bloc2ss
=======

block-diagram to state-space conversion



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [sl]=bloc2ss(blocd)




Arguments
~~~~~~~~~

:blocd list
: :sl list
:



Description
~~~~~~~~~~~

Given a block-diagram representation of a linear system `bloc2ss`
converts this representation to a state-space linear system. The first
element of the list `blocd` must be the string `'blocd'`. Each other
element of this list is itself a list of one the following types :


::

    `list`_('transfer','name_of_linear_system')



::

    `list`_('link','name_of_link',
                 [number_of_upstream_box,upstream_box_port],
                 [downstream_box_1,downstream_box_1_portnumber],
                 [downstream_box_2,downstream_box_2_portnumber],
                 ...)


The strings `'transfer'` and `'links'` are keywords which indicate the
type of element in the block diagram.

Case 1 : the second parameter of the list is a character string which
may refer (for a possible further evaluation) to the Scilab name of a
linear system given in state-space representation ( `syslin` list) or
in transfer form (matrix of rationals).

To each transfer block is associated an integer. To each input and
output of a transfer block is also associated its number, an integer
(see examples)

Case 2 : the second kind of element in a block-diagram representation
is a link. A link links one output of a block represented by the pair
`[number_of_upstream_box,upstream_box_port]`, to different inputs of
other blocks. Each such input is represented by the pair
`[downstream_box_i,downstream_box_i_portnumber]`.

The different elements of a block-diagram can be defined in an
arbitrary order.

For example

[1] `S1*S2` with unit feedback.

There are 3 transfers `S1` (number `n_s1=2`) , `S2` (number `n_s2=3`)
and an adder (number `n_add=4`) with symbolic transfer function
`['1','1']`.

There are 4 links. The first one (named `'U'`) links the input (port 0
of fictitious block -1, omitted) to port 1 of the adder. The second
and third one link respectively (output)port 1 of the adder to
(input)port 1 of system `S1`, and (output)port 1 of `S1` to
(input)port 1 of `S2`. The fourth link (named `'Y'`) links
(output)port 1 of `S2` to the output (port 0 of fictitious block -1,
omitted) and to (input)port 2 of the adder.


::

    //Initialization
    syst=`list`_('blocd'); l=1;
    
    //Systems
    l=l+1;
    n_s1=l;
    syst(l)=`list`_('transfer','S1');  //System 1
    l=l+1;
    n_s2=l;
    syst(l)=`list`_('transfer','S2');  //System 2
    l=l+1;
    n_adder=l;
    syst(l)=`list`_('transfer',['1','1']);  //adder
    
    //Links
    // Inputs  -1 --> input 1
    l=l+1;
    syst(l)=`list`_('link','U1',[-1],[n_adder,1]);
    
    // Internal 
    l=l+1;
    syst(l)=`list`_('link',' ',[n_adder,1],[n_s1,1]);
    l=l+1;
    syst(l)=`list`_('link',' ',[n_s1,1],[n_s2,1]);
    
    // Outputs // -1 -> output 1
    l=l+1;
    syst(l)=`list`_('link','Y',[n_s2,1],[-1],[n_adder,2]);


With `s=poly(0,'s'); S1=1/(s+1);S2=1/s;` the result of the evaluation
call `sl=bloc2ss(syst);` is a state-space representation for
`1/(s^2+s-1)`.

[2] LFT example


::

    //Initialization
    syst=`list`_('blocd');
    l=1;
    
    //System (2x2 blocks plant)
    l=l+1;
    n_s=l;
    syst(l)=`list`_('transfer',['P11','P12';'P21','P22']); 
     
    //Controller
    l=l+1;
    n_k=l;
    syst(l)=`list`_('transfer','k');
     
    //Links
    l=l+1;
    syst(l)=`list`_('link','w',[-1],[n_s,1]);
    l=l+1;
    syst(l)=`list`_('link','z',[n_s,1],[-1]);
    l=l+1;
    syst(l)=`list`_('link','u',[n_k,1],[n_s,2]);
    l=l+1;
    syst(l)=`list`_('link','y',[n_s,2],[n_k,1]);


With


::

    A=[0,1;0,0];
    B=[1;1];
    C=[1,1];
    D=`poly`_(0,'s');
    P=`syslin`_('c',A,B,C,D);


`bloc2exp(syst)` returns the evaluation the lft of `P` and `K`.



See Also
~~~~~~~~


+ `bloc2exp`_ Conversion of a block-diagram to its symbolic expression


.. _bloc2exp: bloc2exp.html


