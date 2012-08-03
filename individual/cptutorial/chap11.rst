


Chapter 11 Operators as Functions
=================================

When a class is designed a new data type is being added to the C++
language. The ability to overload a C++ operator allows the programmer
to define the meaning of operators relative to the class being
defined. Operators are overloaded and selected based on the signature-
matching algorithm for finding overloaded functions. The keyword
**operator** is used to define a type conversion member function. It
is also used to overload the built-in C operators. Just as a function
name can be given a variety of meanings, with each meaning being
different depending upon the arguments being passed, so can an
operator, such as **+**, be given additional meanings. Overloading
operators allows infix expressions of both ADTs and built-in types to
be written. It is an important notational convenience and in many
instances leads to shorter and more readable programs.


11.1 Defining an Overload Operator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Defining operators for a class is easy once you know how the
application of an operator is translated to a function call. For a
unary operator such as **&**, when you write the following:

::

    
        

where **X** is an instance of some class, the C++ compiler applies the
operator by calling this function:

::

    
        X.operator&()

The compiler automatically passes a pointer to the class instance to
the function. For binary operators such as **+**, an expression such
as this:

::

    
        X + Y

where **X** and **Y** are class instances, the compiler calls the
function:

::

    
        X.operator+(Y)

As you can see, the C++ compiler reduces the application of operators
to function calls. Thus, you can overload an operator by defining a
function whose name begins with the keyword **operator** followed by
the symbolic notation of that operator.


11.2 Arguments to Operator Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Like all member functions, operator functions receive a pointer to the
class instance in the hidden argument named this. Because this
argument is implicit, unary operator functions are defined with no
arguments at all. Binary operator functions that are members of the
class take a single argument, which is the right- hand side of the
operator expression. The ternary operator, **?:**, cannot be
overloaded.
However, you can define an operator function as a friend instead of as
a member function of the class. By defining an operator overload
function as a friend, the class instance pointer is not passed to the
function. There are times when the programmer needs to define friend
operator functions. When declared as a friend, the operator function
requires all arguments explicitly. Thus, to declare **operator+** as a
friend function of **class X**, the following would be written:

::

    
        friend X operator+(X&, Y&);   // assume X is a class

and thereafter, to evaluate the expression **x1 + x2** for two
instances of **class X**, the C++ compiler will call the function
**operator+(x1, x2)**.


11.3 Operators That Can Be Overloaded
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

All C++ operators can be overloaded except for the following:

::

    
    Member access operator                 x.y
    Dereferencing pointer to member        x.*y
    Scope resolution operator              x::y
    Conditional operator                   x?y:z

Those that can be overloaded are:

::

    
    +   -    *    /    %    ^    &    |
    -   !    ,    =    <    >    <=   >=
    ++  --   <<   >>   ==   !=   &&   ||
    +=  -=   /=   %=   ^=   &=   |=   <<=
    >>= []   ()   ->   new  delete


Although C++ enables the programmer to redefine the meaning of most of
the built-in operator symbols for a class, there is no ability to
change the precedence rules that dictate the order in which operators
are evaluated. C++ operators have the same precedence as those of
their ANSI C counterparts. Even if, for some class, the programmer
were to define **operators +** and ***** to have entirely different
meanings from addition and multiplication, in an expression such as
this:

::

    
        a + b * c      // a, b, c are some class instances

the C++ compiler will still invoke the **operator*** function to
evaluate **b * c** before calling **operator+**.
The following tips will help in designing classes with overloaded
operators (assume that **a** and **b** are instances of appropriate
class types).

#. C++ does not "understand" the meaning of an overloaded operator.
It's the programmer's responsibility to provide meaningful overloaded
functions.
#. C++ is not able to derive complex operators from simple ones. For
instance, if you define overloaded operator functions **operator***
and **operator=**, C++ cannot evaluate the expression **a *= b**
correctly.
#. The programmer may never change the syntax of an overloaded
operator. Operators that are binary must remain binary. Unary
operators must remain unary.
#. The programmer cannot invent new operators for use in expressions.
Only those operators listed for the syntax of the language can be
overloaded. However, the programmer can always write functions for
special cases.
#. The programmer may overload the operators **++** and **--**.


