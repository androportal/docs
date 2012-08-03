====
"realtime"
====

Scilab Function Last update : April 1993
**realtimeinit** - set time unit

**realtime** - set dates origin or waits until date



Calling Sequence
~~~~~~~~~~~~~~~~

realtimeinit(time_unit)
realtime(t)




Parameters
~~~~~~~~~~


+ **time_unit** : a real number. The number of seconds associated to
  the **realtime** argument
+ **t** : a real number. A date




Description
~~~~~~~~~~~

These two functions can be used to handle real time into Scilab.

**realtimeinit(time_unit)** defines the time unit associated to the
**realtime** argument **t**

first call to **realtime(t0)** sets current date to ( **t0** ).
subsequent calls to **realtime(t)** wait till date **t** is reached.



Examples
~~~~~~~~


::

    
    
    
    
       realtimeinit(1/2);//sets time unit to half a second
       realtime(0);//sets current date to 0
       for k=1:10,realtime(k);mprintf('current time is '+string(k/2)+'sec .\r\n');end
     
      //next instruction outputs a dot each 2 seconds
       realtimeinit(2); realtime(0);for k=1:10,realtime(k);mprintf('.\r\n');end
    
       realtimeinit(1);realtime(0);
       dt=getdate('s'); realtime(10);   getdate('s')-dt
    
    
    
     
      




See Also
~~~~~~~~

` **getdate** `_,

.. _
      : ://./utilities/../programming/getdate.htm


