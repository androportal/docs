


Chapter 2 Basic Program Structure, Variables, Data Types and Constants
======================================================================

This chapter will introduce the structure of a C and C++ program along
with how to declare variables and constants.


2.1 The C and C++ Programming Languages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The C and C++ programming languages are powerful mid-level programming
languages that were created as systems programming languages. This
means that the language allows access to operating system functions.
In addition the language has the capability for easy access to
hardware.
The C language is a very portable language in that it is relatively
easy to port source code from one compiler to another. This is
possible because all input-output calls are isolated from the language
syntax in vendor supplied libraries.
The C and C++ language compiler is a very small program that
recognizes only 60 key words. The compiler can produce very efficient
executable programs because of the simplicity of the language, the
compiler can be made to optimize the resultant code. Also, the linkage
editor only incorporates object modules that are actually used in the
executable program.


2.2 Advantages and Disadvantages of C and C++
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The C and C++ language is a structured language which supports all
necessary components of a structured language such as global and local
variables, parameter passing by value and reference, and function
and/or procedure return values. The C and C++ compiler also supports
the concept of separate compilation of source code modules and the
linking of independent object modules either from standalone files or
from system or local libraries. This separate compilation feature
allows the programmer to recompile only the parts of an application
that have changed and relink those modified parts with existing
modules to produce a new executable program.
The C and C++ compiler also allows an interface to assembly language.
The compiler allows blocks of code can be written in assembly and
linked with blocks written in C and C++. A block of code could be a
function or simply several lines of code within a larger C and C++
function. The programmer only has to use the keyword **asm** followed
by an opening **{**, then the assembly code for the processor being
used and then a terminating **}**. The assembly code can use any
variable declared within the C and C++ code that follows within the
scope of the assembly code.
The C language component of a C and C++ compiler has some weaknesses
that make the language difficult to use as an application language.
The language lacks strong type checking, meaning that the compiler
will allow a character variable to be stored into a floating point
variable without complaining. The C++ component of a C and C++
compiler has much stronger type checking and will issue warnings for
such behavior. So for the programmer to receive the maximum protection
against mixed type errors, it would be better to use the C++ component
of the C and C++ compiler.
Neither C nor C++ has bounds checking on arrays. For example, if a
programmer declares an array of 50 integers, but in the program code
he or she by mistake stores a value into array element 52, the
compiler will not complain. The integer value was indeed stored at the
fifty-second integer sized offset from the base address of the array.
This lack of bounds checking can cause severe problems in some
programs.
In the MS-DOC and PC-DOS operating system, neither C nor C++ has any
memory protection from access by pointers. A programmer can load a
memory address of any place in memory into a pointer and through that
pointer retrieve or set the value at that memory address. This feature
can cause the DOS operating system to re- boot, hang-up, or crash
completely. In addition, a programmer that is unfamiliar with the use
of pointers, can, in MS/PC-DOS, cause his or her hard disk drive to
crash, be reformatted, or destroyed. The same also holds true for the
video display on a DOS machine. Fortunately, mini-computer operating
systems, such as UNIX, have builtin memory protection that prevents
such dangerous happenings as stated above.
Also, C and C++ does not have sophisticated string and record handling
capabilities. Strings must be handled with a series of functions
supplied in the standard C and C++ libraries. With C++, sophisticated
String objects can be created as well as advanced record management
schemes.


2.3 Program Structure and Rules
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The majority of C and C++ programs are composed of functions. All
functions have the following general form:

::

     
     Function-Return-Type Function-Name(argument list)
     {
     local variable declarations;
    
     body of the function;
     }


A general form for a C and C++ program is as follows:

::

     
     inclusion of header files
     defined constants
     declarations of global variables
    
     Function-Return-Type main(arguments from command line)
     {
     declaration of local variables used by main function;
    
     body of the main function;
     }
    
     Function-Return-Type next_function(argument list)
     {
     declaration of local variables for next_function;
     body of the next_function;
     }