As an example of operator overloading, consider the **+** operator,
the binary version, for the **CString** class. A good interpretation
of this operator for the **CString** class would be to concatenate two
**CString** objects. A typical use of the **+** operator for
**CString** might be this:

::

    
        CString s1("This "), s2("and that"), s3;
        s3 = s1+s2;


The programmer can get this functionality by defining the following
function as a member of the CString class;


Fig. 11-1
`````````

::

    
    // *********************************************************
    //   overload +
    //   Member function to concatenate two String objects
    CString& CString::operator+( const CString& str )
    {
        size_t lgth = len + str.len;
        char *t = new char[lgth + 1];
        strcpy( t, s );
        strcat( t, str.s );
        return CString(t);
    }


Because this version of the **operator+** is a member function of the
**CString** class, it takes only one argument, a reference to the
**CString** on the right-hand side of the **+** operator. The function
returns a new **CString** object that is a concatenation of the two
**CString** items that are being added.
Although the member function **operator+** works well when adding
**CString** items, it cannot handle another type of use for the
operator. Because a **CString** is meant to model a dynamic array of
characters, it is natural to allow the use of the operator in
expressions such as this:

::

    
        CString str = "World!".
        CString s2 = "Hello, "+ str;    //   expecting "Hello, World!"


In this case, the C++ compiler will interpret the right-hand side of
the expression as the following:

::

    
        "Hello".operator+(str)

This is an error, because "Hello" is not an instance of a class and
therefore has no member **operator+** function that can be applied to
"Hello". One might think that a solution would be to convert "Hello"
to a **CString** and then apply the **operator+** function of the
**CString** class. But, this does not happen because the C++ compiler
does not automatically convert the left-hand operand of any member
operator functions. However, if the programmer were to define a
nonmember friend **operator+** function in the **CString** class:

::

    
        friend CString operator+(const char *s1, const String& s2);


the compiler would convert the expression call this function with the
pointer to "Hello" as the first argument and str as the second
argument. This would evaluate to the following function call:

::

    
        operator+("Hello", str)


The definition of the friend **operator+** function is similar to the
member function, except that it does not take an implied pointer to
the current instance of the class as the first argument, and the body
of the function has to refer to each argument explicitly. Following is
a definition of the function:


Fig. 11-2
`````````

::

    
    //***********************************************************
    // CString concatenation operator, declared as "friend"
    CString operator+(const char *a, CString  ) // overload
    {
    CString temp;
        strcpy( temp.s, a );
        if( (strlen(a) + b.len ) < MAXLEN )
        {
             strcat( temp.s, b.s );
             temp.len = strlen( temp.s );
        }
        else
             cerr << "Max length exceeded in concatenation.\n";
        return temp;
    }



11.4 Copying Class Instances
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When copying one class instance to another instance of a compatible
type, the results can be unexpected. C++ makes copies of instances not
only in assignment expressions but at other times. So you must be
aware of the consequences of copying class instances, even if you do
not explicitly assign them with the **=** operator. There are four
times when a copy of a class instance will be made:

#. When one instance is used to initialize a newly defined instance of
the same class.
#. When an instance is passed to a function's value parameter of the
class type.
#. When a function returns a class instance (not a reference or
pointer to the class).
#. When a statement assigns one instance to another.


The first three of these cases initialize new copies of class
instances using the value of an existing instance. The fourth case
assigns the value of an existing instance to another instance that was
previously defined. In all cases, the result is an object that
contains copies of the data fields of another object.
After making such copies, all may seem well, but trouble lurks unseen
when the class instances contain pointer fields that address variables
allocated space on the heap. Problems can also arise when creating
copies of instances that contain fields of other class types, which
may contain their own pointer fields. If two or more pointers happen
to address the same location in memory, deleting one of those pointers
will cause the others to address invalid data. Worse, deleting the
same space more than once can corrupt the heap and cause a major bug.
Because classes often inherit properties of many other classes, a
simple assignment or function call might create dozens of duplicate
pointers. And if those pointers address instances were allocated by
new, class destructors might deallocate the same memory spaces
multiple times, which will almost always corrupt the heap. To avoid
such problems, the programmer should always provide a copy constructor
for any class that includes dynamically allocated members.


