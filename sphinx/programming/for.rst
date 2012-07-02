Scilab Keyword

Last update : 04/10/2004

**for** - language keyword for loops

Description
~~~~~~~~~~~

Used to define loops. Its syntax is:
``          for variable=expression ,instruction, .. ,instruction,end       ``

``          for variable=expression do instruction,   ,instruction,end       ``

If ``         expression       `` is a matrix or a row vector,
``         variable       `` takes as values the values of each column
of the matrix.

Useful example : ``         for variable=n1:step:n2,  ...,end       ``

If ``         expression       `` is a list ``         variable       ``
takes as values the successive entries of the list.

Warning: the number of characters used to define the body of any
conditionnal instruction (if while for or select/case) must be limited
to 16k.

Examples
~~~~~~~~

::


    n=5;
    for i = 1:n, for j = 1:n, a(i,j) = 1/(i+j-1);end;end
    for j = 2:n-1, a(j,j) = j; end; a
    for  e=eye(3,3),e,end  
    for v=a, write(6,v),end        
    for j=1:n,v=a(:,j), write(6,v),end 
    for l=list(1,2,'example'); l,end 
     
      

See Also
~~~~~~~~

```           while         `` <while.htm>`_,
```           end         `` <end.htm>`_,
```           do         `` <do.htm>`_,