A C and C++ program must have one and only one function with the name
of **main**. **main** must be in lower case. The **main** function
should have a return type of either **int** or **void**, with **int**
being the preferred return type. Since **main** is the entry point to
the program from a calling process, which could be the operating
system or another program, the return value of main is used to
indicate the completion status of the called program. A program that
returns a value of 0 is considered to have completed successfully and
a return value other than 0 is considered to indicate an abnormal
termination.
All functions in the program, besides **main**, can have names the
programmer desires. The names of functions should indicate what task
or purpose that function is to perform. All C and C++ keywords must be
in lower case. Function names can be composed of letters, digits and
underscores and can be a maximum of 30 characters, but must be unique
in the first 8 characters.
Functions must have a pair of curly braces, **{** **}**, these signify
the beginning and end of a function's scope. The names of variables
that are declared within a function can be the same as function names,
but this is not a good practice. Variables declared within the scope
of a function are called local variables. Local variables "live" only
while the function has control. When the function terminates, and
control returns to the calling function, all local variables cease to
exist. The statements within a function are terminated with a semi-
colon, this is called the statement terminator. Nested functions or
subroutines are not allowed. Nesting a function means that one
function is defined within another.
The difference between a declaration and definition is important. A
**declaration** announces the properties of a variable or a function.
The main reason for declaring variables and functions is for type
checking. If you declare a variable or function and then later make
reference to it with data objects that do not match the types in the
declaration, the compiler will complain. The purpose of the complaint
is to catch type errors at compile time rather than waiting until the
program is run, when the results can be more disastrous.
A **definition**, on the other hand, actually sets aside storage space
(in the case of a variable) or indicates the sequence of statements to
be carried out (in the case of a function). A function prototype, or
declaration, is a return type followed by a function declarator
followed by a semicolon. A function definition is a return type
followed by a function declarator followed by a function body enclosed
in matching braces, **{ }**. A function definition can also serve as a
declaration for all source code following the definition. The only
time a function declaration is actually required is when a reference
is made to a function before the function definition is specified.
A variable declaration with an **extern** specifier is not a
definition, unless it has an initializer. The function prototype is a
function declaration, but it is not a definition.
To place comments in a C and C++ program the programmer may use **/***
and ***/** pairs. These comment indicators cannot be nested but can
span multiple lines. C++ allows the use of **//** as a comment
indicator. This symbol indicates that the rest of the line upto the
newline character is to be treated as a comment.
When first learning C and C++ programming, always start C programs
with

::

    
     #include "stdio.h"

and C++ programs with

::

    
     #include "iostream.h"


These header files include the function prototypes that allow a
program to call the standard input/output functions that make it
possible to write to the screen and read from the keyboard.


Listing 2-1
```````````


::

    
    #include "stdio.h"
    int main()
    {
    char name[30];
    
     /* prompt user for name */
     printf("\nEnter your name: ");
     /* read the users response from the keyboard */
     gets(name);
     /* print welcome message */
     printf("\nWelcome %s to C Language Programming", name);
     return 0;
    }




Listing 2-2
```````````


::

    
    #include "iostream.h"
    int main()
    {
    char lname[25], fname[15];
    
     // prompt user for first name and last name
     cout << "\nEnter your first name then last name: ";
     // read the users response from the keyboard
     cin >> fname >> lname;
     // print welcome message
     cout << "\nWelcome " << fname << " " << lname
     << " to C++ Language Programming"
     << endl;
     return 0;
    }




2.4 Header Files
~~~~~~~~~~~~~~~~

Header files are source code files that contain defined constants,
constant values, macros, data type templates and function prototypes.
C and C++ needs to define function prototypes for calls to functions
residing outside of the current file. All input/output functions,
memory management function, string manipulation functions, math
functions and assorted other functions reside in external libraries
and are not part of the syntax of the language. In order for a C and
C++ program to make use of these capabilities, the program must first
include the proper header file that prototypes the functions desired.
The program is then compiled, with the prototypes used to syntax check
the calls to the external functions. The compiler produces an object
code representation of the source file with a table that contains
references to functions for which the compiler could not find the
code. The object file is then given to the linkage editor program that
attempts to resolve the external references with functions in the
standard C and C++ function libraries. If the linkage editor is able
to resolve all references, then an executable program is produced,
otherwise, linker error messages that state what functions could not
be found are produced.
The location of header files is dependent upon what operating system
is being used and in the case of a PC environment, which vendor's
compiler is being used. The following shows the most common locations
for header files.


