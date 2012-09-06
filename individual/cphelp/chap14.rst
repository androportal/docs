


Chapter 14 The Preprocessor
===========================
This module explores the use of the preprocessor to help achieve
portability across hardware platforms, perform inclusion of source
files and develop macros to aide in program readability and debugging.


14.1 The Preprocessor
~~~~~~~~~~~~~~~~~~~~~

The C preprocessor can conceptually be thought of as a program that
processes the source text of a C or C++ program before the compiler.
It can be an independent program or its functionality may be embedded
in the compiler. It has three major functions:

#. macro replacement;
#. conditional inclusion;
#. file inclusion.


Macro replacement is the replacement of one string by another,
conditional inclusion is the selective inclusion and exclusion of
portions of source text on the basis of a computed condition, and file
inclusion is the insertion of the text of a file into the current
file.
Actions of the preprocessor are controlled by special directives
placed in the source file. A preprocessor directive begins with the
character **#** on a new line, and is terminated by the newline
character unless continued on the next line by placing a backslash at
the end of the line. Whitespaces may precede or follow the directive-
introducing character **#**.


14.2 Macro Replacement
~~~~~~~~~~~~~~~~~~~~~~

The general form for a simple macro definition is

::

    
        #define   macro-name     value


and it associates with the **macro-name** whatever **value** appears
from the first blank after the **macro-name** to the end of the line.
The value constitutes the body of the macro. Previously defined macros
can be used in the definition of a macro. Notice that the **value** of
the macro does not end with a semicolon. The preprocessor replaces
every occurrence of a simple macro in the program text by a copy of
the body of the macro, except that the macro names are not recognized
within comments or string constants. Because the macros are used
within expressions in the body of the program, it is not appropriate
to end a macro with a semicolon. Macros that represent single numeric,
string or character values can also be referred to as defined
constants. Some examples of simple macro definitions are

::

    
        /*   mass of an electron at rest in grams */
        #define   ELECTRON       9.107e-28
        /*   mass of a proton at rest  in grams */
        #define   PROTON         1837 * ELECTRON
        /*   number of bits in an integer */
        #define   BITSININT      32


The **#define** directive can also be used for defining parameterized
macros. The general form for defining a parameterized macro is

::

    
        #define macro-name(param1, param2, ...)      body-of-macro


Parameterized macros are primarily used to define functions that
expand into in-line code. Some examples of parameterized macro
definitions are

::

    
        #define   ABS(N)    ( (N) >= 0 ? (N) : -(N) )
        #define   READ(I)   scanf( "%d",  )
        #define   CONVERT(I)     \
                  printf("decimal %d = octal %o, hex %x\n",I, I, I )

A macro can be defined to have zero parameters as in

::

    
        #define   getchar()      getc(stdin)


which is useful for simulating functions that take no arguments.
The preprocessor performs two levels of replacement on parameterized
macros: first the formal parameters in the body of the macro are
replaced by the actual arguments, and then the resulting macro body is
substituted for the macro call. Thus, the preprocessor will replace
the following statements

::

    
        x = ABS(x);
        READ(n);
        CONVERT(n);
        c = getchar();
    by
    
        x = ( (x) >= 0 ? (x) : -(x) );
        scanf( "%d",  );
        printf( "decimal %d = octal %o, hex %x\n",n,n,n);
        c = getc(stdin);


Arguments in a macro call can be any sequence of tokens, including
commas, provided that the sequence is bracketed within a pair of
parentheses as in

::

    
        #define DEGUG(FORMAT,ARGS)    printf(FORMAT, ARGS)
    
        DEBUG("%s = %f\n", ("x",0) );
    
    which is replaced by 
    
        printf("%s = %f\n", "x", 0 );


One danger with macro development is that at the time of macro
development it is unknown as to what types of expressions the macro
will be used. Liberal use of parenthesis is encouraged when developing
a macro. One example of the danger associated with macros is the
following:


Listing 14-1
~~~~~~~~~~~~

::

    
    #include <stdio.h>
    
    #define SQR(x)     x * x     /* square a number */
    
    int main()
    {
    int result;
    int a=5, b=6;
    
        result = SQR( 4 );  /* everything is OK */
        result = SQR( a+b );     /* not what was desired */
    
    }


In the above example, the passing of **a+b** to the macro results in
the expanded code:

::

    
        result = a+b * a+b;


which is evaluated as **a + (b * a) + b** which will not give the
answer that was expected. What was expected was **121** and what was
received as **41**. The problem of course is the evaluation of the
operators involving with the expanded macro. The multiplication
operator is evaluated before the addition operator. By adding
parenthesis the following is produced:

::

    
        #define SQR(x)      (x * x)


which when passed **a+b**, expands to **(a + (b*a) + b)** which not
give what is desired. Therefore, more parenthesis are required:

::

    
        #define SQR(x)      ( (x) * (x) )

