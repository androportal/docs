


Chapter 1 Introduction
======================
In this chapter you will be introduced to the history of the C
language and where C falls in the hierarchy of higher-level languages.
Also, the operating system and compiler the student will be working
with will be discussed. In addition, the concept of structured
programming and problem solving will be introduced.



1.1 History of C
~~~~~~~~~~~~~~~~
Dennis Ritchie of Bell Labs created C in 1972. He and Ken Thompson
worked on designing the UNIX operating system. C came from Thompson's
B language. C was created as a tool for working systems programmers
that needed a more readable programming language than assembler but
still needed the low level access capabilities of an assembler.

C has rapidly become one of the most important and popular programming
languages. Most of the UNIX operating system, and MS-DOS are written
in C as are most compilers and other systems and applications
software.



1.2 Higher Level Languages
~~~~~~~~~~~~~~~~~~~~~~~~~~
C is often called a middle-level computer language. Middle-level does
not mean C is less powerful, harder to use, or less developed than
high level languages such as BASIC or Pascal; nor is C similar to a
low-level language such as assembly language. C combines elements of a
high-level language with the functionalism of an assembler.
: High Level: ADA, BASIC, COBOL, FORTRAN, Pascal, PL/I, Algol
: Middle Level: C, FORTH, C++
: Low Level: Assembler



A middle level language gives programmers a minimal set of control and
data-manipulation statements that they can use to define high-level
constructs. A high-level language is designed to try to give
programmers everything they could possibly want already built into the
language. A low-level language forces programmers to define all
program functions directly because nothing is built in. Middle-level
languages are sometimes thought of as building block languages,
because the programmer first creates the routines to perform all the
program's necessary functions and then puts them together. C and C++
allows a programmer to define routines to perform high-level commands.
These routines are called functions and are very important to C and
C++. You can tailor a library of C and C++ functions to perform tasks
that are carried out by your program.

C and C++ manipulates the bits, bytes and addresses with which the
computer functions. Unlike BASIC which operates on strings of
characters, C and C++ operates on characters. In BASIC there are
built-in read and write statements. In C and C++ these procedures are
performed by functions that are not part of the C and C++ language
itself. These input-output functions are written in C and C++ to
perform these operations.

C and C++ has very few statements to remember and only 60 keywords as
opposed to 159 in BASIC. This means that a C and C++ compiler can be
written quite easily. Since C and C++ operates on the same data types
as the computer, the code output by C and C++ is efficient and fast. C
and C++ can be used in place of assembler for most tasks.

C and C++ were first used for systems programming. Systems programming
refers to a class of programs that either are part of or work closely
with the operating system of the computer.

C and C++ is used for systems programming when:

#. The program must run quickly; C and C++ programs run almost as fast
   as ones in assembler.
#. C and C++ is a programmers language, it lacks restrictions and
   easily manipulates bits, bytes, and addresses.
#. A programmer needs direct control of I/O and memory management
   functions that C and C++ gives.




1.3 Operating Systems
~~~~~~~~~~~~~~~~~~~~~
The C and C++ language is available on every operating system in use
today. The two most widely popular operating systems in use have the
majority of their code written in the C language, UNIX and MS-DOS or
PC-DOS.

This class is conducted on a mini-computer using the UNIX operating
system. The UNIX operating system is a multi-user, multi-tasking
operating system. The term multi-user means that multiple people can
access the system at the same time. The term multi-tasking means that
each user can have the system running more than one task or job or
program at the same time. Most modern day operating systems, those
developed in the 1970's and later are patterned after the UNIX
operating system.

The student in this class needs to know how to logon to the UNIX
system, use a text editor, use system utility programs, compile C and
C++ programs, access the host system over a network for terminal
emulation and file transfer. See Appendix A for details on how to use
a UNIX system.



1.4 Structured Programming and Problem Solving
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
C is a structured language as are ADA and PASCAL. BASIC, COBOL, and
FORTRAN are non-structured languages. The most distinguishing feature
of a structured language is that it uses blocks. A block is a set of
statements that are logically connected.

A structured language supports the concept of subroutines with local
variables. A local variable is simply a variable that is known only to
the subroutine or block in which it is declared. A structured language
also supports several loop constructs, such as the **while**, **do-
while**, and **for**. A structured language allows separately compiled
subroutines or blocks to be used without being in the same program
source file. This means that a library of useful, tested blocks or
subroutines or functions can be accessed by any program written. A
structured language is usually free form.

People learn programming languages so they can use the computer as a
problem-solving tool. At least four steps can be identified in the
computer-aided problem-solving process:

#. Problem analysis and specification.
#. Algorithm development. >LI>Program coding.
#. Program execution and testing.




1.4.1 Problem Analysis and Specification
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Most problems that are to be solved with a computer usually break down
to an input component, a process component and an output component.
Because the initial description of a problem may be somewhat vague and
imprecise, the first step in the problem- solving process is to review
the problem carefully in order to determine its **input** - what
information is given and which items are important in solving the
problem - and its **output** - what information must be produced to
determine that the problem was solved. The **process** identifies what
actions must be performed on the input inorder to produce the output.
Input, process and output are the major parts of the problem's
**specification**, and for a problem that appears in a programming
text, they are usually not too difficult to identify. In a real-world
problem encountered by a professional programmer, however, the
specification of the problem often includes other items and
considerable effort may be required to formulate it completely.