Table 2-1
`````````
Location of Header Files by Vendor Operating System Compiler Vendor
Standard Headers UNIX GNU /usr/include system supplier /usr/include
DOS Borland c:\bc4\include Microsoft c:\msvc\include


2.5 C and C++ Compiler
~~~~~~~~~~~~~~~~~~~~~~

Most C and C++ compilers are four pass compilers. The first pass is
called the preprocessor and this pass looks only for **#** in the
source line. The preprocessor commands indicate

#. file inclusion
#. macro definition
#. constant definition
#. conditional compilation.

All statements can be free form or appear anywhere on the line. The
second pass of the compiler parses C and C++ language statements,
constructs a symbol table and reports syntax errors. The third pass
generates the object code that represents the source code that was
input. Also, this pass builds the external reference table. The fourth
pass performs code optimization on the object code.
If the compiler did not find any errors, then the compiler starts a
process on the linker or loader. The linker takes the object code
representing the original source statements and binds or links that
binary code with the binary code of any external functions or
subroutines that the program called. For a simple program, the
external functions are found in the standard C library which is
located in a library file in a subdirectory known to the linker
program. For more complex application programs, the linker must be
directed to look not only at the standard library files but at
additional libraries that were either developed internally or were
purchased from a third party.
The location of library files is dependent upon what operating system
is being used and in the case of a PC environment, which vendor's
compiler is being used. The following shows the most common locations
for the standard C library file.


Table 2-2
`````````
Location of Standard Libraries by Vendor Operating System Compiler
Vendor Standard Library UNIX GNU /usr/lib/libc.a system supplier
/usr/lib/libc.a DOS Borland c:\bc4\lib\cX.lib Microsoft
c:\msvc\lib\Xlibce.lib (where X is one of S, M,C, L, or H which stands
for the various memory models available on a PC )


2.6 Variables, Data Types and Constants
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Before starting to program in C and C++, it is necessary to become
familiar with the rules concerning the declaration of variables, the
types of variables, the way those variables can be used to form
expressions and the way values for those variables can be input and
output.


2.7 Data Types
~~~~~~~~~~~~~~

C and C++ requires that all variables or identifiers be declared
before there use. Variables or identifiers have three attributes
associated with them;

#. the storage class
#. the type modifier
#. the data type


Under the ANSI C standard all variables or identifiers can be assigned
an initial value when declared.
Identifiers also fall into two major categories. An identifier is
either a global variable or identifier or a local variable or
identifier. A global variable is one that is declared outside the
bounds of a function. The boundaries of a function start at the
function heading and end at the closing curly brace, **}**. The
following represents the function heading:

::

     
     function-return_type function_name( argument list )
     {
     ...
     }


A global variable can be accessed by any function that is defined
below the declaration of the variable, but cannot be seen by any
function that is defined above the variable declaration. A global
variable will hold any value placed into it until another value is
stored into it or until the program terminates. Global variables are
not initialized to any predefined value when declared, so it must be
initialized if a starting value is expected.
A local variable is declared within the bounds of a function, and can
only be seen by statements within the body of the function where the
variable is declared. A local variable will only hold a value placed
into it for as long as the function that the variable is declared
within has program control. When the function returns control back to
the calling function, either through a **return** statement or by
encountering the closing **}**, the local variable is destroyed. A
local variable has no predefined value when declared, so it must be
initialized if a starting value is expected.
The following examples will illustrate.


Listing 2-3
```````````


::

    
     #include "stdio.h"
    
     int myage; /* global variable to both main() 
                   and getage() */
    
    int main()
    {
    char myname[30];
    void getage();
    
     printf("\nEnter your name:");
     gets( myname );
     getage();
     printf("\n AGE = %d and NAME = %s", myage, myname );
     return 0;
    }
    
    void getage()
    {
     printf("\nEnter your age: ");
     scanf("%d",&myage);
    }




Listing 2-4
```````````


::

    
    #include "iostream.h"
    
    int myage; // global variable to both main() and getage()
    
    int main()
    {
    char myname[30];
    void getage();
    
     cout << "Enter your name: ";
     cin >> myname;
     getage();
     cout << "AGE = " << myage
     << " NAME = " << myname;
     return 0;
    }
    
    void getage()
    {
     cout << "Enter your age: ";
     cin >> myage;
    }


