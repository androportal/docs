


Chapter 5 Making Decisions and Looping
======================================


Choosing between different courses of action makes a program much more
useful and flexible. Decision making constructs allow for many
different logical branches of code to be incorporated into a single
program.

One of the fundamental properties of a programming language is the
ability to repetitively execute a sequence of statements. These
looping capabilities enable programmers to develop concise programs
containing repetitive processes that could otherwise require an
excessive number of statements.


5.1 Program Control
~~~~~~~~~~~~~~~~~~~


The **if-else** statement allows conditional execution of a group of
statements. The general form of an **if-else** statement is


Fig 5-1
```````


::

    
        if(expression)
        {
             statement-block-1;
        }
        else
        {
             statement-block-2;
        }



where **expression** can be a combination of logical and relational
operators and their operands, a function call, or a mathematical
expression. If the **expression** is true, then statement-block-1 is
executed otherwise statement-block-2 is executed. Only **expressions**
evaluating to zero(0) are considered to be false in C and C++.

Statements subordinate to **if** and **else** clauses can be compound
statements; meaning several statements grouped together and bounded by
opening and closing curly braces. It is recommended that subordinate
statements be indented to indicate the subordination. Most programmers
indent from three to five spaces, some use as many as eight spaces. It
is also recommended that code not be placed after column seventy-two
(72), this makes all the code on a line visible on the display and
usually makes for a readable printout.


Fig 5-2
```````


::

    
    A:
        if(x == y) 
             a = b + c;
    
    B:
        if(c >= 10)
        {
             cout << "\nC is over 10";
             ++a;
        }
        else
        {
             cout << "\nNot yet!";
             c++;
        }



Notice that the first example, A, does not use an **else** clause. The
**else** clause is optional and is only used if needed. Also, note
that curly braces are not used on example A because there is only a
single statement subordinate to the **if**.

**if-else** statements can be nested. There is no reasonable limit
imposed by the compiler to the number of nested **if-else**
statements, although there should be a practical limit. It is
recommended that if nested **if-else** statements are used, that the
nest not go over four deep. This limit is more a matter of readability
and not anything imposed by the compiler.

For example, the following shows nested **if-else** statements. Notice
how quickly the code progresses toward the right edge of the display,
even with short variable names. Also, this example has a major error
in logic. See if you can find it.


Fig 5-3
```````


::

    
        if( a > 10 )
             if( b < 5 )
                  b = a * 10;
        else
             if( a < 5 )
                  if ( b > 10 )
                       b = a * b;
                  else
                       if( c > 5 && b == 10 )
                            if( c < 10 )
                                 c = b * a;
                            else
                                 c = a * c;




In nested **if-else** statements, the **else** is associated with the
nearest **if**, unless bracketed within curly braces which form a
compound statement. The error in the above sample is at the very
beginning where


Fig 5-4
```````


::

    
        if( a > 10 )
             if( b < 5 )
                  b = a * 10;
        else



The **else** is associated by the compiler with the **if( b < 5 )**
statement not with **if( a > 10 )**. The intention of the programmer
was to associate the **else** with **if( a > 10 )**. In order to
accomplish the correct association, the code block should appear as


Fig 5-5
```````

::

    
        if( a > 10 )
        {
             if( b < 5 )
                  b = a * 10;
        }
        else


Notice the use of the curly braces to limit the scope of the **if( b <
5 )** statement. Many errors in logic occur because of incorrect
**else** statement association. Use the curly braces if there is any
doubt about how the compiler will associate **if** with **else**
statements.


5.2 Switch Statement
~~~~~~~~~~~~~~~~~~~~


The **switch** allows the conditional execution of one of a number of
groups of statements based on the value of an expression. The general
form of a **switch** statement is:


Fig 5-6
```````

::

    
        switch( expression )
        {
             case constant-value-1:
                  statement-block-1;
                  break;
    
             case constant-value-2:
                  statement-block-2;
                  break;
             .
             .
             .
             default:
                  statement-block-n;
                  break;
        }



Where **expression** must produce an integer or character result and
each of the constant values must be an integer or character value that
could be a possible value of the **expression**.

The **expression** in the switch statement is evaluated and compared
to each of the case constant values in order. If a match is found,
execution is started at that **case** statement. If no match is found,
control is transferred to the **default** statement, if one has been
coded.


