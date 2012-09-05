


mcisendstring
=============

sends a command string to an MCI device (Windows only)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mcisendstring(mcistring)
    bOK=mcisendstring(mcistring)
    [bOK,CodeError]=mcisendstring(mcistring)
    [bOK,CodeError,StringError]=mcisendstring(mcistring)




Arguments
~~~~~~~~~

:mcistring a command string to send to an MCI device
: :bOK returns %T or %F
: :CodeError returns error code (0 --> if bOK == %T)
: :StringError returns MCI interpreter message ('OK' --> if bOK == %T)
:



Description
~~~~~~~~~~~

The mciSendString primitive sends a command string to an MCI device.
The device that the command is sent to is specified in the command
string.

see on `http://msdn.microsoft.com/library/default.asp`_ and search
"Windows Multimedia SDK open"



Examples
~~~~~~~~


::

    mcisendstring("open ""d:\audio.mp3"" type MPEGVideo alias MP3_Device") 
    mcisendstring("play MP3_Device") 
    mcisendstring("close MP3_Device") 
    
    mcisendstring("open ""d:\video.avi"" type avivideo alias AVI_Device") 
    mcisendstring("play AVI_Device from 0") 
    mcisendstring("close AVI_Device")


.. _http://msdn.microsoft.com/library/default.asp: http://msdn.microsoft.com/library/default.asp


