


Chapter 3 Basic Input-Output Statements
=======================================

In order to learn how to program effectively in the C or C++ language,
a student must learn how these languages manage the input and output
of data to and from the screen and keyboard.


3.1 Basic Screen and Keyboard I/O in C
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The C language provides several functions that give different levels
of input and output capability. These functions are, in most cases,
implemented as routines that call lower level input/output functions.
The input and output functions in C are built around the concept of a
set of standard data streams being connected from each executing
program to the basic input/output devices. These standard data streams
or files are opened by the operating system and are available to every
C and assembler program to use without having to open or close the
files. These standard files or streams are called:

::

     
     - stdin : connected to the keyboard
     - stdout : connected to the screen
     - stderr : connected to the screen


The following two data streams are also available on MS-DOS based
computers, but not on UNIX or other multi-user based operating
systems.

::

     
       - stdaux : connected to the first serial communications port
       - stdprn : connected to the first parallel printer port


The input/output functions fall into two categories, formatted display
and read functions, and non-formatted display and read functions. The
following are descriptions of the formatted display and read
functions.

::

    
     **
    int printf( const char *format [,argument, ...] );
    **


where **format** is composed of literal text, escape sequences used as
carriage control, and format specifiers for conversion of data in the
arguments to a display format. This function returns the number of
characters printed.
**printf()** returns the number of bytes output. In the event of
error, **printf** returns EOF. **Example:**

::

     
    main()
    {
     char name[30];
    
     printf("\nEnter your name:");
     gets(name);
     printf("\nHello %s",name);
    }


The **printf()** function has the capability to manage conversion
control.

::

    
    General form
    
        **%[-][width][flags]format**
    
    where:
    
     **%**      : marks the start of the conversion control string 
     **-**      : specifies that the data is to be printed left-justified 
     **width**  : the width of field or number of spaces to allot on the display
     **flags**  : precision of output to be displayed
     **format** : the format specifier desired



Listing 3-1
+++++++++++

::

    
    #include "stdio.h"
    int main()
    {
     printf("/%d/\n",336);
     printf("/%2d/\n",336);
     printf("/%10d/\n",336);
     printf("/%-10d/\n",336);
     return 0;
    }

results:



Fig 3-1:
````````


::

     
     /336/
     /336/
     / 336/
     /336 /




Listing 3-2
```````````


::

    
    #include "stdio.h"
    int main()
    {
     printf("/%f/\n",1234.56);
     printf("/%e/\n",1234.56);
     printf("/%4.f/\n",1234.56);
     printf("/%3.1f/\n",1234.56);
     printf("/%10.3f/\n",1234.56);
     printf("%10.3e/\n",1234.56);
     return 0;
    }

results:



Fig 3-2:
````````


::

     
     /1234.560059/
     /1.23456E+03/
     /1234.56/
     /1234.6/
     / 1234.560/
     / 1.234E+03/




Listing 3-3
```````````

::

    
    #include "stdio.h"
    #define BLURB "Outstanding Program!"
    
    int main()
    {
     printf("/%2s/\n",BLURB);
     printf("/%22s/\n",BLURB);
     printf("/%22.5s/\n",BLURB);
     printf("/%-22.5s/\n",BLURB);
     return 0;
    }
    
    results:
    
     /Outstanding Program!/
     / Outstanding Program!/
     /Outst/
     /Outst/



3.2 Formatted Input and Output
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
**int scanf( const char *format [,address, ...] );**
where **format** is a list of format specifiers indicating the format
and type of data to be read from the keyboard and stored in the
corresponding **address**. There must be the same number of format
specifiers and addresses as there are input fields.
**scanf** returns the number of input fields successfully scanned,
converted, and stored. The return value does not include scanned
fields that were not stored. If **scanf** attempts to read end-of-
file, the return value is EOF. If no fields were stored, the return
value is 0.


