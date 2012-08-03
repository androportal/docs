====
"node1"
====





Contents
--------


+ `Introduction`_
+ `Data Structure`_

    + `Data structure`_

        + `Scicos Diagram`_
        + `Scicos Block`_
        + `Scicos Link`_
        + `Compilation`_


+ `Editor`_

    + `Diagram`_
    + `Edit`_
    + `Simulate`_
    + `Object`_
    + `Misc`_

+ `Blocks`_

    + `Sources library`_

        + `Constant `_
        + `Square wave generator `_
        + `Ramp `_
        + `Random generator `_
        + `Read from file `_
        + `Input activation port `_
        + `Curve `_
        + `Input implicit port `_
        + `Read AU sound file `_
        + `Sawtooth generator `_
        + `Step function generator `_
        + `Activation clock `_
        + `Sin generator `_
        + `Input Port `_
        + `Read binary data `_
        + `Time `_
        + `Modulo counter `_

    + `Sinks library`_

        + `Display `_
        + `Multi display scope `_
        + `XY Scope `_
        + `Write binary data `_
        + `2D Animation `_
        + `Scope `_
        + `Output implicit port `_
        + `Output activation port `_
        + `Activation scope `_
        + `Output Port `_
        + `Write to file `_
        + `Floating scope `_
        + `Write AU sound file `_

    + `Branching library`_

        + `Demultiplexer `_
        + `Multiplexer `_
        + `Merge data `_
        + `Extractor `_
        + `Select `_
        + `Iselect `_
        + `Relay `_
        + `Switch2 `_
        + `If-Then-Else `_
        + `Event select `_
        + `Multi-port switch `_
        + `Scalar to vector `_
        + `Swith `_

    + `Non_linear library`_

        + `Absolute value `_
        + `Trigonometric function `_
        + `Exp `_
        + `2D interpolation `_
        + `Interpolation `_
        + `Inverse `_
        + `Log `_
        + `Lookup table `_
        + `Max and Min `_
        + `Pow `_
        + `Multiplication `_
        + `Product `_
        + `Quantization `_
        + `Mathematical expression `_
        + `Saturation `_
        + `Signum `_

    + `Events library`_

        + `Activation and `_
        + `Halt `_
        + `Frequency division `_
        + `Logical and `_
        + `Event delay `_
        + `If-Then-Else `_
        + `Event select `_
        + `Activation union `_
        + `Activation clock `_
        + `Event generator `_
        + `Event variable delay `_

    + `Threshold library`_

        + `Threshold negative to positive `_
        + `Threshold positive to negative `_
        + `Threshold detection at zero `_

    + `Others library`_

        + `C language `_
        + `Fortran `_
        + `Super `_
        + `Scilab `_
        + `Text `_
        + `New C `_
        + `Rate limiter `_
        + `Backlash `_
        + `Deadband `_
        + `Mathematical expression `_
        + `Constraint `_
        + `Hystheresis `_
        + `Logical operation `_
        + `Relational operation `_
        + `Generic `_

    + `Linear library`_

        + `Discrete transfer function `_
        + `Continuous linear system with jump`_
        + `Register `_
        + `Dummy `_
        + `Discrete state-space system `_
        + `Shift register `_
        + `Time delay `_
        + `Continuous transfer function`_
        + `Gain `_
        + `Sample and hold `_
        + `Variable delay `_
        + `Continuous state-space system `_
        + `Sum `_
        + `Integration `_
        + `Addition `_
        + `Derivative `_






