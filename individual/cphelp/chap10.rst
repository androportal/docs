


Chapter 10 Classes
==================
This module will cover how to create classes in C++ and thus create
objects. Defining an object involves describing a new data type
together with the functions that can manipulate that type.


10.1 Naming and Coding Conventions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In order to introduce consistency in the naming of classes and the
components of those classes, such as data items and functions, a
naming and coding convention is needed. Both Microsoft and Borland
have put forth recommendations for naming conventions of classes and
the associated components of those classes. Some common
characteristics exist between both recommendataions. Both companies
suggest that all variable and class names use a mixed case convention
in which words are capitalized and concatenated. Names of classes
begin with a capital letter, while names of instances begin with a
lower-case letter. Borland supplied class names start with a capital
**T**, for type, where Microsoft supplied class names start with a
capital **C**, for class. Both suggest that the next letter also be
capitalized.


Fig. 10-1
`````````

::

    
    Borland 			Microsoft
    ---------------------	-------------------------
    class TMainWindow       class CMainWindow 
    {                       {
       ...                     ...
    };                      };

Data members and member functions of a class also are to use mixed
case, and start with a lower-case letter. Borland makes no suggestions
about data member naming. Microsoft suggests that data members start
with a **m_** pair of characters. The **m_** indicates that the data
items are member variables. Other sources suggest that private and
protected data member names start with an underscore character. Using
an underscore for the private data member allows the access function
to have the same name as the data member, but without the underscore.
The use of the underscore has been a common convention used by C
programmers to indicate private symbols. The functions with the class
should represent whether they belong to a group of accessor functions
or mutator functions. Accessor functions only return the value of data
members within the class. Mutator functions allow for the setting or
changing of data members within the class. Accessor functions should
start with the word get and mutator functions should start with the
word set. Both types of functions should be followed by the name of
the member variable that is being accessed.


Fig. 10-2
`````````

::

    
    Borland                           Microsoft
    ---------------------	          -------------------------
    class TMainWindow                 class CMainWindow 
    {                                 {
    private:                          private:
       int _data;		             int m_data;
    public:			          public:
    // Accessor                       // Accessor
       int getData();                    int getData();
    // Mutator                        // Mutator
       void setData( const int x );      void setData( const  int x );
    };                                };

Occasionally, it is only possible or reasonable for one instance of a
particular class to exist in a program. When this situation occurs,
the name of that instance begins with the word the.

::

    
    	Application *theApplication;

All classes should use encapsulation as much as possible. Therefore,
classes contain no public data members. When other classes need access
to a data member, the class provides an inline accessor function. So,
a sample class that contains some data needed outside the class can be
written as:


Fig. 10-3
`````````

::

    
    class CSampleClass
    {
    private:
       int  _someData;     // an internally used int member
       char *_aString;     // an internally used string member
    
    public:
       SampleClass();      // constructor
       //   Accessor functions
       int getSomeData() { return (_someData); }
       const char *const getAString() { return (_aString); }
    };

If a class needs to allow an outside entity to set the value of a data
member, the class can provide a function that assigns a new value to
the **protected** data. If we wish to extend the previous example to
allow the **_someData** member to be changed, we can provide a
**setSomeData()** member function like this:


Fig. 10-4
`````````

::

    
    class CSampleClass
    {
    private:
       int  _someData;     // an internally used int member
       char *_aString;     // an internally used string member
    
    public:
       SampleClass();      // constructor
       //   Accessor functions
       int getSomeData() { return (_someData); }
       const char *const getAString() { return (_aString); }
       //   Mutator function sets private data
       void setSomeData( int newValue ) 
       { _someData = newValue; }
    };

It is usually most convenient to maintain each C++ class separately,
in two files. The class is declared in a header file, while the member
functions are implemented in a separate source file. The name of the
header file is usually the name of the class, with a **.h** suffix
(i.e. Stack.h), while the name of the source file is the name of the
class with a **.cpp** suffix for PC compilers and **.cxx** or **.C**
or **.cc** for UNIX compilers. (i.e. stack.cpp or Stack.cxx). The GNU
C++ compiler as of version 2.7.0 allows the use of **.cpp** as a
source file extension. Some programmers also use a **.H** or **.hpp**
suffix for the header file. Some compilers, GNU C++, may still require
the use of a **#pragma** statement in both the header file and the C++
source file. In the header file the statement has the form

::

    
    	#pragma interface

and in the C++ source file the statement is

::

    
    	#pragma implementation

Both statements must appear as the first statement in the their
respective source files. The **#pragma** interface statement is used
to indicate that the file holds the declaration of the interface to
the class. The **#pragma** implementation indicates that the file
holds the definition or implementation of the interface. These
statements are required in older versions of the GNU C++ compiler and
are recognized in the Borland C++ compiler, but have no effect. To
prevent problems with multiple declarations, which can easily occur
when header files are nested, all class header files have the form:


Fig. 10-5
`````````

::

    
    #ifndef   CLASSNAME_H
    #define   CLASSNAME_H
    
    //   class declaration goes here
    class SampleClass
    {
        ...
    };
    #endif

In each file, **CLASSNAME** is replaced by the name of the class. In
defining C++ classes it is usually the practice to include all header
files needed by the class in the interface or **.h** file of that
class. For example, a header file for a class named **CStack** would
look like this:


Fig. 10-6
`````````

::

    
    // *********************************************************
    //   CStack.h:  Header file for the Stack class
    // *********************************************************
    #pragma interface
    
    #ifndef   CSTACK_H
    #define   CSTACK_H
    
    #include <iostream.h>
    #include <stdlib.h>
    #include <string.h>
    
    class CStack
    {
    public:
        CStack();  // constructor
        //   miscellaneous members
    };
    #endif

The file **CStack.cpp** contains the implementation of all **CStack**
member functions, as follows:


Fig. 10-7
`````````

::

    
    // *********************************************************
    //   CStack.cpp:     Implementation file for CStack class
    // *********************************************************
    #pragma implementation
    
    #include "CStack.h"
    
    CStack::CStack()
    {
        // various initialization statements
    }

Notice that **CStack.cpp** includes **CStack.h**, which contains the
class declaration. Any other class that wishes to use an instance of
**CStack** needs to include the file **CStack.h** as well. Because
class headers may be included in many different source files in a
program, it is important that the header contain only the class member
declarations for both data members and function prototypes (except for
**inline** functions) and does not define global variables or
functions. The use of **#define** defined constants global to the
class declaration is acceptable, although, the use of class local
**const** identifiers is recommended. The terminology used by C++
differs slightly from that used by many other object-oriented
languages. C++ defines member functions instead of methods; calls a
member function for an object instead of sending a message; creates
base classes and derived classes instead of subclasses and
superclasses, and so on. This book will primarily use the C++
terminology, but occasionally slips into the more traditional object-
oriented mode when these terms make more sense in the context of a
discussion.


10.2 Discovering Classes
~~~~~~~~~~~~~~~~~~~~~~~~
One of the first decisions that must be made in creating an object-
oriented application is the selection of classes. Classes in object-
oriented programming can have several different types of
responsibilities, and thus not surprisingly there are different
categories of classes. The following categories, however, cover the
majority of cases.
:Data Managers, Data, or State Classes. These are classes whose
  principle responsibility is to maintain data or state information of
  one sort or another. Data manager classes are often recognizable as
  the nouns in a problem description and are usually the fundamental
  building blocks of a design. :Data Sinks, or Data Sources. These are
  classes that generate data, such as a random number generator, or
  accept data and then process them further, such as a class performing
  output to a disk file. Unlike a data manager, a data sink or data
  source does not hold the data for a period of time, but generates it
  on demand (for a data source), or processes it when called upon (for a
  data sink). :View or Observer classes. An essential portion of most
  applications is the display of information on an output device, such
  as a terminal screen. Because the code for performing such activity is
  often complex, frequently modified, and largely independent of the
  actual data being displayed, it is good programming practice to
  isolate display behavior in separate classes from those classes that
  maintain the data being displayed. Often the base data is called the
  model class while the display class is called the view. The model and
  view classes are coordinated through a control class, thus the term
  Model/View/Controller (MVC). The MVC types of classes are so common
  and important that this association of classes is described in a
  design pattern. Because we separate the model, also known as the
  document, from the view, the design of the model is usually greatly
  simplified. Ideally, the model should neither require nor contain any
  information about the view. This facilitates code reuse, since a model
  can then be used in several different applications. It is not uncommon
  for a single model to have more than one view. For example, financial
  information could be displayed as bar charts, pie charts, or tables of
  figures, all without changing the underlying model. Occasionally
  interaction between a model and a view is unavoidable. If the figures
  in the financial table just described are permitted to change
  dynamically, for example, the programmer might wish the view to be
  instantly updated. Thus it is necessary for the model to alert the
  view that the model has been changed and that the corresponding view
  should be updated. Some programmers refer to such a model as a
  subject, in order to distinguish it from a model with no knowledge of
  use. :Facilitater or Helper classes. These are classes that maintain
  little or no state information themselves but assist in the execution
  of complex tasks. For example, in displaying a card image on the
  screen, the programmer could use the services of a facilitater class
  that handles the drawing of lines and text on the display device.
  Another facilitater class would be one that helps maintain a linked
  list. These categories are intended to be representative of the most
  common uses of classes, and hence useful as a guide in the design
  phase of object-oriented programming, but the list is certainly not
  complete. Most object-oriented applications will include examples of
  each of these categories, as well as some that do not seem to fit into
  any group. If a class appears to span two or more of these categories,
  it can often be broken up into two or more classes.


:


:
:
:


10.3 Classes as Objects
~~~~~~~~~~~~~~~~~~~~~~~
Defining an object involves describing a new data type together with
the functions that can manipulate that type. A previous chapter has
shown how to declare a data type using a **struct**. The **struct** in
C++ allows for the data hiding of the implementation of a String and
for the presentation of a public interface to be used by the
programmer. But structures are limited in functionality in C++. To
gain complete access to object-oriented capabilities, an object must
be able to exist as part of a hierarchy of objects, where objects have
inherited behavior and data members from base objects. The structure
mechanism does not allow for inheritance or the inclusion into a
hierarchy. The **class** in C++ provides all the functionality of the
struct but also allows for the object being described to exist within
a hierarchy of objects and to participate in polymorphic behavior.
Behavior that structures cannot accomplish.


Listing 10-1
````````````

::

    
    #if (__BORLANDC__ || __GNUC__)
    #pragma interface
    #endif
    
    #ifndef _CSTRING_H      // Make sure file is included only once
    #define _CSTRING_H
    
    #include <iostream.h>
    #include <stddef.h>    // for size_t type
    #include <string.h>    // for ANSI C string library
    #include <sys/types.h>
    #ifndef bool
         enum bool
         { false, true };
    #endif
    
    #define MAXLEN     256
    #define DEFAULT_STRING_SIZE_INCREM     10
    
    class CString
    {
    public:
    //  Constructor
    
        CString();
        CString( const size_t );
        CString( const char *);
        CString( const CString& );
        CString( const char *, const size_t );
        CString( const CString&, const size_t );
    
    //  Destructor
    
        ~CString() { delete s; }
    
    protected:
    //  Internal data members of this class
    
        char *_s;           //   pointer to allocated space
        size_t _length;     //   current length of string
        size_t _maxlen;     //   numbers of bytes allocated
        size_t _sizeIncr;   //   increment on resize
    
    };
    #endif

The **public** section lists the members that are accessible to any
function in the program. Only member functions of the class can access
the **private** and **protected** section. When inheritance is
discussed it will be shown why the protected section is needed. For
now, remember that the members in the **protected** section are
accessible to other members of this class and to classes that are
derived from this one. The class can have multiple **public**,
**private**, and **protected** sections in a class. Each section label
determines the access level of the members listed between that label
and the next label or the closing right brace that marks the end of
the class declaration. If the programmer does not provide any label at
the beginning of a class, the compiler considers as **private** all
members up to the next access control label.


10.4 Returning private values with public Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The **public** section of a class usually declares all the member
functions of the class that can be invoked through an instance of the
class in the program. These functions are the interface of the class
to the outside world. To provide the value of a **private** variable
to the outside world, the programmer can write a **public** member
function, usually classified as an accessor function. For example, the
following will give the length of the string held in the **CString**
class:

::

    
    .
    .
    .
    	CString x.
    .
    .
    .
    
    		if( x.getLength() > 0 ) ...
    .
    .
    .
    
    

Caution must be taken when returning a **private** data member is a
pointer. By simply returning the value the pointer holds, which is an
address, the value at that address is now open to modification from
outside the class. It is best to return a const to a pointer type,
which will prohibit the receiver of the address from using it to
modify the data item through the address. A better and safer way to
limit access to **private** data members would be to not use pointer
data types but use an instance of another class, such as **CString**
or **CVector** and return a reference to a class.


10.5 Member Functions
~~~~~~~~~~~~~~~~~~~~~
Member functions are the functions that are designed to implement the
operations allowed on the data type represented by a class. To declare
a member function, place its prototype in the body of the class. The
definition of the function can be inside the class, outside the class
but in the same file or in a separate file.


10.5.1 Inline Member Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Defining a function inside the body of a class has a special
consequence. Such definitions are considered to be **inline** and the
entire body of an **inline** function is repeated whenever that
function is called. The programmer does not have to define a function
within a class to make it inline. Use the **inline** keyword in front
of the function's definition and the function becomes an inline
function. However, the programmer can define an **inline** function
only in the file in which it is defined. This is because the compiler
needs the entire definition of an **inline** function so that it can
insert the body of the function wherever the function is called. The
programmer should place the definitions of **inline** functions in the
same header file that declares a class to ensure that every program
that uses the class can also use its **inline** functions.


10.5.2 Typical Public Member Functions.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The **public** member functions of a class are important because they
provide the user interface to the class. Public member functions
should include the following categories of functions:
:Class Management Functions: This is a standard set of functions that
  perform chores such as creating an instance of the class
  (constructor), destroying it (destructor), creating an instance and
  initializing it by copying from another instance (copy constructor),
  assigning one instance to another ( **operator=** function), and
  converting an instance to some other type (type conversion operator).
  :Class Implementation Functions: These functions implement the
  behavior of the data type represented by the class. They are the
  workhorse of the class. For a **CString** class, these functions might
  include operator+ for concatenating strings and comparison operators
  such as **operator==**, **operator>**, and **operator<**. :Class
  Accessor Functions: These functions return information about the
  internal variables of a class. The outside world can access the
  object's internal state through these functions. The **getLength()**
  function in the **CString** class is a good example of this type of
  member function. These types of functions should avoid returning
  pointers to private or protected data members. Returning a pointer
  gives direct access to the data member whose address has been
  returned. For example, suppose there is an accessor function that
  returns the null terminated array of characters held in the
  **CString** class, **getString()**. To limit the exposure to this
  internal data member by returning its address, return a const char *
  type. The use of const char * as the return type allows the return of
  the address but prohibits the use of the pointer to modify the data
  held at that address. In most cases the return of a pointer is
  discouraged. :Class Mutator Functions: These member functions allow
  for the passing of values into the class and the setting of private or
  protected data members. The data values passed must be protected so
  that the class member function does not have access to a data member
  outside the class. The arguments receiving the data values should be
  typed with **const** to access to the outside data variables. :Class
  Utility Functions: These member functions, often declared to be
  **private**, are used internally within the class for miscellaneous
  tasks such as error-handling.
:
:
:
:
:



10.5.3 const Member Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
If a member function does not alter any data in the class, the
programmer should declare that member function to be a **const**
function. For instance, the **getLength()** function of the
**CString** class simply returns the value of a member variable. It is
definitely a **const** function, because it does not change any data
of the **CString** class. The programmer can declare it as such by
appending a **const** to the usual function prototype:

::

    
    size_t getLength( void ) const;

This informs the compiler that the **getLength()** function is not
supposed to alter any variable in the class. The compiler will
generate an error message if the definition of the **getLength()**
function includes any code that inadvertently assigns a value to any
variable in the **CString** class.


10.6 Implementing a Class
~~~~~~~~~~~~~~~~~~~~~~~~~
When the programmer implements a class, he/she should think of the
class as a provider of some service that other classes or functions
need. The class is a server that acts on the requests of its clients.
This is the idea behind the client-server architecture, and it works
well when the programmer is implementing classes in object-oriented
programs. The clients of a class make requests by calling the member
functions of that class. The interface to the class refers to the
information that a client must have in order to use the facilities of
a class. At a minimum, the client has to know the following:


#. The names of the public member functions of the class.
#. The prototypes of the member functions.
#. The purpose of each member function.

The header file describes the interface to a class. In fact, it shows
the programmer everything except the functions that are defined in
another file, but the application can access only those members that
appear in the **public** section. Because the **public** section
interface to the class is important to its clients, the programmer
should place these declarations at the very beginning of a class.
These can be followed by the **protected** section which is the same
as **private** except when inheritance is involved . The **private**
members can come last, because these members are visible only to the
member functions of that class. A simple version of a **CString**
class would be as follows:


Listing 10-2
````````````

::

    
    #include <iostream.h>
    #include <string.h>  // required by strlen, and strcpy
        
    class CString
    {
    public:
        CString(const char *s);
        ~CString();
        void print() { cout << str;}
    private:
        char *_str;    // A traditional string
        int _size;     // Size of str buffer
    };
    
    CString::CString(const char *s)
    {
        _size = strlen(s);
        _str = new char[size + 1];
        strcpy(_str, s);
    }
    
    CString::~CString()
    {
        delete _str;
    }
    
    int main()
    {
    CString s("Strings should be easy to use.\n");
        s.print();
        return 0;
    }


Make sure that the header file includes all other header files that
are required by the class. That way all that a user of the class has
to remember is to include the particular class header file. The
clients of a class do not need the definition of the member functions
of a class. The programmer should place the actual definitions of the
member functions in a separate file. For a class defining a
**CString**, the programmer would define the interface to the class in
the file **cstring.h**, and the member functions would be implemented
in a second file, such as **cstring.cpp**. When the programmer defines
a member function outside the body of a class, he/she has to associate
each function with the class by explicitly using the scope resolution
operator ( **::**). For the **CString** class, the programmer has to
use a **CString::** prefix with each member function. A well-designed
C++ class behaves like one of the basic data types such as **int**,
**char**, or **double**, except that a class is likely to allow
different types of operations than those allowed for the basic types.
This is because the operations defined for a class include all of its
public member functions, which can be as diverse as the functionality
of a class warrants. Like the basic data types, to use a class in a
program, the programmer has to follow these steps:


#. Define one or more instances of the class. These are the objects of
   object-oriented programming. Just as the programmer would write:

::

    
    double x, y, z;     // doubles named x, y and z

   to create three instances of double variables, the programmer can
   create three **CString** objects with this code:

::

    
    CString s1, s2, s3;  // CStrings names s1, s2, s3

   For a class that provides all required interface functions, the
   programmer should be able to create and initialize instances in a
   variety of ways:

::

    
    CString s1 = "String 1";
    CString s2("Testing.1..2...3");
    CString s3 = s1;

In each of these cases, the compiler calls the appropriate constructor
and creates the **CString**.
#. Call the member functions of the objects and use the available
operators to manipulate the objects. For **CString** objects, the
programmer might write code such as this:


Listing 10-3
~~~~~~~~~~~~


::

    
    //
    //   tstring.cpp
    //
    #include "cstring.h"
    
    int main()
    {
    CString one, two("My Name is Charles Babbage"), both;
    CString a, b(20), c("I came by horse.");
    
    static char *str="I came on foot.";
    
        a = "I came by bus.";
        b = str;
        one = "My name is Alan Turing.";
        // Print shorter of one and two
        cout << "One Length: " << one.length() << endl;
        cout << "Two Length: " << two.length() << endl;
        if( one.getLength() <= two.getLength() )
             one.print();
        else
             cout << two;
        cout << "************* Begin Concatenation Test\n";
        //  plus overloaded to be concatenated
        both = one + two;   
        // using print method of String class
        both.print();       
        // using overloaded << operator of String
        both = one + "::" + two;   
        cout << both;
    
        cout << "************* End Concatenation Test\n";
    
        // print each CString value
        a.print();
        b.print();
        c.print();
        // do it again showing the use of an overloaded operator
        cout << a;
        cout << b;
        cout << c;
    
    }





10.7 Creating Objects on the Fly
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
There are two ways of creating instances of classes:

#. Define the objects just like defining int or double variables.
#. Create the objects dynamically as needed.

When the programmer creates objects through a class definition, the
compiler can reserve storage for the objects during compilation. To
dynamically create objects, the programmer needs a way to get a chunk
of memory for the object. In C, the programmer can dynamically create
variables or arrays by calling the functions such as **malloc()** or
**calloc()** from the C library. Although the programmer can often
create objects by defining instances of classes, dynamic allocation of
objects is more interesting because this approach enables the
programmer to use as much memory as is available in a system.


10.8 Allocating Objects on the Free Store
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In C++, what was referred to as the heap in C is now referred to as
the free store. In C++, the programmer gets the functionality of
**malloc()** and **calloc()** by using the **new** operator, which
allocates enough memory to hold all members of a class or a struct. If
the programmer were to define a structure such as Opcode:

::

    
        struct Opcode
        {
             char *name;
             void (*action)( void );
        };

the programmer would allocate space for an instance of this structure
as follows:

::

    
        Opcode *p_code;
        p_code = new Opcode;

In addition to the cleaner syntax, the new operator provides another
advantage. If the **Opcode** structure has a constructor that takes no
arguments, the new operator automatically calls that constructor to
initialize the newly created instance of **Opcode**. In fact, the
programmer has the option of specifying other initial values for an
object allocated by **new**, if the class has additional
constructors.. For example, the programmer can write:

::

    
    CString *file_name = new CString("cpphelp.doc");
    int *first_byte = new int(128);

to allocate and initialize a **CString** and an **int** object. The
**CString** is initialized to **cpphelp.doc**, whereas the **int** is
set to ****. The **CString** is initialized by calling the
**CString(const char *)** constructor of the **CString** class.


10.9 Destroying Objects on the Free Store
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In C++, the **delete** operator serves the same purpose as C's free.
Like free, the **delete** operator expects a pointer to an object as
its operand. Thus, if **p_code** is the pointer to an instance of
**Opcode** created by the **new** operator, the programmer can destroy
it by the statement:

::

    
    delete p_code;

In addition to freeing up storage used by the object, if that object's
class has a destructor defined, **delete** calls the destructor to
ensure a proper clean-up.


10.10 Arrays of Objects on the Free Store
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
One use of **new** is to allocate an array of objects. The syntax for
this is very much like the way the programmer would define arrays. For
example, the programmer could define an array of **CString** objects
by writing:

::

    
    CString edit_buf[128];

To create the same array on the free store, the programmer would use
this:

::

    
    CString *edit_buf = new String[128];

The programmer can use the array of **CString** items as he/she would
any other array. The first **CString** is **edit_buf[0]**, the second
one is **edit_buf[1]**, and so on. There is a special syntax for
deallocating the array of objects on free store. The programmer has to
specify the size of the array when deallocating it by using the delete
operator as follows:

::

    
    	delete[128] edit_buf;	or  	delete [] edit_buf;

This ensures that the destructor of the **CString** class is called
for each element of the array. Each **CString** object maintains an
internal pointer to a character array that is allocated by the
constructor and freed by the destructor. Thus, a call to the
destructor of each **CString** in the array takes care of properly
deallocating the internal char arrays used by the **CString** objects.


10.11 Handling Errors in Memory Allocation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
If the programmer can allocate many objects dynamically, chances are
that sooner or later the free space will be exhausted and the new
operator will fail. In ANSI C, when **malloc()** or **calloc()**
fails, the function returns a NULL pointer. C++ gives the programmer a
way to intercept allocation errors. When the **new** operator fails,
it tests a function pointer named **_new_handler**. If this pointer is
zero, **new** returns a NULL just as **malloc()** and **calloc()**.
However, if **_new_handler** is nonzero, **new** calls the function
whose address is in **_new_handler**. The programmer can handle all
memory allocation errors in a central function by setting
**_new_handler** to the address of the error-handling function. The
advantage of handling errors this way is that the programmer no longer
has to test each use of the **new** operator for a return value of
NULL. The programmer can install an error-handler for **new** in one
of two ways:

#. The function pointer **_new_handler** pointer is defined in the
   header file as follows:

::

    
    	void (*_new_handler)();

   Thus, the programmer can simply include and directly set the
   **_new_handler** pointer as follows:

::

    
    	#include 
    
    	void my_new_handler();   // our own error_handler
    	_new_handler = my_new_handler;


#. The second method is to use the set_new_handler function to install
   the error-handling function as follows:

::

    
    #include 
    
    set_new_handler( my_new_handler );





10.12 Calling Member Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In C++, object-oriented programs are built by creating instances of
classes ( the objects ) as necessary. The program does its work by
calling the member functions of the objects. The syntax for calling
the member functions is similar to the syntax used to call any other
function, except that the programmer has to use the **.** and **->**
operators to identify the member function within the object. For
example, to use the **getLength()** function of a **CString** object
named **s1**, the programmer must use the **.** operator to specify
the function:

::

    
    CString s1;
    size_t len;
    len = s1.getLength();

Apart from the use of the **.** operator to identify the function, the
calling syntax is like other function calls. As with any function, the
programmer has to know the member function's return type as well as
the number and type of arguments that it takes. For dynamically
allocated objects, use the **->** operator as illustrated here:

::

    
    CString *p_s = new CString( "Hello, World!");
    size_t len;
    len = p_s->getLength();



10.13 Using static Member Variables
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
When the programmer defines the member variables for a class, each
instance of the class gets its own unique copy of the member
variables. However, sometimes the programmer may want a single
variable for all instances of a class. C++ makes use of the **static**
keyword to introduce this type of member variable. Here the static
member variables appear in the context of a rather useful class. Most
C programmers at some time have debugged their program by inserting
calls to **printf()** or **fprintf()** and printing out messages as
well as values of variables of interest. These messages can help the
programmer pinpoint where a program fails. Often programmers enclose
these calls to **fprintf()** in an **#if** directive like this:

::

    
    #if defined(DEBUG)
    fprintf(stderr,"Loop ended. Index = %d\n",i);
    #endif

so that such messages are printed only when the preprocessor macro
**DEBUG** is defined. In C++, the programmer can use a similar
strategy for debugging, but instead of inserting calls to
**fprintf()**, he/she can get the work down by a **CDebug** class. The
class is designed so that whenever an instance of the **CDebug** class
is created, it prints a message, properly indented to make it easier
to follow the sequence of function calls. The **CDebug** class also
provides a member function called print that can be used just like
**printf**.


Listing 10-4
````````````

::

    
    //***************************************************************
    //  File:     CDebug.h
    //
    //  A class for debugging C++ programs.
    //
    //***************************************************************
    
    #if !defined(__DEBUG_H)
    #define __DEBUG_H
    
    #include <stdio.h>
    #include <stdarg.h>
    
    class CDebug
    {
    public:
        CDebug( const char *label = " " );
        ~CDebug();
        void print( const char *format, ... );
    private:
        unsigned int indent();
        void draw_separator();
    
        static unsigned int debug_level;
        static unsigned int debug_on;
        static unsigned int indent_by;
        static unsigned int line_size;
        enum { off = 0, on = 1 };
    
    };
    //***************************************************************
    //  INLINE FUNCTIONS
    //***************************************************************
    
    //***************************************************************
    // Destructor for the Debug class
    inline CDebug::~CDebug()
    {
        debug_level--;
        draw_separator();
    }
    
    #endif 
    
    //
    //  CDebug.cpp - Implementation of Methods (Functions) for CDebug Class
    //
    #include "cdebug.h"
    //***************************************************************
    // Constructor for CDebug class
    CDebug::CDebug( const char *label )
    {
    int i;
        if( debug_on )
        {
             draw_separator();
             (void) indent();
             fprintf(stderr, "%s\n", label);
        }
        debug_level++;
    }
    //***************************************************************
    // Use ANSI C's vfprintf() function to print debug message
    void CDebug::print( const char *format, ... )
    {
    va_list argp;
        if( debug_on )
        {
             (void)indent();
             va_start( argp, format );
             vfprintf(stderr, format, argp );
        }
    }
    //***************************************************************
    // Indent line according to debug_level; return the number
    // of spaces indented
    unsigned int CDebug::indent()
    {
    int i;
    unsigned int num_spaces = debug_level * indent_by;
        for( i = 0; i < num_spaces; ++i )
             fputc(' ', stderr );
        return( num_spaces );
    }
    //***************************************************************
    // Draw a separator using dashes (-) to identify debug levels
    void CDebug::draw_separator()
    {
    unsigned int i;
    
        if( debug_on )
        {
             for( i = indent(); i < line_size; ++i )
                  fputc( '-', stderr );
             fputc('\n',stderr);
        }
    }
    
    //***************************************************************
    //  File:     tdebug.cpp
    //
    //  Test the "Debug" class.
    //***************************************************************
    
    #include "cdebug.h"
    
    // Initialize the debug_level to 0 and debug_on to "on"
    // Static members MUST be initialized outside the scope of a 
    // class member function
    
    unsigned int CDebug::debug_level = 0;
    unsigned int CDebug::debug_on = Debug::on;
    
    // Set number of characters per line to 55
    
    unsigned int CDebug::line_size = 55;
    
    // Indent by four spaces for each level
    
    unsigned int CDebug::indent_by = 4;
    
    //***************************************************************
    // Recursive function that evaluates factorial
    unsigned long factorial( int n )
    {
    CDebug dbg( "factorial" );
        dbg.print( "argument = %d\n", n);
        if( n == 1 )
             return 1;
        else
             return n*factorial( n - 1 );
    }
    //***************************************************************
    // Main function to test "CDebug" class
    
    int main()
    {
    CDebug dbg("main");
    unsigned long n = factorial(4);
        dbg.print("result = %ld\n", n );
        return 0;
    }



10.14 Static Member Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Like **static** member variables, the C++ programs can also use
**static** member functions. In C programs, programmers often define
**static** functions to confine the visibility of a function to a
specific file. In C, by using the **static** keyword, the programmer
can have more than one function with the same name in different files.
C++ goes one step further and enables the programmer to use functions
that are **static** within a class. The programmer can invoke such
functions without creating any instance of the class. All the
programmer has to do is use the scope resolution operator with the
name of the class. As an example, suppose the programmer wants a
**static** member function of the **CDebug** class that sets the
debug_on variable. The programmer can declare such a function inside
the body of the class as follows:


Fig. 10-8
`````````

