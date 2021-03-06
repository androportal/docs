


Chapter 5: Review Questions
===========================

::

    
     1. What value is returned by the following code fragment?
    
        int i = 7;
        y += i;
        if(i < 8)
            printf("The value is less than eight.\n");
           
        a) 7
        b) The value is less than eight.
        c) 8
        d) No value is returned, since the test is false.
    
     2. The correct conditional expression for the following 
        code fragment is:
           
        max = z;
        if ( x + y > z )
            max = x + y;
           
        a) max = (x + y > z) : z : x + y;
        b) max = (x + y > z) ? x + y : z;
        c) max = (x + y > z) : x + y ? z;
        d) max = ?(x + y > z) : x + y : z;
    
     3. Which of the following is the correct nested if code?
           
        a)  if(c >= '0')
                if(c<= '9');
                    printf("This is a number.\n");
    
        b)  if(c >= '0');
                if(c <= '9');
                    printf("This is a number.\n");
    
        c)  if(c >= '0')
                if(c <= '9')
                    printf("This is a number.\n");
    
        d)  if(c >= '0'):
                if(c <= '9')
                    printf("This is a number.\n");
    
     4. Which of the following is a correct code fragment from 
        a case construct?
           
        a)  case 1;
                rate = .01;
                break;
    
        b)  case 2:
                rate = .02;
                break;
    
        c)  case 3
                rate = .03;
                break;
    
        d)  case 4:
                rate = .01
                break;
           
     5. Which of the following identifies the purpose of 
        'default' in a switch statement?
           
        a) it terminates the switch statement
        b) it identifies the values being compared
        c) it executes only if the test value does not equal
           any of the other cases in the switch
        d) it causes the compiler to skip the switch
           statement
    
     6. Which one of the following code fragments is written 
        correctly?
    
        a) for(x = 0, x <= 200, ++x)
           
        b) for(x = 0; x <= 200; ++x);
           
        c) for(x = 0; x <= 200; ++x)
           
        d) for(x = 0; x <= 200; ++x;)
    
     7. How many times will the following message be printed?
           
        for ( x = 10, y = 0; x < 100; x += 10, y ++)
             printf("this is a test \n");
           
        a) 1 time
           
        b) 9 times
           
        c) 10 times
           
        d) 100 times
           
     8. In writing a for loop, which code fragment would be 
        accepted?
    
        a) for(; x <= 10; ++x;)
           
        b) for(; x <= 10; ++x)
           
        c) for(x <= 10; ++x)
           
        d) for(x <= 10; ; ++x)
      
     9. Which of the following code fragments is correct?
           
        a)  while 
            {
                 (x < 21)
                 printf("Hit me again\n");
                 x++;
            }
           
        b)  while (x < 21);
            {
                 printf("Hit me again\n");
                 x++;
            }
           
        c)  while (x < 21) x++;
            {
                  printf("Hit me again\n");
            }
           
        d)  while (x < 21)
            {
                  printf("Hit me again\n");
                  x++;
            }
    
    10. At a minimum, how many times will the loop body of a 
        while loop be executed?
    
        a) less than one time
           
        b) one time
                 
        c) two times
           
        d) more than two times
           
    11. With a while loop, what loop control component is 
        required?
           
        a) initial value
           
        b) test condition
           
        c) loop increment
           
        d) do
    
    12. Which of the following code fragments is correct?
           
        a)  do
            {   while (x < 21)
                printf("Hit me again\n");
            }
            x++;
           
        b)  do-while
            {
                  printf("Hit me again\n");
                  x++;
            }
           
        c)  do
            {
                  printf("Hit me again\n");
                  x++;
            }while(x < 21);
           
        d)  do
            {
                  printf("Hit me again\n");
                  x++;
            }while (x < 21)
    
    13. With a do-while loop, which of the following is 
        executed first?
    
        a) loop body
           
        b) while statement
           
        c) test condition
           
        d) loop control
    
    14. With a do-while loop, the loop body is executed if the 
        test condition is
    
        a) true, but not false
           
        b) false, but not true
           
        c) either true or false
           
        d) false to begin with and true later on
    
    15. At a minimum, how many times will the loop body of a
        do-while loop be executed?
    
        a) less than one time
           
        b) one time
           
        c) two times
           
        d) more than two times
           
    16. Which one of the following does not terminate the 
        execution of a loop?
    
        a) continue statement
           
        b) break statement
           
        c) goto statement
           
        d) All of the above terminate the execution of a loop.
    
    17. Which of the following code fragments is correct when a 
        break statement is placed within a loop?
    
        a) break;
           if (cont == 'N' || cont == 'n')
           
        b) if (cont == 'N' || cont == 'n')
                :break
           
        c) if (cont == 'N' || cont == 'n')
                break;
           
        d) if (cont == 'N' || cont == 'n')
                break:
    
    18. Given the following code fragment, what will happen if 
         **y** is equal to 99?
    
        for(y = 0; y <= 100; ++y)
        {
             if (y % 10 != 0)
                  continue;
             printf("%3d",y);
        }
           
        a) The for loop will terminate.
    
        b) the value of y will be incremented by one.
           
        c) The value of y will be printed.
           
        d) The  value  of  y  will  be  incremented  by one and
           printed.
    
    19. Given the following code fragment, what values will be 
        printed when  **x = 4**?
    
        for ( x = 1; x <= 5; x++)
        {
             y = 1;
             while (y <= 3)
             {
                  printf("%3d",x*y);
                  y++;
             }
        }
           
        a) 1  2  3
           
        b) 5  6  7
           
        c) 4  8  12
           
        d) 5  10  15