Listing 5-1
```````````

::

    
    #include <iostream.h>
    ing main()
    {
    int day;
        
        cout << "\nEnter a number for"
             << "the day of the week:";
        cin >> day;
    
        switch( day )
        {
             case 0:
                  cout << "Sunday";
                  break;
             case 1:
                  cout << "Monday");
                  break;
             case 2:
                  cout << "Tuesday";
                  break;
             case 3:
                  cout << "Wednesday";
                  break;
             case 4:
                  cout << "Thursday";
                  break;
             case 5:
                  cout << "Friday";
                  break;
             case 6:
                  cout << "Saturday";
                  break;
             default:
                  cout << "No Such Day";
                  break;
        }
        return 0;
    }



The **break** statement causes an immediate exit from the switch.
Without the **break**, the execution will fall thru to the next
**case** and will continue to fall thru until a **break** statement is
reached. Sometimes the desired logic is to have multiple **case**
statements cause one code block to be executed. For example, assume
that the keyboard is being read and that when a newline character or a
carriage return character is read a null byte is to placed at the end
of an array of characters.


Listing 5-2
```````````

::

    
    #include <iostream.h>
    int main()
    {
    char buffer[80];
    int ch, idx = 0, lgth = sizeof( buffer) -1;
        
        cout << "\nEnter a string of characters: ";
        while ( idx < lgth && ch != '\n' && ch != '\r' )
        {
             cin >> ch;
             switch( ch )
             {
                  case '\n':
                  case '\r':
                       buffer[idx] = '\0';
                       break;
                  case '\b':
                       --idx;
                       if( idx < 0 )
                            idx = 0;
                       putchar( '\b' );
                       putchar( ' ' );
                       putchar( '\b' );
                       break;
                  default:
                       buffer[idx] = ch;
                       ++idx;
                       break;
             }
        }
        return 0;
    }




5.3 while Loops
~~~~~~~~~~~~~~~


The **while** loop allows for the repeated execution of a group of
statements as long as a condition is true. The condition is checked
each time before the code is executed. The general form of the loop
construct is:


Fig 5-7
```````


::

    
        while (expression)
        {
             statement-block;
        }



If **statement-block** comprises a group of statements, then the group
must be bracketed by opening and closing curly braces. The statement
or group of statements inside the while loop will be executed until
the expression is false


Listing 5-3
```````````


::

    
    #include <iostream.h>
    
    int main()
    {
    int ch = 0;
        
        cout << "\nCharacter Set";
        while ( ch < 256 )
        {
             cout << "\nChar: " << char(ch) 
                  << " Hex: " << hex << ch
                  << " Oct: " << oct << ch 
                  << " ASCII: " << ch ;
             ++ch;
        }
        return 0;
    }



5.4 for Loops
~~~~~~~~~~~~~


The **for** loop is a specialized form of the **while** loop, which
includes an initialization statement, a conditional expression and a
third expression, referred to as the increment expression, which is
executed at the end of the loop before control is transferred back to
the conditional expression test at the loop beginning. The general
form of the for loop is:


Fig 5-8
```````


::

    
         for(init-expression; 
             conditional-expression; increment-expression)
        {
             statement-block;
        }


All three expressions composing the **for** loop are optional. The
expressions can be any legal expression, function call, or
mathematical statement. The statements are executed as follows:


Fig 5-9
```````


::

    
        init-expression;
    
        loop:
    
             if conditional-expression is true
             begin
                  statement-block;
                  increment-expression
             end
             else
                  exit the loop;
    
        end of loop:



The following example prints the character set being used on the
current machine. The program prints character, the ASCII value, the
hexadecimal value and the octal value of the character.