Fig. 11-3
`````````

::

    
    // *********************************************************
    // CString(const String&)
    // Create a new CString as a copy of another CString
    // This is called the "copy constructor"
    CString::CString( const CString& str )
    {
        len = s.len;
        maxlen = s.maxlen;
        s = new char[maxlen];
        strcpy( s, str.s );
    }



11.5 Overloading the Input and Output Operators
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When the programmer starts to define his/her own classes such as the
CString class, he/she might want to overload the definitions of the
**<<** and **>>** operators so that they work with the class. For
example, once the **>>** operator is overloaded, it is possible to
read characters from an input stream into a **CString** object by
writing:

::

    
        CString user_input;
        cin >> user_input;  //   accept user's input


Similarly, to display a **CString**, the programmer would write the
following:

::

    
        CString greetings = "Hello, World!";
        cout << greetings << endl;



11.5.1 Input Operator
~~~~~~~~~~~~~~~~~~~~~

The stream extraction operator, **>>**, is easy to implement. The
following version assumes a maximum string length of 256 characters
including the null byte and uses the get function of the input stream
to read in the characters into an internal array. Then it creates a
new **CString** object from that character array and returns the
**CString**.


Fig. 11-4
~~~~~~~~~

::

    
    //***********************************************************
    // Stream extraction operator for CString class
    istream& operator>>(istream& is, CString& str)
    {
    char buf[MAXLEN];
    
        if( is.get(buf,MAXLEN) )
             str = String( buf );
        return is;
    }



11.5.2 Output Operator
~~~~~~~~~~~~~~~~~~~~~~

To overload the insertion operator, **<<**, a public member function
is needed for the class that can handle the actual output. For the
**CString** class, a print function is defined that performs the
output as follows:


Fig. 11-5
`````````

::

    
    //***********************************************************
    // Output the CString to the specified output stream
    void CString::print( ostream& os ) const
    {
         os << s ;
    }


Once the print function is defined, you can overload the **<<**
operator for a **CString** argument as follows:


Fig. 11-6
`````````

::

    
    //***********************************************************
    // Stream insertion operator for CString class
    ostream& operator<<(ostream& os, String& str)
    {
        str.print( os );
        return os;
    }


As can be seen, this operator function does its work by calling the
member function named print within the **Cstring** class. Note that
the **ostream** class declares **operator<<** as a **friend**
function.


11.6 Templates
~~~~~~~~~~~~~~

Templates, also called generics or parameterized types, allow the
programmer to construct a family of related functions or classes.


11.6.1 Function Templates
~~~~~~~~~~~~~~~~~~~~~~~~~

Consider a function **max(x,y)** that returns the larger of its two
arguments, **x** and **y** can be of any type that has the ability to
be ordered. But, since C++ is a strongly typed language, it expects
the types of the parameters **x** and **y** to be declared at compile
time. Without using **templates**, many overloaded versions of
**max()** are required, one for each data type to be supported, even
though the code for each version is essentially identical. Each
version compares the arguments and returns the larger. For example,

::

    
        int max( int x, int y )
        {
             return ( x < y) ? x : y ;
        }
    
        long max( long x, long y )
        {
             return ( x > y) ? x : y;
        }

One way around this problem is to use a macro:

::

    
        #define max(x,y)    ((x>y) ? x : y )


However, using the **#define** circumvents the type-checking mechanism
that makes C++ such an improvement over C. In fact, this use of macros
is almost obsolete in C++. Clearly, the intent of **max(x,y)** is to
compare compatible types. Unfortunately, using the macro allows a
comparison between an **int** and a **struct**, which are
incompatible.
Another problem with the macro approach is that substitution will be
performed where it is not desired:

::

    
        class Foo
        {
        public:
             int max(int, int);  // syntax error; this gets expanded
    
        };


By using a **template** instead, the programmer can define a pattern
for a family of related overloaded functions by letting the data type
itself be a parameter:

::

    
        template <class T>
        T max( T x, T y )
        {
             return ( x > y ) ? x : y ;
        }


The data type is represented by the **template** argument: **<class
T>**. When used in an application, the compiler generated the
appropriate function according to the data type actually used in the
call:

::

    
        int i;
        Myclass a, b;
    
        int j = max(i,0);        // arguments are integers
    
        Myclass m = max(a,b);    // arguments are type Myclass


Any data type (not just a class) can be used for **<class T>**. The
compiler takes care of calling the appropriate **operator>()**, so
that the call to max can be used with arguments of any type for which
**operator>()** is defined.


11.6.2 Class Templates
~~~~~~~~~~~~~~~~~~~~~~

A class **template** (also called a generic class or class generator)
allows the programmer to define a pattern for class definitions.
Generic container classes are good examples. Consider the following
example of a stack class. Whether the stack is for integers, character
strings or of any other type, the basic operations performed on the
type are the same (insert, delete, index, and so on). With the element
type treated as a type parameter to the class, the system will
generate type-safe class definitions on the fly:


Listing 11-1
````````````

::

    
    //  *************************************************************
    //  Interface File      :    CStack.h
    //  Implementation File :    CStack.cpp
    //  Description         :    A template class that implements
    //                      :    a stack.
    //  *************************************************************
    // #pragma interface
    
    #ifndef  _CSTACK_H
    #define  _CSTACK_H
    
    #include <string.h>
    
    // #ifndef  _BOOL
    // #define  _BOOL
    
    // enum bool { false, true };
    
    // #endif
    
    template<class T>
    class CStack
    {
    protected:
        //
        //   Structure that describes each Node of the linked list
        //
        struct StackNode
        {
             T nodeData;
             StackNode *next;
        };
    
        unsigned _cnt;      // count of nodes in the stack
        bool _newErr;       // error indicator for new
        StackNode *_tos;    // pointer to the top of the stack
        CStack& copy( CStack& );
    
    public:
        //
        //   Constructors
        //
        CStack();
        //
        //   Destructors
        //
        ~CStack();
        //
        //   Accessors
        //
        bool isempty() const
        {
             return ( _cnt == 0 ) ? true : false;
        }
        bool getNewErr() const 
        {
             return _newErr;
        }
        //
        //   Mutators
        //
        void push( T );
        bool pop( T& );
        void clean( void );
        CStack& operator=( CStack& item )
        {
             copy( item );
             return *this;
        }
    };
    #endif
    
    //  *************************************************************
    //  Interface File      :    CStack.h
    //  Implementation File :    CStack.h
    //  Description         :    Contructs a template class for a 
    //                      :    stack;
    //  *************************************************************
    // #pragma implementation
    
    // #include "cstack.h"
    
    template
    CStack::CStack()
    {
        _cnt = 0;
        _newErr = false;
        _tos = NULL;
    }
    
    template
    CStack::~CStack()
    {
        clean();
    }
    
    template
    CStack& CStack::copy( CStack& item )
    {
    StackNode *current, *nextNode, *temp;
        //
        //   clear the stack if not already empty
        //
        if( _tos )
             clean();
        //
        //   copy the data members across
        //
        _cnt = item._cnt;
        _newErr = item._newErr;
        //
        //   assign NULL to the top of stack pointer
        //
        _tos = NULL;
        //
        //   exit if the source is empty
        //
        if( !item._tos )
             return *this;
        //
        //   allocate a new stack element
        //
        _tos = new StackNode;
        //
        //   exit if error in allocation
        //
        if( !_tos )
        {
             _newErr = true;
             return *this;
        }
        //
        //   initialize pointers to copy all of stack
        //
        _tos->next = NULL;
        _tos->nodeData = item._tos->nodeData;
        nextNode = item._tos->next;
        current = _tos;
        //
        //   duplicate the source stack elements
        //
        while( nextNode )
        {
             //
             //   create a new stack
             //
             temp = new StackNode;
             if( !temp )
             {
                  _newErr = true;
                  return *this;
             }
             //
             //   copy data
             //
             temp->nodeData = nextNode->nodeData;
             temp->next = NULL;
             current->next = temp;
             current = current->next;
             nextNode = nextNode->next;
        }
        return *this;
    }
    
    template
    void CStack::clean()
    {
    T temp;
        //
        //   pop everything from the stack
        //
        while( pop(temp) );
    
    }
    
    template
    void CStack::push( T item )
    {
    StackNode *temp;
    
        _newErr = false;
        //
        //   first node on the stack?
        //
        if( _tos )     // no
        {
             //
             //   get a new stack node
             //
             temp = new StackNode;
             if( !temp )
             {
                  _newErr = true;
                  return;
             }
             temp->nodeData = item;
             temp->next = _tos;
             _tos = temp;
        }
        else // yes
        {
             _tos = new StackNode;
             if( _tos == NULL )
             {
                  _newErr = true;
                  return;
             }
             _tos->nodeData = item;
             _tos->next = NULL;
        }
        ++_cnt;
    }
    
    template
    bool CStack::pop( T& item )
    {
    StackNode *temp;
        //
        //   anything in the stack?
        //
        if( _cnt )
        {
             //
             //   save the data being popped into the reference
             //   data item 
             //
             item = _tos->nodeData;
             //
             //   save the current top of stack address
             //
             temp = _tos;
             //
             //   move top of stack to the next node on the list
             //
             _tos = _tos->next;
             //
             //   delete the old top of stack
             //
             delete temp;
             //
             //   decrement the count of nodes
             //
             --_cnt;
             return true;
        }
        else
             return false;
    }


Notice that in the above example that both the interface and the
implementation appear in the header file. There is no separate
**.cpp** file that holds the implementation. Most compilers require
that both the interface code and the implementation be in one file for
templates.


Listing 11-2
````````````

::

    
    //  ************************************************************
    //  Source File    :    tstack.cpp
    //  Description    :    Test program to exercise the parametric
    //                 :    class CStack.
    //  ************************************************************
    
    #include 
    #include "cstack.h"
    #include "cstring.h"
    
    int main()
    {
    CStack myData;
    int values[5];
    int ch;
    
        cout << "Enter 5 integers: ";
        cin >> values[0] >> values[1] >> values[2]
            >> values[3] >> values[4];
    
        for( int i = 0; i < 5; ++i )
             myData.push( values[i] );
    
    
        for( i = 0; i < 5; ++i )
        {
             myData.pop( values[i] );
             cout << "Value at[ " << i << " ]= " 
                  << values[i] << endl;
        }
        cout << "End of integer Stack Demo";
    
    CString list[5];
    char buf[80];
    CStack names;
    
        for( i = 0; i < 5; ++i )
        {
             cout << "\nEnter a name: ";
             cin >> buf;
             list[i] = buf;
             names.push( list[i] );
        }
    
        for( i = 0; i < 5; ++i )
        {
             names.pop( list[i] );
             cout << "Value at[ " << i << " ]= "
                  << (const char *)list[i] << endl;
        }
        cout << "End of CString Stack Demo - Press RETURN: ";
        cin >> ch;
        return 0;
    }

As with function templates, an explicit template class definition may
be provided to override the automatic definition for a given type:

::

    
        class CStack {...};

The symbol **CStack** must always be accompanied by a data type in
angle brackets. It cannot appear alone, except in some cases in the
original template definition.


11.7 Exceptions
~~~~~~~~~~~~~~~

Another method available for handling out of memory conditions and
other exceptions appears only in the latest versions of C++. As of
this writing only the Borland C++ version 4.xx compiler and the GNU
C++ version 2.7.0 compiler implements the specifications of the
ANSI/ISO C++ committee on exception handling. Exception handling
involves three keywords in C++, **throw**, **try** , and **catch**.
Throwing an exception lets you gather information at the throw point
that could be used in troubleshooting the causes that led to the
program failure. The **throw** keyword is analogous to using
**raise()** with **signal()**. A C++ program can directly raise an
exception in a **try** block by using the **throw** expression. The
trying of code that may result in an exception is protected by having
a **catch** routine. The catching of an exception allows the program
to take actions that could led to a graceful program termination. Only
synchronous exceptions are handled, meaning that the failure is
generated from within the program, not from an external source, such
an pressing CTRL-C or CTRL-BREAK. If asynchronous exceptions are to be
handled then the **signal()** function must still be used along with,
possibly, the **raise()** function.


Fig. 11-7
`````````

