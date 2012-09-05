


fseek (Matlab function)
=======================

Set file position indicator



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    fseek



::

    `mseek`_




Particular cases
~~~~~~~~~~~~~~~~

Scilab and Matlab functions differ by the flag which indicate the
origin of the position indicator, see examples below. Note that order
of input value is different.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    % File beginning:
    fseek(fid,offset,'bof')
    fseek(fid,offset,-1)
    % Current position:
    fseek(fid,offset,'cof')
    fseek(fid,offset,0)
    % File end:
    fseek(fid,offset,'eof')
    fseek(fid,offset,1)



::

    // File beginning:
    fseek(offset,fid,"set")
    // Current position:
    fseek(offset,fid,"cur")
    // File end:
    fseek(offset,fid,"end")