In the above example **int myage** declares the variable **myage**
outside of **main()**, and both **main()** and **getage()** can use
**myage**.


Listing 2-5
```````````


::

    
    #include "stdio.h"
    
    int main()
    {
    char myname[30];
    void getage();
    
     printf("\nEnter your name:");
     gets( myname );
     getage();
     printf("\n AGE = %d and NAME = %s", myage, myname );
     return 0;
    }
    
    int myage; /* global to only getage() */
    
    int getage()
    {
     printf("\nEnter your age: ");
     scanf("%d",&myage);
    }




Listing 2-6
```````````


::

    
    #include "iostream.h"
    
    int main()
    {
    char myname[30];
    void getage();
    
     cout << "Enter your name: ";
     cin >> myname;
     getage();
     cout << "AGE = " << myage
     << " NAME = " << myname;
     return 0;
    }



::

    
    int myage; // global only to getage
    
    int getage()
    {
     cout << "Enter your age: ";
     cin >> myage;
    }


In the above example, **int myage** is global only to **getage()** and
only **getage()** can see and use **myage**. The function **main()**
cannot use **myage** because it does not know of its existence;
therefore, the above example will not compile on most systems. For the
above example to compile and work, the function **getage()** would
have to return the value **myage** holds and the function **main()**
would have to receive the returned value from **getage()** into some
local variable, and then print the contents of that variable.
When first learning to write C and C++ programs, the student should
avoid using global variables. Beginning C and C++ programmers must
learn to write programs that use only local variables in order to
learn the concepts of modular programming. This style of programming
will make it much easier to debug programs.


Listing 2-7
```````````


::

    
    #include "stdio.h"
    
    int main()
    {
    char myname[30];
    int theage;
    int getage();
    
     printf("\nEnter your name:");
     gets( myname );
     theage = getage();
     printf("\n AGE = %d and NAME = %s", theage, myname );
     return 0;
    }
    
    int getage()
    {
    int myage; /* local to only getage() */
    
     printf("\nEnter your age: ");
     scanf("%d",&myage);
     return (myage);
    }




Listing 2-8
```````````


::

    
    #include "iostream.h"
    
    int main()
    {
    char myname[30];
    int theage;
    int getage();
    
     cout << "Enter your name: ";
     cin >> myname;
     theage = getage();
     cout << "AGE = " << theage
     << " NAME = " << myname;
     return 0;
    }
    
    int getage()
    {
    int myage; // local only to getage
    
     cout << "Enter your age: ";
     cin >> myage;
     return (myage);
    }


A description of the syntax of a variable declaration is:

::

     
    [storage class][type modifier]type id-1 [= initial value];
    
    Examples:
     auto int x = 0;
     extern float average;
     static double seed;
     register int indx;
     unsigned char = 205;
     char name[] = "John Smith";




2.8 Storage Classes
~~~~~~~~~~~~~~~~~~~

Storage classes are used to indicate duration and scope of a variable
or identifier. Duration indicates the life span of a variable. Scope
indicates the visibility of the variable.
The **auto** storage class is the default storage class for a local
variable. This storage class makes the variable known only to the
function in which it is declared. The duration is temporary. The
variable exists only as long as the function where it was declared has
control. The scope is local. The variable is known or visible only
within the function where it is declared.

::

     
     #include "stdio.h"
    
     int main()
     {
     char myname[30]; /* lives only until the } is */
     /* encountered */
     int myage;
     ...
     }


The **static** storage class is used to declare an identifier that is
a local variable either to a function or a file and that exists and
retains its value after control passes from where it was declared.
This storage class has a duration that is permanent. A variable
declared of this class retains its value from one call of the function
to the next. The scope is local. A variable is known only by the
function it is declared within or if declared globally in a file, it
is known or seen only by the functions within that file. This storage
class guarantees that declaration of the variable also initializes the
variable to zero or all bits off.


