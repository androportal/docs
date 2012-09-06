


Chapter 6 Functions
===================
Functions are a basic building block for writing C/C++ programs.
Breaking a program up into separate functions, each of which performs
a particular task, makes it easier to develop and debug a program.


6.1 Functions
~~~~~~~~~~~~~
There are several advantages of using functions in program
development. Functions allow for breaking down the program into
discrete units. Programs that use functions are easier to design,
program, debug and maintain. It is possible to perform separate
compilation of functions. Functions can return data via arguments and
can return a value. Functions have local variables plus have access to
global variables. The general structure of a function is as follows:

::

    
        storage_class function_return_type function_name(arguments)
        declaration of argument types;
        {
        local_variable declarations;
    
             body_of_the_function;
        }

The components are:

::

    
     **storage_class** -    This is an optional item that indicates the
    storage class of a function.  If this is not present, the default 
    storage class type is  **extern**.  The only other allowable storage
    class is  **static**.  Neither  **auto** nor  **register** are valid storage
    class types for functions.

**function-return_type** - This tells the type of data item that will
be returned by this function. The function can only return one value
and it will be of this type. All standard C data types, plus
constructed data types, plus 'void' are allowed.

::

    
     **function_name** - The name of the function which follows the rules
    previously stated for variable names.  This name must be unique 
    within the program.
    
     **arguments**     - These are optional.  Some functions do not
    require arguments to be passed to them, so the argument list is 
    empty, getchar(), for example.  Arguments are separated by 
    commas with a maximum of 16 arguments.  The argument list must 
    be enclosed in parentheses with no semi-colon following the function 
    header.  With a traditional or K & R  **C** compiler the data type of
    the arguments is listed separately from the actual argument list.  
    With an ANSI  **C** or  **C++** compiler the data type of each argument is
    listed in the argument list.
    
     **declaration of argument types**     - For each argument passed to
    the function, its data type must be declared.  The declaration 
    must occur before the opening curly brace of the function.  Each 
    list of arguments of a specific type must end with a semi-colon. 
    All variable declarations are treated as local or  **auto** class
    variables.  This style of argument type declaration is used only 
    with traditional or K & R style  **C** compilers.
    
     **{**        - This marks the beginning of the function.
    
     **local_variable declarations**  -  Declare any variables needed to
    accomplish the task of the function.  These are  **auto** class
    variables by default and are visible only to the function and 
    disappear when the function passes control back to the calling 
    function.  Other storage class type variables may be declared at 
    this location.
    
     **body_of_the_function**    -  C and C++ statements that perform the
    task of the function which can also include calls to other C or 
    C++ functions, assembler routines, Pascal procedures, or FORTRAN 
    subroutines. 
    
     **}**        - The closing curly brace indicates the end of the
    function.  This forces a return value of zero for the 
     **function_return_type** specified unless a prior return statement
    has explicitly stated a value that is to be returned. 



Listing 6-1
```````````

::

    
    #include 
        
    int main()
    {
    int age;
    int getInteger( char [], int, int );
    
        age = getInteger( "Enter your age: ", 21, 50 );
        cout << "Glad to here you are " 
             << age 
             << " years old." 
             << endl;
        return 0;
    }
    
    int getInteger( char prompt[], int min, int max )
    {
    int temp, valid = 0;
    
        do
        {
             cout << prompt;
             cin >> temp;
             if( temp >= min && temp <= max )
                  valid = 1;
             else
             {
                  cout << "Input must be between " 
                       << min
                       << " and "
                       << max
                       << ". Try Again!" << endl;
                  valid = 0;
             }
                                 
        } while( !valid );
        return temp;
    }

Notice that in the above example the prototype of the function to be
called

::

    
            int getInteger( char [], int, int );

is in the function that will call that function. The prototype must
appear before the first call to the function. In the function
prototype, only the data types of the arguments need be present, not
the actual argument names as appears in the function.


6.2 Returning Values
~~~~~~~~~~~~~~~~~~~~
The **return** statement allows a function to return a value of the
stated data item type. This statement immediately pushes a value onto
the return stack and causes control to move to the ending curly brace,
**}**, of the function, which returns control back to the calling
function. Without a **return** statement a function implicitly returns
a value of zero for the data type for which the function was typed.
The general form of the **return** statement is:

::

    
        return(value);




Listing 6-2
```````````