::

    
        class CDebug
        {
        public:
        //   ...
        static void set_debug( int on_off); 
        //   ...
        private:
        //   ...
        };

The function is defined just like any other member functions (notice
that the programmer does not need the static keyword in the
definition):


Fig. 10-9
`````````

::

    
        void CDebug::set_debug( int on_off )
        {
             if( on_off )
                  debug_on = on;
             else
                  debug_on = off;
        }

Once defined, the programmer can call this function just like an
ordinary function but with a **CDebug::** prefix as follows:


Fig. 10-10
``````````

::

    
        //   Turn debugging off
        CDebug::set_debug(0);
        //   ...
        //   Turn debugging on
        CDebug::set_debug(1);

Notice that the programmer does not need an instance of the **CDebug**
class to call the set_debug function. The scope resolution prefix (
**CDebug::**) is necessary to indicate which **set_debug** function
the programmer is calling. After all, another class may have also
defined a static member function named **set_debug**.


10.15 Using Pointers to Class Members
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Because of encapsulation of data and functions in a class, C++
includes the notion of a pointer to a class member in addition to
ordinary pointers to class and functions. The pointer to a class
member is actually the offset of the member from the beginning of a
particular instance of that class. In other words, a pointer to a
class member is a relative address, whereas regular pointers denote
the absolute address of an object. The syntax for declaring a pointer
to a class member is **classname::***, where **classname** is the name
of the class. Thus, if the programmer declares a class as follows:


Fig. 10-11
``````````

::

    
        class CSample
        {
        public:
             short step;        
             void set_step( short s );
        //   ...
        private:
        };

the programmer can define and initialize a pointer to a short member
variable of the **Sample** class like this:

::

    
        short CSample::*p_s; // pointer to short in class sample
        p_s = ::step; // initialize to member "step"

Notice that to define and even initialize the pointer, the programmer
does not need an instance of the **Sample** class. Contrast this with
the way the programmer would initialize a regular pointer to a short
variable. With the regular pointer the programmer would have to define
a short variable before he/she can assign its address to the pointer.
With pointers to class members, the programmer needs a concrete
instance of the class only when using the pointers. Thus, the
programmer has to define an instance of the **Sample** class before
he/she can use the pointer p_s. A typical use of **p_s** might be to
assign a new value to the class member through the pointer:

::

    
        CSample s1;
        s1.*p_s = 5;

Note that the syntax for dereferencing the pointer is of the form
instance. ***p**, where instance is an instance of the class and **p**
is a pointer to a class member. Instead of a class instance, if the
programmer had a pointer to an instance of a **Sample** class, the
syntax for using p_s changes to this:

::

    
        CSample s1;
        CSample *p_sample1 = 
        p_sample->*p_s = 5;



10.16 Pointer to Member Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The syntax for declaring a pointer to a member function of the class
is similar to the syntax used for declaring pointers to ordinary
functions. The only difference is that the programmer has to use the
class name together with the scope resolution operator ( **::**). Here
is an example that defines a pointer to a member function of the class
Sample. The definition says that the member function to which
**p_func** points will return nothing but requires a short as
argument:

::

    
        void (CSample::*p_func)(short) = CSample::set_step;

The sample definition also initializes the pointer **p_func** to the
address of the function **set_step** of class **Sample**. The
programmer can call the function through the pointer like this:

::

    
        CSample s1;
        (s1.*p_func)(2);    // call function through pointer

The following is another small program that shows how pointers to
member functions are used:


Listing 10-5
````````````
<< "Inside the Help Function!" << endl; return SUCCESS; } Result
moveLeft() { cout << "Inside the MoveLeft Function!" << endl; return
SUCCESS; } Result moveRight() { cout << "Inside the MoveRight
Function!" << endl; return SUCCESS; } Result quit() { cout << "Inside
the Quit Function!" << endl; return FAILURE; } private: // ... }; //
Initialize array of pointers to member functions Result
(CCommandSet::*(pCmd[]))() = {CCommandSet::help ,CCommandSet::moveLeft
,CCommandSet::moveRight ,CCommandSet::quit }; int main() { int cmd =
0; Result val; CCommandSet cmdSet; // // loop on command input // do {
// // prompt for command input // cout << "Command(0-3): "; cin >>
cmd; // Invoke a member function through the pointer array val =
(cmdSet.*pCmd[cmd])(); } while( val != FAILURE ); return 0; } The
example makes calls to the functions via the array of pointers. This
example could be developed further to be the command set handler for a
text editor or a word processor.


10.17 The this Pointer
~~~~~~~~~~~~~~~~~~~~~~
Here is an observation about the member variables and member functions
of a class. Although there is a unique copy of member variables for
each instance of a class, all instances share a single set of member
functions. Yet none of the member functions that the programmer has
seen thus far have any way of indicating the class instance whose
member variables are being used in the function. Take, for instance,
the **getLength()** function of the **CString** class. If the
programmer writes this:

::

    
        CString s1("hello"), s2("Hi");
        len1 = s1.getLength(); // len1 = 5
        len2 = s2.getLength(); // len2 = 2

each call to **getLength()** returns a unique answer, yet the
**getLength()** function is defined as follows:

::

    
        inline size_t CString::getLength( void ) const 
        {
             return len;
        }

where **len** is a member variable of the **CString** class. How did
the function know how to return the current length for each string?
The answer is in **this**.


10.17.1 this Points to Instance of Class
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The C++ compiler alters each member function in a class by making two
changes:

#. It passes an additional argument named this, which is a pointer to
the specific object for which the function is being invoked. Thus, the
call **s1.getLength()** will include an argument this set to the
address of the **CString** instance **s1**.
#. It adds the **this->** prefix to all member variables and
   functions. Thus, the **len** variable in the **getLength()** function
   becomes **this->len**, which refers to the copy of the **len** in the
   class instance whose address is in **this**.

Typically, the programmer does not have to use **this** explicitly in
a member function, but he/she can refer to **this** if there is a
need. For example, if the programmer has to return the object to the
calling program, you can do so with the following statement:

::

    
        return (*this);

The programmer can return a reference to the object with the same
statement. The programmer has to return references when defining
certain operators such as the assignment operator ( **operator=**).


10.17 friend Functions
~~~~~~~~~~~~~~~~~~~~~~
The **friend** construct is a useful adjunct to encapsulation and data
hiding, but one that should be used with caution. Some benefits of
encapsulation and data hiding, namely, the localization of maintenance
if changes are made to the representation of the underlying data type
and consistency of usage for a class of objects throughout the
software system may be compromised by **friend** functions. A possible
drawback of encapsulation and data hiding using classes is that they
tightly bind a data type to a set of methods and force the user to
manipulate the underlying data type using the methods specified for
the underlying type. That is, only a prescribed set of messages can be
send to an object of the given class. The **private** data and methods
of a class are available only within the class definition and also
within the implementation of the methods, which might be in different
files. This limited availability imposes an enormous responsibility on
the software designer to ensure that each class has sufficient methods
to provide manipulation of the underlying data for all situations that
might be encountered. A class can bestow a special privilege on a
function external to the class or to another class. This privilege is
called friendship. By declaring another class or function to be a
**friend**, all member function definitions in the **friend** class or
the definition of the function external to the class can directly
access all fields of the class bestowing the friendship. This limited
violation of data-hiding can be very useful if used in a disciplined
manner. Clearly, the function or class enjoying the friendship
relationship must be very closely related to the class bestowing this
friendship. The motivation for establishing friendship is efficiency.
Instead of relying on access methods (member functions that provide
access to the **private** fields of an object), friendship provides
direct access to these private fields.