Listing 2-9
```````````


::

    
    #include "stdio.h"
    
    int main()
    {
    char myname[30];
    void getage();
    int readage();
    int lastage;
    
     printf("\nEnter your name:");
     gets( myname );
     getage();
     lastage = readage();
     printf("\n AGE = %d and NAME = %s", lastage, myname );
     return 0;
    }
    
    static int myage; /* global static seen by all code */
                      /* coming after this statement */
    void getage()
    {
     printf("\nEnter your age: ");
     scanf("%d",&myage);
    }
    
    int readage()
    {
     return myage;
    }


The **extern** storage class is used to declare a global variable that
will be known to the functions in a file and capable of being known to
all functions in a program. This storage class has a duration that is
permanent. Any variable of this class retains its value until changed
by another assignment. The scope is global. A variable can be known or
seen by all functions within a program.
The following resides in FILE1.C:


Listing 2-10A
`````````````


::

    
    #include "stdio.h"
    
    int myage;
    int main()
    {
    char myname[30];
    void getage();
    
     printf("\nEnter your name:");
     gets( myname );
     getage();
     printf("\n AGE = %d and NAME = %s", myage, myname );
     return 0;
    }


This resides within FILE2.C:


Listing 2-10B
`````````````

The **register** storage class is used to declare a local variable
except that the contents are stored in a CPU register. The storage
class has a duration that is temporary. The variable is treated
exactly like an **auto** class variable. The scope is local. The
variable is treated exactly like an **auto** class variable. Only data
types that occupy a word of storage of less can use this storage class
because CPU registers are typically no longer than the word size of
the machine. This would usually be used for a loop iterator or control
variable in order to gain as much speed as possible in the code.


Listing 2-11
````````````


::

    
    #include "stdio.h"
    
    int main()
    {
    char thename[30];
    register int count;
    
     printf("\nEnter ten names. " );
     for( count = 0; count < 10; ++ count )
     {
     printf("\nEnter a name:");
     gets( thename );
     printf("\n NAME = %s", thename );
     }
     return 0;
    }


The modifier of a data type can be one of the following:
**unsigned**
Indicates that the following data type will not have a sign bit
allocated. This modifier can be used with **char** or **int** data
types.
**signed**
Indicates that the following data type will have a sign bit allocated.
Signed data items are the default on most systems. This modifier can
be used with **char** or **int** data types.
**short**
The data storage allocated is usually no bigger in number of bits
allocated than an **int** data type. This modifier can be used with an
**int** data type or by itself. If used without a following data type,
**int** is implied as the data type.
**long**
The data storage allocated on most systems is usually twice the number
of bits allocated to an **int** data type. On some systems 32-bit and
longer word length systems, **long** gets the same number of bits as
an **int**.
This modifier is used on either **int** or **float** type data. When
used on **int** type data, it usually means data storage is twice as
long as an **int** data type. When used on **float** type data, it
creates a data type of **double**. When used without a following data
type, **int** is implied as the data type.
The base data types available are:
**char**
Items of this type hold character type data and occupy one byte of
storage. On most machines one byte is eight bits of storage. For most
compilers this type of data items will be signed data item, meaning
that one of the eights for storage has been set aside for an algebraic
sign.
**int**
Items of this type hold integer type data and occupy one word of
storage. The length of a word will depend upon the machine
architecture. These types of data items are by default signed data
storage.
**float**
Items of this type hold floating point or real type data and occupy
one or two words of storage. The length of this data type is dependent
upon the machine architecture. These types of data items are by
default signed data storage.
**double**
Items of this type hold double precision floating point type data and
occupy two words of storage. These types of data items are by default
signed data storage.


2.9 Allocated Space for Data Types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following chart indicates the number of bits allocated to the
various data types of the C and C++ language. This chart applies to an
IBM PC running MS-DOS.


Table 2-3
`````````
Bits Per Data Type Type Number of Bits char 8 int 32 float 32 double
64 long int 32 short int 16 long float 64


2.10 Variable Names
~~~~~~~~~~~~~~~~~~~

C and C++ both allow long descriptive variable or identifier names.
The rules for forming a variable name also apply to function names.
The rules are:

#. the first character must be a letter, either lowercase or
uppercase;
#. case is significant, uppercase and lowercase letters are different;
#. traditionally, variable names are composed of lowercase letters,
numbers, and the underscore character
#. defined constants are traditionally made up of all uppercase
characters
#. the number of characters allowed in a variable name is compiler
dependent, but the variable must be unique in the first eight
characters in order to be safe across compilers;
#. make variable names descriptive;
#. do not make a variable name the same as a reserved word.