Ramine Nikoukhah 2004-06-22
.. _Input activation port : ://./scicos/CLKINV_f.htm
.. _Output implicit port : ://./scicos/OUTIMPL_f.htm
.. _Sources library: ://./scicos/node72.htm
.. _Shift register : ://./scicos/REGISTER_f.htm
.. _Input implicit port : ://./scicos/INIMPL_f.htm
.. _2D interpolation : ://./scicos/INTRP2BLK_f.htm
.. _Dummy : ://./scicos/CLINDUMMY_f.htm
.. _Generic : ://./scicos/generic_block2.htm
.. _Logical and : ://./scicos/ANDLOG_f.htm
.. _Multiplication : ://./scicos/PROD_f.htm
.. _Edit: ://./scicos/node27.htm
.. _Diagram: ://./scicos/node10.htm
.. _Event variable delay : ://./scicos/EVTVARDLY.htm
.. _Read from file : ://./scicos/RFILE_f.htm
.. _Write AU sound file : ://./scicos/WRITEAU_f.htm
.. _Mathematical expression : ://./scicos/EXPRESSION.htm
.. _Relational operation : ://./scicos/RELATIONALOP.htm
.. _Fortran : ://./scicos/fortran_block.htm
.. _Super : ://./scicos/SUPER_f.htm
.. _Sum : ://./scicos/SUMMATION.htm
.. _Logical operation : ://./scicos/LOGICAL_OP.htm
.. _Product : ://./scicos/PRODUCT.htm
.. _Ramp : ://./scicos/RAMP.htm
.. _Select : ://./scicos/SELECT_f.htm
.. _Misc: ://./scicos/node59.htm
.. _Signum : ://./scicos/SIGNUM.htm
.. _Sin generator : ://./scicos/GENSIN_f.htm
.. _Data Structure: ://./scicos/node3.htm
.. _Integration : ://./scicos/INTEGRAL.htm
.. _If-Then-Else : ://./scicos/IFTHEL_f.htm
.. _Sawtooth generator : ://./scicos/SAWTOOTH_f.htm
.. _Scicos Diagram: ://./scicos/scicos_diagram.htm
.. _Data structure: ://./scicos/node4.htm
.. _Events library: ://./scicos/node135.htm
.. _Threshold detection at zero : ://./scicos/ZCROSS_f.htm
.. _Continuous linear system with jump: ://./scicos/TCLSS_f.htm
.. _Write to file : ://./scicos/WFILE_f.htm
.. _Introduction: ://./scicos/node2.htm
.. _Time : ://./scicos/TIME_f.htm
.. _XY Scope : ://./scicos/SCOPXY_f.htm
.. _Continuous transfer function: ://./scicos/CLR_f.htm
.. _New C : ://./scicos/CBLOCK.htm
.. _Sample and hold : ://./scicos/SAMPLEHOLD_f.htm
.. _Swith : ://./scicos/SWITCH_f.htm
.. _Threshold library: ://./scicos/node147.htm
.. _Threshold positive to negative : ://./scicos/POSTONEG_f.htm
.. _Scicos Link: ://./scicos/scicos_link.htm
.. _Event delay : ://./scicos/EVTDLY_f.htm
.. _Text : ://./scicos/TEXT_f.htm
.. _Scope : ://./scicos/CSCOPE.htm
.. _Others library: ://./scicos/node151.htm
.. _Extractor : ://./scicos/EXTRACTOR.htm
.. _Event select : ://./scicos/ESELECT_f.htm
.. _Interpolation : ://./scicos/INTRPLBLK_f.htm
.. _Log : ://./scicos/LOGBLK_f.htm
.. _Frequency division : ://./scicos/freq_div.htm
.. _Inverse : ://./scicos/INVBLK_f.htm
.. _Write binary data : ://./scicos/WRITEC_f.htm
.. _Scalar to vector : ://./scicos/SCALAR2VECTOR.htm
.. _Non_linear library: ://./scicos/node118.htm
.. _Quantization : ://./scicos/QUANT_f.htm
.. _Activation scope : ://./scicos/EVENTSCOPE_f.htm
.. _Trigonometric function : ://./scicos/TrigFun.htm
.. _Sinks library: ://./scicos/node90.htm
.. _Compilation: ://./scicos/scicos_cpr.htm
.. _Halt : ://./scicos/HALT_f.htm
.. _Event generator : ://./scicos/EVTGEN_f.htm
.. _C language : ://./scicos/c_block.htm
.. _Display : ://./scicos/AFFICH_f.htm
.. _Constant : ://./scicos/CONST_f.htm
.. _Exp : ://./scicos/EXPBLK_f.htm
.. _Read AU sound file : ://./scicos/READAU_f.htm
.. _Random generator : ://./scicos/RAND_f.htm
.. _Rate limiter : ://./scicos/RATELIMITER.htm
.. _Threshold negative to positive : ://./scicos/NEGTOPOS_f.htm
.. _Object: ://./scicos/node48.htm
.. _Multiplexer : ://./scicos/MUX.htm
.. _Read binary data : ://./scicos/READC_f.htm
.. _Max and Min : ://./scicos/MAXMIN.htm
.. _Register : ://./scicos/DOLLAR_f.htm
.. _Branching library: ://./scicos/node104.htm
.. _Scicos Block: ://./scicos/scicos_block.htm
.. _Output activation port : ://./scicos/CLKOUTV_f.htm
.. _Activation union : ://./scicos/CLKSOMV_f.htm
.. _2D Animation : ://./scicos/ANIMXY_f.htm
.. _Iselect : ://./scicos/ISELECT_f.htm
.. _Simulate: ://./scicos/node43.htm
.. _Step function generator : ://./scicos/STEP_FUNCTION.htm
.. _Activation and : ://./scicos/ANDBLK.htm
.. _Discrete state-space system : ://./scicos/DLSS_f.htm
.. _Square wave generator : ://./scicos/GENSQR_f.htm
.. _Input Port : ://./scicos/IN_f.htm
.. _Demultiplexer : ://./scicos/DEMUX.htm
.. _Linear library: ://./scicos/node167.htm
.. _Continuous state-space system : ://./scicos/CLSS_f.htm
.. _Addition : ://./scicos/SUM_f.htm
.. _Output Port : ://./scicos/OUT_f.htm
.. _Absolute value : ://./scicos/ABS_VALUE.htm
.. _Blocks: ://./scicos/node71.htm
.. _Lookup table : ://./scicos/LOOKUP_f.htm
.. _Variable delay : ://./scicos/VARIABLE_DELAY.htm
.. _Curve : ://./scicos/CURV_f.htm
.. _Multi-port switch : ://./scicos/M_SWITCH.htm
.. _Hystheresis : ://./scicos/HYSTHERESIS.htm
.. _Discrete transfer function : ://./scicos/DLR_f.htm
.. _Gain : ://./scicos/GAINBLK.htm
.. _Pow : ://./scicos/POWBLK_f.htm
.. _Merge data : ://./scicos/NRMSOM_f.htm
.. _Scilab : ://./scicos/scifunc_block.htm
.. _Relay : ://./scicos/RELAY_f.htm
.. _Saturation : ://./scicos/SATURATION.htm
.. _Time delay : ://./scicos/TIME_DELAY.htm
.. _Derivative : ://./scicos/DERIV.htm
.. _Modulo counter : ://./scicos/Modulo_Count.htm
.. _Floating scope : ://./scicos/FSCOPE_f.htm
.. _Deadband : ://./scicos/DEADBAND.htm
.. _Backlash : ://./scicos/BACKLASH.htm
.. _Switch2 : ://./scicos/SWITCH2.htm
.. _Activation clock : ://./scicos/CLOCK_f.htm
.. _Constraint : ://./scicos/CONSTRAINT_f.htm
.. _Multi display scope : ://./scicos/CMSCOPE.htm
.. _Editor: ://./scicos/node9.htm