::

    
    #include <iostream.h>
    int main()
    {
    int ch, type, chkletter();
    
        cout << "\nPress any key followed by RETURN:";
        cin >> ch;
        type = chkletter( ch );
        switch(type)
        {
             case 0:
                  cout << "\nNon alpha";
                  break;
             case 1:
                  cout << "\nUppercase alpha";
                  break;
             case 2:
                  cout << "\nLowercase alpha";
                  break;
        }     
        return 0;
    }
    
    int chkletter( int c)
    {
        if(c >= 'A' && c <= 'Z')
             return( 1 );
        if(c >= 'a' && c <= 'z')
             return( 2 );
    }



6.3 Passing Arguments
~~~~~~~~~~~~~~~~~~~~~

Arguments can be constants or variables holding values. The default
method is that arguments are passed by value. Passing by value means
that only a copy of the value held in the argument is brought into the
locally declared argument within the function. Passing by value
prevents the function from altering the original variable's value in
the calling function.


Fig 6-1
```````


::

    
    int main()
    {
             .
             .
             .
        x = add(10,20);
    }
        
    int add( int a, int b)
    {
        return(a+b);
    }

**C** and **C++** supports calling functions and passing arguments by
reference. Passing arguments by reference means passing the actual
address of a variable so that the called function can affect data
stored in the original variable. To pass an address of a variable
requires that the **address of** operator, **&**, be used on the
calling side. The address passed is then received in a pointer type
data item. Pointer is a data type just as **int** and **float** are
data types. Pointer type variables are intended to hold memory
addresses. These memory addresses represent the locations in computer
memory where data values are stored. To look at the values at those
address, the **value at the address** operator, *****, must be used to
dereference the pointer holding the memory address and obtain the
value stored at that memory address.


Listing 6-3
```````````


::

    
    #include <stdio.h>
    int main()
    {
    int x , y;
    void swap( int *, int *);
    
        x = 10;
        y = 20;
        swap( ,  );
        printf("%d  %d",x,y);
        return 0;
    }
    
    void swap(int *a, int *b)
    {
    int temp;
    
        temp = *a;     // store the value at the address held
                       // in pointer a
        *a = *b;       // store the value at the address held
                       // in pointer b into the value at the 
                       // address held in pointer a
        *b = temp;     // store the value held in temp into 
                       // the value at the address held in 
                       // pointer b
    }    




6.4 Command Line Arguments
~~~~~~~~~~~~~~~~~~~~~~~~~~

The **main()** function can have arguments passed to it from the
command line. Three arguments can be passed to the **main() **
function; **argc** which gives the number of arguments on the command
line; **argv** which holds the actual arguments from the command line;
and, **envp** which holds the current settings for any environment
block variables, this is an optional argument and is usually not
included. What is the command line? The operating system has a task
running that reads the command line associated with the operating
system prompt. The command line is anything from just after the
operating system prompt upto and including the first newline
character. Anything typed on the command line can be passed to a
**C**, **C++** or assembly language program.