The reserved words for the ANSI C language are:


Table 2-4
`````````


::

     
     auto double int struct
     break else long switch
     case enum register typedef
     char extern return union
     const float short unsigned
     continue for signed void
     default goto sizeof volatile
     do if static while


The following reserved words have been added for C++


Table 2-5
`````````


::

    
     catch protected
     delete public
     friend template
     inline this
     new throw
     operator try
     private virtual
     wchar_t


In addition, the X3J16 Technical Committee has proposed that the
following keywords be added to the language definition for C++


Table 2-6
`````````


::

     
     and and_eq bitand bitor
     bool compl not not_eq
     or or_eq xor xor_eq




2.11 Constants
~~~~~~~~~~~~~~

C and C++ allow for the programmer to define constants that represent
decimal, hexadecimal octal, string and character constants. The
**#define** preprocessor directive can be used to define constants
that are to be used within a program.

::

     
     #define PI 3.14156
     #define MYNAME "JOHN DOE"
     #define LIMIT 10
     #define ESC '0x1B'


In addition, literals can be used as constants in the body of the
program. Literals can be string literals, character literals or
numeric literals. Any numeric literal starting with a **0** (zero) is
considered to be an octal number. In order to express hexadecimal
literals, use a **0** (zero) followed by a lower case or upper case
**x** or **X**.


Fig 2-1
```````


::

     
     Octal Hex   Decimal
    
     023   0x13   19
     0777  0x1FF  511
     077   0x3F   63
     01    0x01   1


Character constants are written within single quotes, double quotes
are reserved for strings. For example:

::

     
     char c;
    
     c = 'A';


stores a single character **A** into the character variable **c**.
Whereas, the following

::

     
       c = "A";


attempts to store the string **A** into a single character variable
**c**. A string is composed of the characters composing the string
plus a NULL character, **\0** (a **\** followed by a zero).
Some characters cannot be typed in a source file but have special
codes to represent their meanings, these are referred to in **C** and
**C++** as escape sequences. **C** and **C++** predefines the
following escape sequences


Table 2-7
`````````
Pre-defined Escape Sequences Character in C or C++ Meaning \n newline
character \b backspace \r carriage return \t horizontal tab \v
vertical tab \f form feed character \a ring the console bell \" double
quote \' single quote \0 NULL (used to indicate end of string) \\
backslash \xxx any three digit octal representation of a character;
also could be hexadecimal, i.e., '\007' is the octal for the bell
character on the PC and 0x07 is the hex for the bell character
The above escape sequences are typically used in **printf()** or
**cout** to control cursor movement on the video display device. Some
dot matrix printers also support the cursor movement escape sequences
to move the print head on the page.




2.11.1 const and volatile
~~~~~~~~~~~~~~~~~~~~~~~~~

Both **const** and **volatile** are two keywords that are in the ANSI
C standard. They help identify which variables will never ( **const**)
change and those variables that can change unexpectedly (
**volatile**).
Both keywords require that an associated data type be declared for the
identifier, for example

::

     
         const float pi = 3.14156;


specifies that the variable **pi** can never be changed by the
program. Any attempt by code within the program to alter the value of
**pi** will result in a compile time error.
The value of a **const** variable must be set at the time the variable
is declared. Specifying a variable as **const** allows the compiler to
perform better optimization on the program because of the data type
being known.
There is a tendency to replace all **#define** defined constants with
variables using the **const** keyword. This is not a good idea. The
defined constants are only incorporated within the program body if
they are used. All variables declared with **const** take up address
space in the program whether they are used or not. The defined
constants can also be declared globally within an application header
file and included into any number of source files that comprise the
application source. If the defined constants are replaced with
**const** variables in a header file and appear globally, errors
result at the time the different compiled modules of the application
are linked together. Therefore, **const** is not a direct replacement
for **#define** constants.
The **volatile** keyword indicates that a variable can unexpectedly
change because of events outside the control of the program. This
usually is used when some variable within the program is linked
directly with some hardware component of the system. The hardware
could then directly modify the value of the variable without the
knowledge of the program.




















































