Listing 3-4
```````````


::

    
    #include "stdio.h"
    
    int main()
    {
    char last_name[30];
    int age, ret;
    
     printf("\nEnter Last_name and age");
     scanf("%s %d%c", last_name, &age, &ret);
     return 0;
    }


The **scanf()** function scans the data input through the keyboard and
by default delimits values by whitespace. Whitespace is defined as
being a TAB, a blank or the newline character ('\n'). Therefore, data
that is input with the intention of having embedded blanks as part of
the data value will be broken into several values and distributed
among the input variables specified in the **scanf()** statement. The
result will more than likely not be what was desired.
In the above example, notice that although the prompt asks for the
input of a name value and an age value, the **scanf()** function is
told to read values for three arguments. The argument **ret** is an
integer variable but **scanf()** is reading a **%c** or character
value from the keyboard. The **ret** variable will hold the newline
character input by the user pressing the RETURN or ENTER key on the
keyboard. If the newline character is not extracted from the keyboard
buffer, the newline will be picked up as the first argument of the
next input statement, which could be a **scanf()**, a **gets()** or a
**getchar()** function.
The format string is a character string that contains three types of
specifiers: whitespace characers, non-whitespace characters and
format-specifiers.
The format-specifiers have the following form:

::

    
        **%[*] [width] [h|l|L] type-character**


Each format begins with the percent character, **%**, after which come
the following, in this order: - An optional assignment-suppression
character, **[*]**. This states that the value being read will not be
assigned to an argument, but will be dropped. - An optional width
specifier, **[width]**. This designates the maximum number of
characters to be read that compose the value for the associated
argument. Encountering whitespace before the width is satisfied
terminates the input of this value and moves to the next. - An
optional argument-type modifier, **[h|l|L]**. This modifies the type-
character specifier to accept format for a type of : h = short int l =
long int, if the type-character specifiers an integer conversion l =
double, if the type-character specifiers a floating-point conversion L
= long double, which is valid only with floating- point conversions
**NOTE:** Simple data objects must be passed by reference in order for
**scanf()** to be able to store data in the correct memory location.
To pass by reference means to pass the memory address of a variable.
The **&** operator in front of a variable name signifies that the
address of the following variable is to obtained.
The following are format specifiers which apply only to **printf()**
and **scanf()**.


Table 3-1
`````````
Format Specifiers for printf and scanf Type Character Input Argument
Format of Output %d integer signed decimal int %i integer signed
decimal int %o integer unsigned octal int %u integer unsigned decimal
int %x integer unsigned hex int (a,b,c,d,e,f) %X integer unsigned hex
int (A,B,C,D,E,F) %f floating point signed value of form [-]dddd.dddd
%e floating point signed value of form [-]d.dddd or **e**[+/-]ddd %g
floating point signed value in either **e** or **f** form trailing
zeros and the decimal point are printed only if necessary. %E floating
point same as **e**, but with **E** for exponent %G floating point
same as **g**, but with **E** for exponent if **e** format %c
character single character %s string pointer prints characters until a
null-terminator is pressed or precision is reached %% none the **%**
character is printed %n pointer to **int** stores (in the location
pointed to by the input argument) a count of the characters written so
far %p pointer prints the input argument as a memory address
**NOTE:**Numerics with **scanf()** an **h** or **l** or **L** can be
used with each of the following in order to modify the format; **h** =
short; **l** and **L** = long.


3.3 Non-formatted Input and Output
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
**int puts( const char *s );**
**puts()** displays a string literal or a stored character string on
the screen. The function automatically carriage return and line feeds
at the end of the display. The string can contain escape sequences but
not format specifiers.
On successful completion, **puts()** returns a nonnegative value.
Otherwise, it returns a value of EOF.


Listing 3-5
```````````


::

    
    #include "stdio.h"
    int main()
    {
    char name[30];
    
     printf("\nEnter your name:");
     gets(name);
     printf("\nHello ");
     puts(name);
     return 0;
    }

**char *gets( char *s );**
**gets()** reads characters from the keyboard and stores them in a
passed character array. The reading of keyboard is terminated when the
'\n' (RETURN/ENTER) key is pressed.
On success, **gets()** returns the string argument **s**; it returns
NULL on end-of-file or error.


Listing 3-6
```````````


::

    
    #include "stdio.h"
    int main()
    {
    char name[30];
    
     printf("\nEnter your name:");
     gets(name);
     printf("\nHello %s",name);
     return 0;
    }

**int putchar( int c );**
**putchar()** writes a character to the stdout data stream.
On success, **putchar()** returns the character **c**. On error,
**putchar()** returns EOF.
**int putch( int c );**
**putch()** writes the character directly to the screen. This function
is available only on PC based compilers.
On success, **putch** returns the characer printed, **c**. On error,
it returns EOF.