Listing 6-4
```````````


::

    
    #include <iostream.h>
    int main( int argc, char *argv[], char *envp[] )
    {
    int indx;
    
        cout << "\nNumber of arguments is " << argc;
        for( indx = 0; indx < argc; ++indx )
             cout << "\nARGV[ " << indx << "]= " << argv[indx];
        for( indx = 0; envp[indx]; ++indx )
             cout << "\nENVP[ " << indx << "]= " << envp[indx];
        return 0;
    }


Notice that there are two arrays passed to the **man()** function,
**char *argv[]** and **char *envp[]**. These arguments are declared as
arrays of pointers to character type data. The concept of pointers
will be discussed in a later chapter but for now assume that these
arguments hold lists of strings.


6.5 Default Arguments
~~~~~~~~~~~~~~~~~~~~~
Another improvement to functions in **C++** is that you can specify
the default values for the arguments when you provide a prototype for
a function. For example, if you are defining a function named
**create_window** that sets up a window (a rectangular region) in a
graphics display and fills it with a background color, you may opt to
specify default values for the window's location, size, and background
color, as follows:

::

    
        //   A function with default argument values
        //   Assume that Window is a user-defined type
    
        Window create_window(int x = 0, int y = 0, int width = 100, 
                             int height = 50, int bgpixel = 0 );


With **create_window** declared this way, you can use any of the
following calls to create new windows;

::

    
        Window w;
    
        //   The following is the same as:
             create_window(0,0,100,50,0);
    
        w = create_window();
    
        //   This is the same as:
             create_window(100,0,100,50,0);
    
        w = create_window(100);
    
        //   Equivalent to:
             create_window(30,20,100,50,0);
    
        w = create_window(30, 20 );


As you can see from the examples, it is impossible to give a
nondefault value for the **height** argument without specifying the
values for **x**, **y**, and **width** as well, because **height**
comes after them and the compiler can only match arguments by
position. In other words, the first argument you specify in a call to
**create_window** always matches **x**, the second one matches **y**,
and so on. Thus, you can leave only trailing arguments unspecified.


6.6 Functions with an Unspecified Number of Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Using the ellipsis, **...**, with C++ function prototypes, means that
the function can be specified with an unknown number and type of
parameters. This feature can be used to suppress parameter type
checking and to allow flexibility in the interface to the function.
C++ allows functions be to declared with an unspecified number of
arguments. Ellipsis marks are used to indicate this, as follows:

::

    
        return_type function_name( ... )


The function **printf()**, from header stdio.h, is declared as

::

    
        int printf( char *, ... );


Calls to **printf()** must have at least one argument, namely a
string, beyond this, the additional arguments are unspecified both in
type and in number. Argument checking is turned off when a function is
declared to have an unspecified number of arguments. It is therefore
recommend against using this capability unless it is absolutely
necessary. Header **stdarg.h** contains a set of macros for accessing
unspecified arguments. The reader is urged to study the macros in this
header file.


6.7 Inline Functions
~~~~~~~~~~~~~~~~~~~~
Inline functions are like preprocessor macros, because the compiler
substitutes the entire function body for each inline function call.
The inline functions are provided to support efficient implementation
of OOP techniques in C++. Because the OOP approach requires extensive
use of member functions, the overhead of function calls can hurt the
performance of a program. For smaller functions, you can use the
**inline** specifier to avoid the overhead of function calls. On the
surface, inline functions look like preprocessor macros, but the two
differ in a crucial aspect. Unlike the treatment of macros, the
compiler treats inline functions as true functions. To see how this
can be an important factor, consider the following example. Suppose
you have defined a macro named **multiply** as follows:

::

    
        #define multiply(x,y)    (x*y)


If you were to use this macro as follows:

::

    
        x = multiply( 4+1, 6);  


By straightforward substitution of the **multiply** macro, the
preprocessor will transform the right-hand side of this statement into
the following code:

::

    
        x = (4+1*6);


This evaluates to 10 instead of the result of multiplying (4+1) and 6,
which should have been 30. Of course, you know that the solution is to
use parentheses around the macro arguments, but consider what happens
when you define an inline function exactly as you defined the macro:


Listing 6-5
```````````


::

    
    #include 
    
    //   Define inline function to multiply two integers
    
    inline int multiply ( int x, int y )
    {
        return( x * y );
    }
    //   an overloaded version that multiplies two doubles
    inline double multiply( double x, double y )
    {
        return( x * y );
    }
    
    int main()
    {
        cout << "Product of 5 and 6 "
             << multiply( 4+1, 6 );
        cout << "Product of 3.1 and 10.0 "
             << multiply( 3.0+.1, 10.0 );
        return 0;
    }


When you compile and run this program, it correctly produces the
following output:

::

    
        Product of 5 and 6 = 30
        Product of 3.1 and 10.0 = 31.000000


As you can see from this example, inline functions never have the kind
of errors that plague ill-defined macros. Additionally, because inline
functions are true functions, you can overload them and rely on the
compiler to use the correct function based on the argument types.
Because the body of an inline function is duplicated wherever that
function is called, you should use inline functions only when the
functions are small in size. In addition, any looping construct that
appears within an inline function will cause the compiler to force the
function to not be inline. Most compilers will generate a warning to
the effect that the function is being treated as a non-inline
function.


6.8 Reference Types as Arguments
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
C normally passes arguments by value. This means that when you call a
function with some arguments, the values of the arguments are copied
to a special area of memory known as the stack. The function uses
these copies for its operation. To see the effect of call by value,
consider the following code:


Fig 6-2
```````


::

    
        void twice( int a )
        {
             a *= 2;
        }
        .
        .
        int x = 5;
        //   call the "twice" function
        twice( x );
    
        printf( "x = %d\n", x);


You will find that this program prints 5 as the value of **x**, not
10, even though the function **twice** multiplies its argument by 2.
This is because the function **twice** receives a copy of **x** and
whatever changes it makes to that copy are lost on return from the
function. In C, the only way you can change the value of a variable
through a function is by explicitly passing the address of the
variable to the function. For example, to double the value of a
variable, you can write the function **twice** as follows:


Fig 6-3
```````


::

    
        void twice( int *a )
        {
             *a *= 2;
        }
        .
        .
        int x = 5;
        //   call the "twice" function
        twice(  );
    
        printf( "x = %d\n", x);


This time, the program prints 10 as the result. Thus, you can pass
pointers to alter variables through a function call, but the syntax is
messy. In the function, you have to dereference the argument by using
the ***** operator. C++ provides a way of passing arguments by
reference by introducing the concept of a **reference**, which is the
idea of defining an alias or alternative name for any instance of
data. The syntax is to append an ampersand ( **&**) to the name of the
data type. For example, if you have the following:

::

    
        int i = 5;
        int *p_i =  // a pointer to in initialized to point to i
        int _i = i;  // a reference to the int variable i


then you can use **r_i** anywhere you would use **i** or ***p_i**. In
fact, if you write this:

::

    
        r_i += 10;     // adds 10 to i


**i** will change to 15, because **r_i** is simply another name for
**i**. Using reference types, you can rewrite the function named
**twice** to multiply an integer by 2 in a much simpler manner:


Fig 6-4
```````


::

    
        void twice( int& a )
        {
             a *= 2;
        }
        .
        .
        int x = 5;
        //   call the "twice" function
        twice( x );
    
        cout << "x = " << x;


As expected, the program prints 10 as the result, but it looks a lot
simpler than trying to accomplish the same task using pointers.
Another reason for passing arguments by reference is that when
structures or classes are passed by value, there is the overhead of
copying objects to and from the stack. Passing a reference to an
object avoids this unnecessary copying and allows an efficient
implementation of OOP.


6.9 Overloaded Functions
~~~~~~~~~~~~~~~~~~~~~~~~
C++ provides the ability to overload functions. Function overloading
is a type of polymorphism and is one way of allowing the programming
environment to be dynamically extended. In C++, two or more functions
can share the same name. Therefore, a program could have several
functions to perform the absolute value function with all of them
named **abs**. The functions are distinguished from each other by have
the types of their arguments differ or by having the number of their
arguments differ or both. Because these functions share the same name
they are said to be overloaded. The compiler will automatically select
the correct version to call based upon the number and/or type of
arguments used to call the function.


Listing 6-6
```````````


::

    
    #include <iostream.h>
    //
    //  prototype functions 
    //
    int abs( int );
    long abs( long );
    float abs( float );
    double abs( double );
    
    int main()
    {
    int intValue;
    long longValue;
    float floatValue;
    double doubleValue;
        //
        //   ask for values
        //
        cout << "\nEnter a negative integer value: ";
        cin >> intValue;
        cout << "\nEnter a negative long integer value: ";
        cin >> longValue;
        cout << "\nEnter a negative floating point value: ";
        cin >> floatValue;
        cout << "\nEnter a negative double floating point value: ";
        cin >> doubleValue;
        cout << "\nAbsolute values are: " << endl;
        cout << "\t Integer: " << abs( intValue ) << endl;
        cout << "\t Long: " << abs( longValue ) << endl;
        cout << "\t Floating Point: " << abs( floatValue ) << endl;
        cout << "\t Double Floating Point: " << abs( doubleValue ) 
                  << endl;
        return 0;
    }
    int abs( int x )
    {
        return (x < 0 ? (-1 * x ) : x);
    }
    long abs( long x )
    {
        return (x < 0 ? (-1L * x ) : x);
    }
    float abs( float x )
    {
        return (x < 0 ? (-1 * x ) : x);
    }
    double abs( double x )
    {
        return (x < 0 ? ((double)-1 * x ) : x);
    }


This program defines four functions called **abs()**. With function
overloading, a single name can be used to describe a general class of
action. Unlike in C, there is no need for four differently named
functions, one for each data type to be handled. In C++, the compiler
determines which function is appropriate to perform the task. This is
a rudimentary form of polymorphism, which is simply one interface
representing multiple methods or functions.