::

    
    Array::Array( int elements )
    {
        if( elements < 1 )
             throw ( elements );
        pArray = new int[elements];
        if( pArray == (int *)NULL )
             throw( "NO SPACE on the FREE store" );
    }
    
    void foo()
    {
        try
        {
             Array first( 10000 ), b( -5 );
             ....
        }
        catch( int x )
        {
             ...  // code to handle incorrect number of elements 
             ...  // in an Array type
        }
        catch( char *errMsg )
        {
             ...  // code to handle no more free store
        }
    }


The try-block specified by **try** must be followed immediately by the
handler specified by **catch**. If an exception is thrown in the try-
block, program control is transferred to the appropriate exception
handler.


11.7.1 throw
~~~~~~~~~~~~

The **throw** keyword comes in two syntactic forms:

::

    
    (1) throw
    (2) throw expression

The second format, **throw expression**, will cause an exception to be
raised. The innermost try block in which an exception is raised is
used to select the **catch **throw**, causes the current exception to
be rethrown. It is used when a second handler is needed to complete
processing of an exception. With the second format, the expression
thrown is a static, temporary item that persists until the **catch**
handler is exited. The **catch** handler may use this expression in
its processing.

::

    
    void sample()
    {
    int x;
        ...
        throw x;
    }
    
    main()
    {
        try
        {
             sample();
        }
        catch( int value )
        {
             ...
        }
    }