Listing 3-7
```````````


::

    
    #include "stdio.h"
    int main()
    {
    int c;
    
     c = 'A';
     putchar(c);
     putch(c);
     return 0;
    }
    
    result:
    
     AA

**int getchar( void );** **int getch( void );** **int getche( void
);**
**getchar()** reads a single character the from the input data stream;
but does not return the character to the program until the '\n'
(RETURN/ENTER) key is pressed.
**getch()** reads, without echoing, a single character from the
keyboard and immediately returns that character to the program;
available only on PC compilers.
**getche()** reads, with echo, a single character from the keyboard
and immediately returns that character to the program; available only
on PC compilers.


Listing 3-8
```````````


::

    
    #include "stdio.h"
    int main()
    {
    int ch;
    
     printf("\nContinue(Y/N)?");
     ch = getchar();
     return 0;
    }
    
    The result:
    
     Continue(Y/N)?Y < RETURN >


**NOTE:** The '\n' (RETURN/ENTER) key must be pressed after the
response in order for the character to be stored in 'ch'. Also, the
character pressed is automatically displayed on the screen.


Listing 3-9
```````````


::

    
    #include "stdio.h"
    int main()
    {
    int ch;
    
     printf("\nContinue(Y/N)?");
     ch = getch();
     return 0;
    }
    
    The result:
    
     Continue(Y/N)? (Y pressed)


**NOTE:** Upon pressing the 'Y' or 'N' key the character is
immediately stored in 'ch', but the character pressed is not
automatically shown on the screen. This is available only with PC
based compilers.


Listing 3-10
````````````


::

    
    #include "stdio.h"
    int main()
    {
    int ch;
    
     printf("\nContinue(Y/N)?");
     ch = getche();
     return 0;
    }
    
    The result:
    
     Continue(Y/N)?N


**NOTE:** Upon pressing the 'Y' or 'N' key the character is
immediately stored in 'ch' and also is echoed on the screen. This is
available only with PC based compilers.


3.4 Predefined Classes in C++
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Like C, C++ has no built-in facilities for I/O. Instead, you must rely
on a library of functions, for performing I/O. In ANSI C, the I/O
functions are a part of the standard library, but C++ does not have
any standard library yet. Of course, you can call the ANSI C library
routines in C++, but for I/O, C++ release 2.0 and above provides an
alternative to printf and scanf. C++ comes with the iostream library,
which handles I/O through a class of objects.
The C++ iostream library is an object-oriented implementation of the
abstraction of a stream as a flow of bytes from source (producer) to a
sink (consumer). The iostream library includes input streams (istream
class), output streams (ostream class), and streams (iostream class)
that can handle both input and output operations. The istream class
provides the functionality of scanf and fscanf, and ostream includes
capabilities similar to those of printf and fprintf. Like the
predefined C streams stdin, stdout, and stderr, the iostream library
includes four predefined streams:

::

    
       **cin** is an input stream connected to the standard input. It is analogous to C's stdin.
    
       **cout** is an output stream connected to the standard output and is analogous to stdout in C.
     
       **cerr** is an output stream set up to provide unbuffered output to the standard error device. This is the same as C's stderr.
    
       **clog** is like cerr, but it is a fully buffered stream like cin and cout.


To use the iostream library, your C++ program must include the header
file "iostream.h". This file contains the definitions of the classes
that implement the stream objects and provides the buffering. The file
"iostream.h" is analogous to "stdio.h" in ANSI C.


Instead of defining member functions that perform I/O, the iostream
library provides an operator notation for input as well as output. It
uses C++'s ability to overload operators and defines << and >> as the
output and input operators, respectively.


When you see the << and >> operators in use, you will realize their
appropriateness. For example, consider the following program that
prints some variables to the cout stream, which is usually connected
to standard output:


Listing 3-11
````````````


::

    
    #include "iostream.h"
    
    int main()
    {
    int count = 2;
    double result = 5.4;
    char *id = "Trying out iostream: ";
    
     cout << id;
     cout << "count = " << count << '\n' ;
     cout << "result = " << result << endl;
     return 0;
    }


When you run this program, it prints the following:

::

    
     Trying out iostream: count = 2
     result = 5.4


You can make three observations from this example:

#. The ** << ** operator is a good choice to represent the output
operation, because it points in the direction of data movement that,
in this case, is toward the **cout** stream.
#. You can concatenate multiple ** << ** operators in a single line,
all reading the same stream.
#. You use the same syntax to print all the basic data types on a
   stream. The ** << ** operator automatically converts the internal
   representation of the variable into a textual representation. Contrast
   this with the need to use different format strings for printing
   different data types using **printf**.


Accepting input from the standard input is also equally easy. Here is
a small example that combines both input and output:


Listing 3-12
````````````


::

    
    #include "iostream.h"
    
    int main()
    {
    int count;
    float price;
    char *prompt = "Enter count (int) and unit price (float): ";
    
     // display the prompt string
     cout << prompt ;
     // read from standard input
     cin >> count >> price;
     // display total cost
     cout << count << " at " << price << " will cost: ";
     cout << (price * count) << endl;
     return 0;
    }


When you run the program and enter the input shown in boldface, the
program interacts as follows:

::

     
    Enter count (int) and unit price (float):  **5 2.5
    ** 5 at 2.5 will cost: 12.5


Ignoring, for the moment, items that you do not recognize, notice how
easy it is to read values into variables from the **cin** stream. You
simply send the data from **cin** to the variables using the **>>**
operator. Like the ** << ** operator, you can also concatenate
multiple ** >> ** operators. The **>>** operator automatically
converts the strings into the internal representations of the
variables according to their types. The simple syntax of input from
**cin** is in sharp contrast with ANSI C's rather complicated
**scanf** function, which serves the same purpose but needs proper
format strings and addresses of variable as arguments. Also, **cin**
has the same limitations on input of string type data as **scanf**.


3.5 Manipulators
~~~~~~~~~~~~~~~~

Among the new items in the last example, you may have noticed the
identifier **endl** in the last one line. This is a special function
known as a **manipulator**. Manipulators are functions which are
written in such a way that by placing a manipulator in the chain of **
<< ** operators, you can alter the state of the stream. The **endl**
manipulator sends a newline to the stream, forcing the cursor to the
beginning of a newline.
The following table summarizes some of the manipulators available in
the **iostream** package. The manipulators that take arguments are
declared in the file **iomanip.h** the rest are in **iostream.h**


Table 3-2
`````````
Available Manipulators in C++ Manipulator Sample Usage Effect dec cout
<< dec << intvar; or cin >> dec >> intvar; Converts integers into
decimal digits. Similar to the %d format in C. hex cout << hex <<
intvar; or cin >> hex >> intvar; Hexadecimal conversion as in ANSI C's
%x format. oct cout << oct << intvar; or cin >> oct >> intvar; Octal
conversion (%o in C). ws cin >> ws; Discards whitespace characters in
the input stream. endl cout << endl; Sends newline to ostream and
flushes buffer. ends cout << ends; Inserts null character into a
string. flush cout << flush; Flushes ostream's buffer.
resetiosflags(long) cout << resetiosflags (ios::dec); or cin >>
resetiosflags(ios::hex); Resets the format bits specified by the long
integer argument. setbase(int) cout << setbase(10); or cin >>
setbase(8); Sets base of conversion to integer argument must be 0, 8,
10, or 16). Zero sets base to the default. setfill(int) cout <<
setfill('.'); or cin >> setfill(' '); Sets the fill character used to
pad fields (width comes from **setw**). setiosflags(long) cout <<
setiosflags(ios::dec);or cin >> setiosflags(ios::hex); Sets the format
bits specified by the long integer argument. setprecision(int) cout <<
setprecision(6); or cin >> setprecision(15); Sets the precision of
floating-point conversions to the specified number of digits.
setw(int) cout << setw(6) << var; or cin >> setw(24) >> buf; Sets the
width of a field to the specified number of characters.