This will finally give the desired results to the macro expansion.


14.3 The # Operator
~~~~~~~~~~~~~~~~~~~

If a macro parameter appears inside a string in the body of a macro,
the parameter is not replaced by the corresponding argument at the
time of macro expansion. Thus, if you define a macro as

::

    
        #define PRINT(V,F)  printf("V = %F", V)
    
    and call it as 
    
        PRINT(i,d);
    
    the call will expand into
    
        printf("V = %F", i);


ANSI C introduced a new preprocessing operator **#**, called the
stringizing operator, which in conjunction with string concatenation
provides a facility to overcome this difficulty. If a parameter
follows the character **#** in the definition of a parameterized
macro, both **#** and the parameter are replaced during macro
expansion by the corresponding actual argument enclosed with double
quotes. For example, given the macro definition

::

    
        #define PRINT(V,F)  printf(#V " = " #F, V )
    
    the macro call
    
        PRINT(i,%d);
    
    expands into 
    
        printf("i" " = " "%d", i );
    
    which after string concatenations becomes 
    
        printf("i = %d", i );


A **\** character is automatically inserted before each **"** or **\**
character that appears inside, or surrounding, a character constant or
string literal in the argument. For example, given the macro
definition

::

    
        #define PRINT(s)    printf("%s\n", #s)
    
    the macro call
    
        PRINT(use \ ("backslash") not /);
    
    expands into
    
        printf("%s\n", "use \\ (\"backslash\") not /");



14.4 The ## Operator
~~~~~~~~~~~~~~~~~~~~

ANSI C introduced another preprocessing operator **##**, called the
token pasting operator, to build a new token by macro replacement. The
**##** operator is recognized within both forms of macro definitions,
and concatenates the two preprocessing tokens surrounding it into one
composite token during a macro expansion. For example, given the macro
definition

::

    
        #define processor(n)     CPU: ## n
    
    the macro call
    
        processor(586)
    
    expands into
    
        CPU:586



14.5 Conditional Inclusion
~~~~~~~~~~~~~~~~~~~~~~~~~~

Conditional inclusion allows selective inclusion of lines of source
text on the basis of a computed condition. Conditional inclusion is
performed using the preprocessor directives:

::

    
        #if  #ifdef    #ifndef   #elif     #else     #endif


A directive of the form

::

    
        #if constant-expression


checks whether the constant-expression evaluates to nonzero (true) or
0 (false). A directive of the form

::

    
        #ifdef    identifier


is equivalent in meaning to

::

    
        #if 1


when identifier has been defined, and to

::

    
        #if 0


when identifier has not been defined, or has been undefined with a
**#undef** directive. The **#ifndef** directive has just the opposite
sense, and a directive of the form

::

    
        #ifndef   identifier


is equivalent in meaning to

::

    
        #if  0


when identifer has been defined, and to

::

    
        #if  1


when identifier has not been defined, or has been undefined with a
**#undef** directive. An identifier can be defined by writing

::

    
        #define   identifier


or by using the **-D** switch on the command line of the compiler. For
instance, to define that a program is being compiled in a PC
environment either of the following would work.

::

    
        #define   PC
    
    or 
    
        cc -DPC program.c 


Both establish the identifier **PC** as having been defined. Notice
that **#ifdef** and **#ifndef** do not look at any value associated
with the identifier, they merely look to see if the identifier has
been defined.
Conditional inclusion is frequently used in developing programs that
run under diffferent environments. For example, BITS_IN_INT may be
defined as

::

    
        #if HOST == PC
             #define   BITS_IN_INT    16
        #elif HOST == DECSYSTEM10
             #define   BITS_IN_INT    36
        #else
             #define   BITS_IN_INT    32
        #endif


The preprocessor can then select an appropriate value for BITS_IN_INT,
depending upon the defined value of HOST.
Conditional inclusion is also used to control debugging. You may write
in your program

::

    
        #ifndef   DEBUG
             if( !(i % FREQUENCY) ) printf("Iteration: %d\n",i);
        #endif


and then turn debugging on and off simply by defining and undefining
DEBUG.
Instead of embedding **#ifdef DEBUG** directives all over the code
when you require many debugging statements in a program, you may
define a PRINT macro as

::

    
        #ifndef   DEBUG
             #define   PRINT(arg)
        #else
             #define   PRINT(arg)     printf arg
        #endif

and then write

::

    
        PRINT( ("iteration: %d\n",i) );
        PRINT( ("x = %f, y = %f\n", x, y) );

which expands into

::

    
        printf ("iteration: %d\n", i);
        printf ("x = %f, y = %f\n", x, y );


or null statements depending on whether DEBUG has been defined or not.
Note the use of two pairs of parentheses when calling PRINT.


14.6 Predefined Macros
~~~~~~~~~~~~~~~~~~~~~~

The traditional K & R C standard specified certain predefined macros
be supported by conforming compilers. These macros are used mostly in
debugging. These macros are:

::

    
        __LINE__            
        __FILE__
        __DATE__
        __TIME__
        __STDC__


All of these macro names are formed by having two underscore
characteres both precede and follow the macro name. The macros
**__LINE__** and **__FILE__** are replaced by the current line number
and file name when they are expanded. The macros **__DATE__** and
**__TIME__** will expand into the date and time of when the
compilation took place. The **__DATE__** and **__TIME__** macros can
be used to initialize program variables. The **__STDC__** macro will
be a **1** or undefined depending upon if the current compiler
conforms to the ANSI C standard or not.


14.7 File Inclusion
~~~~~~~~~~~~~~~~~~~

The **#include** directive allows for the inclusion of a source file
into the current source file that is being processed. The form of the
**#include** directive is:

::

    
        #include "filename"      or   #include 


where the **filename** is the name of a file, possibily with a
pathname associated, that contains source statements that are to be
placed at the current location in the file being processed. The
included file can contain other include statements as well as other
preprocessor directives and C or C++ statements.
Notice the use of double quotes ( **" "**) or angle brackets ( **<
>**) to surround the name of the file. Traditionaly, the use of double
quotes to surround the name of the file to be included has indicated
that the file is be looked for in the current or local directory or
the pathname indicated with the filename. If not found there, then the
subdirectory where the standard C header files reside is to be
searched. The use of angle brackets to surround the name of the file
indicates that the file is to be looked for in the standard C header
file subdirectory, no search of the local directory is made.
All the following are valid representations of filenames to be
included:

::

    
    #include "local.h"      /* searches for this file in current */
                            /* directory; if not found then look */
                            /* in the subdirectory associated    */
                            /* with the standard C header files */
                                          
    #include "/usr/local/include/stuff.h" /* searches for the file */ 
                                          /* in the directory      */
                                          /* indicated; if not     */
                                          /* found then look       */
                                          /* in the subdirectory   */
                                          /* associated with the   */
                                          /* standard C header     */  
                                          /* files */
    
    #include       /* searches for this file in the       */
                            /* subdirectory associated with the    */
                            /* standard C header files             */
    
    #include type.h>   * searches for this file in the sys   */
                            /* subdirectory under the subdirectory */
                            /* associated with the standard C      */
                            /* header files                        */
    
    #include "func.c"       /* search for this file in the local   */
                            /* subdirectory; if not found then look*/
                            /* in the subdirectory associated      */
                            /* with the standard C header files;   */
                            /* this file is a C source file        */


Most files that are included are header files which contain macro
definitions, defined constants, type definitions ( **struct** or
**union** templates), enumerated types and function prototypes. Header
files should not contain global variable declarations. The use of
global variables should be avoided if at all possible because of the
difficulty in controlling the integrity of data values placed in a
global variable. Global variables must not be declared in header files
because most applications consist of several source files. Each source
file is a module of the application and may consist of one or more C
or C++ functions needed to perform a specific task. Each source file
usually includes not only the standard C header files needed for that
module but also will include a header file that is application
specific. This application specific header file will have the macro
definitions, defined constants, type defiitions, enumerated types and
function prototypes for the current application. If each source file
associated with an application includes this local header file and if
there is a global variable declaration in that header file the
application will not be linked by the linkage editor. The linker will
complain that there is a "duplicate redefinition of ....". Since the
linker is trying to bind several object files together and each object
file has the same global declaration, the linker does not know which
global declaration to use.
If it is absolutely necessary to have global declarations in a header
file, then protect the header file from multiple inclusion by
surrounding the contents of the header file as follows:


Fig. 14-1
`````````

::

    
    /***********************************************************
    *   Header File    :    sample.h
    *   Application    :    sample
    ************************************************************
    
    #ifndef _SAMPLE_H
    #define _SAMPLE_H
    
    #include <stdio.h>
    .
    .
    .
    #endif


The above code uses the preprocessor to detect if the header file has
been previously included. On the first inclusion of the header file,
the identifier **_SAMPLE_H** was defined and the statements composing
the header file where processed. On subsequent inclusions of the
header file none of the statements within this header file are not
seen because of the conditional inclusion.


14.8 Other Directives
~~~~~~~~~~~~~~~~~~~~~

The following preprocessor directives were added by the ANSI C
standard.

::

    
        #line
        #error
        #pragma

**#line** provides a mechanism for altering the settings of
**__LINE__** and **__FILE__**. This directive has the form of:

::

    
        #line lineno "filename"


where **lineno** is a new value for **__LINE__** and **"filename"** is
a new value for **__FILE__**. The **"filename"** parameter is
optional, but if present, then **lineno** must be present. **#error**
will immediately terminate the compilation. This would most likely be
used in conjunction with a **#if** directive. **#pragma** is an
implementation dependent directive which allows a compiler vendor to
add extensions to the standard preprocessor.