The value thrown by **throw** in the **sample()** function persists
until the handler with the signature **catch( int value )** exits. The
argument **value** is available for use within the catch routine as
would any argument being passed to a function.
When a function called from another function throws an exception, the
process stack is unwound until an exception handler is found. This
means that by exiting from the local function, any local automatic
storage class variables will be destroyed.

::

    
    void func2()
    {
    int local_2A, local_2B;
        ...
        throw local_2A;
    
    }
    
    void func1()
    {
    int local_1A;
        ...
        func2();
    }
    
    main()
    {
        try
        {
             func1();  // func2() is exited with local_2A and 
                       // local_2B destroyed
        }
        catch( int value )
        {
             ...
             throw;    // exception is re-thrown, possibly due to 
                       // some condition within this catch() function
        }


If the thrown expression was of integer type, the rethrown exception
is of the same integer value and will be handled by the nearest
handler suitable for that type, but not by the handler that re-threw
the exception.
Although C++ allows an exception to be of almost any type, it is
useful to make exception classes. The exception object is treated
exactly the way any object would be treated. An exception carries
information from the point where the exception is caught.


Fig. 11-8
`````````

::

    
    enum ErrorType { BOUNDS, HEAP, OTHER };
    
    class CArrayError
    {
    public:
        CArrayError( ErrorType, int, int );   // for out of BOUNDS
        CArrayError( ErrorType, int );     // for out of HEAP
        CArrayError( ErrorType );          // for OTHER 
        ...
    
    private:
        ErrorType _errType;
        int       _upperBound
                  , _index
                  , _size
                  ;
    };


Now a **throw expression** using an object of type **CArrayError** can
be more informative to a handler than just throwing simple
expressions.

::

    
    ...
    throw CArrayError( BOUNDS, i, _upperBound );
    ...



11.7.2 try
~~~~~~~~~~

The **try** keyword has the form

::

    
    try
        compound statement
    handler list


The **try** block is where the decision is made as to what handler is
called to handle a raised exception. The order in which handlers are
defined determines the order in which the handlers with matching
argument lists are tried. A **throw expression** matches the **catch**
argument if it is

#. An exact match.
#. A public base class of a derived type which is what is thrown.
#. A thrown object type that is a pointer type convertible to a
   pointer type that is the catch argument.


It is unwise to list handlers in an order that prevents them from
being called. For example:

::

    
    catch( void * );   // would also catch any "char *" arguments
    catch( char * );
    catch( BaseClass& );    // would also catch any "DerivedClass&" calls
    catch( DerivedClass& );

**try** blocks can be nested. If no matching handler is available in
the immediate **try** block, a handler is selected from its
immediately surrounding **try** block. If no handler can be found that
matches, then a default behavior is used.


11.7.3 catch
~~~~~~~~~~~~

The **catch** keyword has the following form

::

    
        catch( formal argument )
        compound statement

The **catch** appears to be a function declaration of one argument
without a return type. **catch** routines do not accept more than one
argument, because that would imply that more than one exception was
being handled at once. The **catch** routine may have an argument list
of ellipses, ..., which matches any argument. In addition, the formal
argument can be an abstract declaration, which means it can have a
type without a variable name. The **catch** handler is called by an
appropriate **throw expression**. At that point the **try** block,
which was in effect when the exception was thrown, is exited. Upon
exit from the **try** block, the destructors for any objects that are
local to the **try** block are invoked.


11.7.4 Exception Specifications
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An exception specification can be part of the syntax of a function
declaration

::

    
        function_header throw( type list )


The type list is the list of types that a **throw expression** within
the function can have. If no type list is specified, the compiler can
assume that no **throw** will be executed by the function.

::

    
        void func1() throw( int, CArrayError );
        void func2( int x ) throw();

If an exception specification is left off, then the assumption is that
an arbitrary exception can be thrown by the function. It is
recommended that those exceptions that will be handled in a function
be specified with the function declaration. Violations of the
specifications are a run-time error.


11.7.5 terminate() and unexpected()
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When no other handler has been specified to deal with an exception,
the system provides the **terminate()** handler as a default. Within
the **terminate()** handler, the **abort()** function is called. The
programmer can use the **set_terminate() **abort()**, by the default
termination handler.
When a function throws an exception that was not in its exception
specification list, the system provides the handler **unexpected()**
which will be called. By default the **abort()** function is called by
the **unexpected()** handler. The programmer can use the
**set_unexpected()** function to change the function called by the
handler.
The predefined exceptions in the C++ language are as follows:

::

    
    Exception          Type                Header file
    ----------------------------------------------------------------
    Bad_cast           class               typeinfo.h
    
    Bad_typeid         class               typeinfo.h
    
    set_new_handler    function            new.h
    
    set_terminate      function            except.h
    
    set_unexpected     function            except.h
    
    terminate          function            except.h
    
    Type_info          class               typeinfo.h
    
    unexpected         function            except.h
    
    xalloc             class               except.h
    
    xmsg               class               except.h

In the following example, an allocation failure will result in the
predefined exception **xalloc** being thrown. Your program should
always be prepared to **catch** the **xalloc** exception before trying
to access the new object. To handle the catching of an exception you
must implement a **try {}** and **catch {}** pair of operations.


Listing 11-3
````````````

::

    
    //
    //  LINES.CPP - dynamically allocate space from the free store
    //  using try and catch for exceptions.  This will only work 
    //  with the most recent BorlandC++ v4.xx or Microsoft Visual C++
    //  v2.x or Microsoft Visual C++ v4.0 compilers.
    //                                    
    #include <iostream.h>
    #include <except.h>
    
    int main()
    {
    char **buf;
    int height, width, i;
    
        //
        //   acquire parameters concerning data to be input
        //
        cout << "Enter number of lines: ";
        cin >> height;
        cout << "Enter width of lines: " ;
        cin >> width;
        //
        //   allocate array of buffers for text
        //
        try       // test for exceptions
        {
             buf = new char *[height];
             for( i = 0; i < height; ++i )
                  buf[i] = new char[width];
        }
        catch( xalloc )      // enter this only if xalloc is
                            // thrown
        {
             cout << "ERROR: Could not allocate space."
                  << endl;
             return 1;
        }
        //
        //   get text from keyboard and save in array
        //
        for( i = 0; i < height; ++i )
        {
             cout << "Enter text: ";
             cin >> buf[i];
        }
        //
        //   move down on the screen
        //
        cout << "\n\n\n\n\n";
        //
        //   place text on the screen
        //
        for( i = 0; i < height; ++i )
             cout <<  buf[i] << endl;
        //
        //   return space to free store
        //
        for( i = 0; i < height; ++i )
             delete buf[i];
        delete buf;
        return 0;
    }