3.6 Formatted I/O
~~~~~~~~~~~~~~~~~

You can use the manipulators for some simple formatted I/O. Formatting
refers to the process of converting to and from the internal binary
representation of a variable and its character string representation.
For example, if a 16-bit integer variable holds the bit pattern 0000
0000 0110 0100, its character string representation in the decimal
number system is 100 and 64 in hexadecimal. If the base of conversion
is octal, the representation will be 144. You can display all three
forms on separate lines using the following output statements:


Listing 3-13
````````````


::

    
    #include "iostream.h"
    
    int main()
    {
    int i = 100;
    
     cout << dec << i << endl;
     cout << hex << i << endl;
     cout << oct << i << endl;
     return 0;
    }
    
    This produces the following output:
    
     100
     64
     144


What if you want to use a fixed field width of six characters to
display each value? You can do this by using the **setw** manipulators
as follows:


Listing 3-14
````````````


::

    
    #include "iostream.h"
    #include "iomanip.h"
    
    int main()
    {
    int i = 100;
    
     cout << setw(6) << dec << i << endl;
     cout << setw(6) << hex << i << endl;
     cout << setw(6) << oct << i << endl;
     return 0;
    }
    
    This produces the following output:
    
     100
     64
     144


Here each variable is displayed in a six-character field aligned at
the right and padded with blanks at the left. You can change both the
padding and the alignment. To change the padding character, you can
use the **setfill** manipulator. For example, just before the **cout**
statements just shown, insert the following line:


Listing 3-15
````````````


::

    
    #include "iostream.h"
    #include "iomanip.h"
    
    int main()
    {
    int i = 100;
    
     cout << setfill('.');
     cout << setw(6) << dec << i << endl;
     cout << setw(6) << hex << i << endl;
     cout << setw(6) << oct << i << endl;
     return 0;
    }
    
    This produces the following output:
    
     ...100
     ....64
     ...144


The default alignment of fixed-width output fields is to pad on the
left, resulting in right-justified output. The justification
information is stored in a bit pattern called the **format bits** in a
class named **ios**, which forms the basis of all stream classes. You
can set or reset specific bits by using the **setiosflags** and
**resetiosflags** manipulators, respectively. Following is a sample
use of these manipulators:


Listing 3-16
````````````


::

    
    #include "iostream.h"
    #include "iomanip.h"
    
    int main()
    {
    int i = 100;
    
     cout << setfill('.');
     // left-justified labels followed by
     // right-justified values
     cout << setiosflags(ios::left); // left justification
     cout << setw(20) << "Decimal";
     cout << resetiosflags(ios::left); // turn off left just
     cout << setw(6) << dec << i << endl;
    
     cout << setiosflags(ios::left);
     cout << setw(20) << "Hexadecimal";
     cout << resetiosflags(ios::left);
     cout << setw(6) << hex << i << endl;
    
     cout << setiosflags(ios::left);
     cout << setw(20) << "Octal";
     cout << resetiosflags(ios::left);
     cout << setw(6) << oct << i << endl;
     return 0;
    }
    
    This produces the following output:
    
     Decimal................100
     Hexadecimal.............64
     Octal..................144


This output amply illustrates how the **setiosflags** and
**resetiosflags** manipulators work and how the they should be used.
All you need to know are the names of the enumerated list of
formatting flags so that you can use them as arguments to the
**setiosflags** and **resetiosflags** manipulators.
To use any of the format flags in the following table, insert the
manipulator **setiosflags** with the name of the flag as the argument.
Use **resetiosflags** with the same argument to revert to the format
state before you use the **setiosflags** manipulator.


Table 3-3:
``````````
Additional Manipulators Name of Flag Meaning When Flag Is Set
ios::skipws Skips whitespace on input. ios::left Left justifies output
within the specified width of the field ios::right Right justifies
output. ios::scientific Uses scientific notation for floating point
numbers (such as -1.23e+02). ios::fixed Uses decimal notation for
floating-point numbers (such as -123.45). ios::dec Uses decimal
notation for integers. ios::hex Uses hexadecimal notation for
integers. ios::oct Uses octal notation for integers. ios::uppercase
Uses uppercase letters in output (such as F4 in hexadecimal,
1.23E+02). ios::showbase Indicates the base of the number system in
the output (a **0x** prefix for hexadecimal and a **0** prefix for
octal). ios::showpoint Includes a decimal point for floating-point
output (for example, -123.) . ios::showpos Shows a positive sign when
display positive values. ios::internal Padding after sign or base
indicator ios::unitbuf Flush all streams after insertion ios::stdio
Flush stdout, stderr after insertion
In addition to the above method of manipulating output and input,
another method can be used which involves accessing methods
(functions) of the **cout** and **cin** objects of the **iostream**
class. This manipulation or formatting can be done with the following
set of functions:


Table 3-4:
``````````
Functions Instead of Manipulators Function Name Purpose setf Set a
formatting flag unsetf Undo a flag set ty setf width Read/set the
field width fill read/set the padding character precision Read/set
digits of precision


Listing 3-17
````````````


::

    
    #include "iostream.h"
    
    int main()
    {
     cout.setf(ios::right|ios::showpoint|ios::fixed);
     cout.precision(2);
     cout.width(20);
     cout << 500000.0 << endl;
     return 0;
    }


The correspondence between **iostream.h** methods (functions) and
**iomanip.h** manipulators is as follows:


Table 3-5:
``````````
Correspondence between iostream and iomanip iomanip.h iostream.h
setiosflags(...) setf(...) resetiosflags(...) unsetf(...) setbase(10)
setf(ios::dec) setbase(8) setf(ios::oct) setbase(16) setf(ios::hex)
setfill('.') fill('.') setprecision(2) precision(2) setw(20) width(20)























