Listing 5-4
```````````


::

    
    #include <iostream.h>
    
    #define MAX_LINES   23
    
    int main()
    {
    char ans;
    int ch, lines, stop = 0, maxchars;
        //
        //    how many characters in current character set
        //
        cout << "\nHow many characters in the character set: ";
        cin >> maxchars;
        // 
        //  print the ASCII and  extended ASCII characters
        //
        for(ch = 0, lines = 0; ch < maxchars  && !stop; ++ch)
        {
             cout << "\nCHAR: " << char( ch )
                  << " ASCII: " << ch
                  << " HEX  : " << hex << ch
                  << " OCT  : " << oct << ch
                  ;
             if( ++lines > MAX_LINES )
             {
                  cout << "\nContinue(Y/N)?";
                  cin >> ans;
                  if(ans == 'N' || ans == 'n')
                  {
                       stop = 1;
                       break;
                  }
                  lines = 0;
             }
        }
        return 0;
    }




5.5 do-while Loops
~~~~~~~~~~~~~~~~~~


This loop is like the while loop, except that the condition is checked
after the loop is executed. The general form is as follows:


Fig 5-10
````````


::

    
        do 
        {
             statement-block;
        } while(expression);



The statement or statement-block are executed at least once, even if
the expression is false on the first test.


Listing 5-5
```````````


::

    
    #include <iostream.h>
    #define ESC 27
    
    int main()
    {
    int ch;
                  
        do 
        {
             cout << "\nPress any key:";
             cin >> ch;
             cout << "\nCHAR: " << ch << HEX: " << ch;
    
        } while(ch != ESC);
        return 0;
    }




5.6 break Statement
~~~~~~~~~~~~~~~~~~~


The **break** terminates execution of a loop or switch-case and
transfers execution to the first statement following the loop or the
switch-case. If the **break** statement is within a loop that is
nested within another loop, the **break** statement only exits the
loop the holds the **break** statement, not the outer loop.


5.7 continue Statement
~~~~~~~~~~~~~~~~~~~~~~


The **continue** causes execution to pass to the end of the current
loop. For example:


Fig 5-11
````````


::

    
        for(i=1; i < 100; i++)
        {
             if( i == 10 )
                  continue;
             .
             .
             .
        }



when **i** is equal to **10** execution will go to the increment-
expression, **i++** and bypass any code between the **if** and the
increment-expression.


5.8 Declarations within Blocks
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


C++ allows declarations within blocks after code statements. This
allows a programmer to declare an entity closer to its first point of
application. For example, an index can be declared within a loop, as
follows:

::

    
        for( int i = 0; i < 12; i++ )




5.9 Scope Qualifier Operator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The new operator **::** is used to resolve name conflicts. For
example, if the automatic variable **vector_sum** is declared within a
function and there exists a global variable **vector_sum**, the
specifier **::vector_sum** allows the global variable to be accessed
within the scope of the automatic variable **vector_sum**.

The reverse is not true. It is not possible for the automatic variable
**vector_sum** to be accessed from outside its scope. The scope
qualifier **::** is also used in connection with classes.


Listing 5-6
```````````


::

    
    //   **::** scope resolution operator example
    
    int i = 1;         // external or global i
    
    #include <iostream.h>
    
    int main()
    {
    int i = 2;         // redeclares i locally to main
    
        {              // an inner block within a function
             cout << "Enter inner block" << endl;
             int n = i;     // the global i is still visible
             int i = 3;     // hides the global i which can only be 
                            // referenced by using the :: operator
    
             // print the local i and the global i
             cout << i << " i << ::i " << ::i << endl;
             cout << "n = " << n << endl;
    
        }    // end of inner block
    
        cout << "Enter outer block" << endl;
        //   print the current local i and the global i
        cout << i << " i  ** ::i " << ::i << endl;
        return 0;
    }
    **



The output of this code is:


Fig 5-12
````````


::

Enter inner block 3 i

::

::i 1 n = 2 Enter outer block 2 i

::

     ::i 1




5.10 Scope of Identifiers
~~~~~~~~~~~~~~~~~~~~~~~~~


Each identifier or name has a scope that indicates the region of the
program where that identifier can be used. C++ supports the notion of
the following types of scope:

#. **Local:** Names appearing inside a block statement (enclosed in a
pair of curly braces **{...}**) have local scope. You can use these
only within that block and only after the actual declaration. Note
that you cannot define a function in a local scope. (This means you
cannot define one function inside the body of another.)
#. **File:** Names appearing outside all blocks and class declarations
have file scope. These can be used within that file anywhere after the
point where they are declared.
#. **Class:** Names of data and function members of a **class** (or
   **struct**) have class scope.


