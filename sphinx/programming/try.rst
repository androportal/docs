Scilab keyword

Last update : 30/08/2005

**try** - beginning of try block in try-catch control instruction

**catch** - beginning of catch block in try-catch control instruction

Calling Sequence
~~~~~~~~~~~~~~~~

``try ``

``  statements``

``catch ``

``  statements``

``end``

Description
~~~~~~~~~~~

The ``         try       ``-``         catch       `` control
instruction can be used to manage codes that could possibly generate
errors.

When a ``         try       ``-``         catch       `` control
instruction is executed, normally only the statements between the
``         try       `` and ``         catch       `` keywords are
executed. However, if an error occurs during execution of any of these
statements, the error is recorded, the remaining statements up to the
``         catch       `` keyword are skipped and the statements between
the ``         catch       `` and ``         end       `` keywords are
executed using the default error handling mode (see:
```           errcatch         `` <errcatch.htm>`_.

The recorded error can be retreived using the
```           lasterror         `` <lasterror.htm>`_ function.

The ``         catch       `` statements as well as the
``         catch       `` keyword can be omitted if no alternative
statements are given.

Note that one can also use the
```           execstr         `` <execstr.htm>`_ function with
``         'errcatch'       `` argument for error handling. This can be
particularily useful for handling syntactical errors.

Examples
~~~~~~~~

::


     file_path=TMPDIR+'/wrong'
     try
        u=mopen(file_path,'r')
        x=mget(10,'c',u)
      catch
        disp(['file '+file_path+ 'cannot be read',
              'using default values for x'])
        x=1:10
      end 
      [error_message,error_number]=lasterror(%t) 

     
     
      

See Also
~~~~~~~~

```           error         `` <error.htm>`_,
```           execstr         `` <execstr.htm>`_,
```           if         `` <if.htm>`_,
```           lasterror         `` <lasterror.htm>`_,
```           errcatch         `` <errcatch.htm>`_,

Author
~~~~~~

Serge Steer, INRIA