1.4.2 Algorithm Development
~~~~~~~~~~~~~~~~~~~~~~~~~~~
Once a problem has been specified, a procedure or process to produce
the required output from the given input must be designed. Since the
computer is a machine possessing no inherent problem-solving
capabilities, this procedure must be formulated as a detailed sequence
of simple steps. Such a procedure is called an **algorithm**.

The steps that comprise an algorithm must be organized in a logical,
clear manner so that the program that implements this algorithm is
similarly well structured. **Algorithms** and **programs** are
designed using three basic methods of control:
: Sequential:: Steps are performed in a strictly sequential manner,
  each step being executed exactly once.
: Selection:: One of several alternative actions is selected and
  executed.
: Repetition:: One or more steps is performed repeatedly.

These three structures appear to be very simple, but in fact they are
sufficiently powerful that any algorithm can be constructed using
them.

Programs to implement algorithms must be written in a language that
the computer can understand. It is natural, therefore, to describe
algorighms in a language that resembles, the language used to write
computer programs, or as it is more commonly called, pseudocode.

Unlike high-level programming languages such as Pascal or C, there is
not a set of rules that defines precisely what is and what is not
pseudocode. It varies from one programmer to another. Pseudocode is a
mixture of natural language, such as English, and symbols, terms, and
other features commonly used in one or more high-level languages. The
following features are common to most pseudocodes:

#. The usual computer symbols are used for arithmetic operations:
   **+** for addition, **-** for subtraction, ***** for multiplication,
   and **/** for division.
#. Symbolic names (identifiers) are used to represent the quantities
   being processed by the algorithm.
#. Some provision is made for including comments. This is usually done
   by enclosing each comment between a pair of special symbols such as
   **/*** and ***/**.
#. Certain key words that are common in high-level languages may be
   used: for example, **read** or **enter** to indicate an input
   operation; **display**, **print**, or **write** for output operations.
#. Indentation is used to set off certain key blocks of instructions.

The structure of an algorithm can be displayed in a structure diagram
or flowchart that shows the various tasks that must be performed and
their relation to one another. These diagrams are especially useful in
describing algorithms for more complex problems.



1.4.3 Program Coding
~~~~~~~~~~~~~~~~~~~~
The third step in using the computer to solve a problem is to express
the algorithm in a programming language. In the second step, the
algorithm may be described in English or pseudocode, but the program
that implements that algorithm must be written in the vocabulary of a
programming language and must conform to the syntax of that language.
The major portion of this text is concerned with the vocabulary and
syntax of the programming languages C and C++.

In any programming language, names are used to identify various
quantities. These names are called **variables**. In C and C++
variable names must begin with a letter or underscore character, which
may be followed by any number of letters, digits and underscores up to
a maximum length of thirty characters. This allows us to choose names
that suggest what the variable represents.

In the pseudocode description of an algorithm, words such as "enter"
and "read" are used for input operations and "display", "print", and
"write" are used for output operations. One C or C++ statement that
may be used for input is **gets**, and one that may be used for output
is **printf**. These two statements are not really part of the C and
C++ language definition, but are functions that exist in external
libraries provided by the compiler manufacturer. The C and C++
languages actually have no syntax for input and output statements, but
through out the years people developing C compilers and now C++
compilers have reached agreement on certain external functions that
are to be provided to support input and output along with other
functions needed to develop meaningful programs.



1.4.4 Program Execution and Testing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The fourth step in using the computer to solve a problem is to execute
and test the program. The procedure for entering a program into the
computer varies from one machine to another. Additional details about
input of program statements is provided by the instructor. Usually, a
text editor is used to input statements. The program source file must
be compiled to produce an object module, sometimes called a
relocatable binary module(RBM). The RBM is then given to a linkage
editor utility which binds the various RBMs together to make a load
module. The load module can then be executed under control of the host
operating system.

If the load module fails to produce the desired results, there could
be some type of logic fault in the algorithm, a poor implementation of
the algorithm has been done, or simply a typing mistake has caused the
meaning of some statement or statements to change. The program source
file can be modified, compiled, linked and executed again for another
test run. This process continues until the load module delivers the
desired results.



1.4.5 Software Engineering
~~~~~~~~~~~~~~~~~~~~~~~~~~
Programming and problem solving is an art in that it requires a good
deal of imagination, ingenuity, and creativity. But it is also a
science in that certain techniques and methodologies are commonly
used. The term **software engineering** has come to be applied to the
study and use of these techniques.

The **life cycle** of software, that is programs, consists of five
basic phases:

#. Problem analysis and specification.
#. Algorithm development.
#. Program coding.
#. Program execution and testing.
#. Program maintenance.

This book will deal with algorithm development and program coding. The
initial step in the software life cycle, problem analysis and
specification, will be left to another class and another book.


