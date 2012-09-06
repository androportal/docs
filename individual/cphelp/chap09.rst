


Chapter 9 Structures, Unions and Enumerated Types
=================================================
The C and C++ language allows for the composition of new data types.
It is essential that the student learn to compose new data types for
describing abstract data structures. This module shows the student how
to compose and use these new data types.


9.1 Structures
~~~~~~~~~~~~~~
A structure allows for the storage, in contiguous areas of memory, of
associated data items. A structure is a template for a new data type
whose format is defined by the programmer. A structure is one of a
group of language constructs that allow the programmer to compose
his/her own data types. The general form of a structure template is:


Fig. 9-1
~~~~~~~~

::

    
        struct [tag] 
        {
             members;
        }[variable];

Where **tag** is optional and only needs to be present if no
**variable** is present. The **members** are variables declared as any
C supported data type or composed data type. A structure is a set of
values that can be referenced collectively through a variable name.
The components of a structure are referred to as members of a
structure. A structure differs from an array in that members can be of
different data types. A structure is defined by creating a template. A
structure template does not occupy any memory space and does not have
an address, it is simply a description of a new data type. The name of
the structure is the **tag**. The **tag** is optional when a
**variable** is present and the **variable** is optional when the
**tag** is present. Each member-declaration has the form

::

    
        data-type member-declaration. 



9.2 Declaring structure variables
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Storage is allocated for the structure when a variable of that
structure type is declared. The following is an example of a structure
template.


Fig. 9-2
````````

::

    
        /* define template */
        struct Person
        {
             char ssn[12]
                  ,last_name[20]
                  ,first_name[16]
                  ,street[20]
                  ,city[20]
                  ,state[3]
                  ,zip_code[11]
                  ;
             int age;
             float height
                  ,weight
                  ;
             double salary;
        };                   

In the C language, a variable of the above data type would be declared
as follows:


Fig. 9-3
````````

::

    
        main()
        {
        /* declare variable of structure person type */
        struct Person frank;
             ...
        }

In the C++ language, the use of the keyword **struct** would not be
required in the declaration of a variable of the above type.


Fig. 9-4
````````

::

    
        main()
        {
        // declare variable of structure person type 
        Person frank;
             ...
        }

Each member of a structure is in a contiguous memory location in
relationship to its previous member and next member. To access
individual members of a structure, the dot operator is used to connect
a variable name with an element in the structure. For example

::

    
        frank.last_name

The composed name is treated as a variable of with the type of the
member variable.


Fig. 9-5
````````

::

#include int main() { struct Person ralph; printf( "\nEnter your first
name:" ); gets( ralph.first_name ); . . . printf( "\nEnter your age:"
); scanf( "%d", ); return 0; } or in C++


Fig. 9-6
````````
    
    
        #include 
        int main()
        {
        Person ralph;
    
             cout << "\nEnter your first name:";
             cin >> ralph.first_name;
                  .
                  .
                  .
             cout << "\nEnter your age:";
             cin >> ralph.age;
             return 0;
        }



9.3 Initializing Structures
~~~~~~~~~~~~~~~~~~~~~~~~~~~
Structures can be initialized when the template is created, if a
variable of the structure type is declared with the template creation.


Fig. 9-7
````````

::

    
        Person employ = {"Ralph",
                         "Jones",
                         "123 Main",
                         "Nowhere",
                         "NV",
                         "12345-9878"
                         30,
                         72,
                         165
                        };



9.4 Assignment of Structures
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Values are assigned to individual members of the structure by using
the structure variable name connected with the structure member name.

::

    
        employ.age = 35;

The **.** operator is used to provide the connection between variable
name and member name. When referencing a particular member of a
structure, the resulting type of that expression is that of the member
being referenced.

::

    
        strcpy(employ.street,"3188 Trinity Drive");

The value of one structure variable can be assigned to another
structure variable of the same type.

::

    
        Person employ, employ2;
    
             employ = employ2;

The above assignment is a valid statement. The data stored in
**employ2** would be stored in **employ**, because objects of like
type can be assigned to one another. Structure variables cannot be
compared through a relational operator. The following example attempts
to compare two structure variables of the same type.


Fig. 9-8
````````

::

    
        int main()
        {
        Person employee, staff;
             employee = staff;
             if( employee == staff )
                   ...

The above code is invalid, each member of the structure must be
compared in order to establish equality or non-equality.


9.5 Nested Structures
~~~~~~~~~~~~~~~~~~~~~
A structure variable can be a member of another structure template.


Fig. 9-9
````````

::

    
        struct Vital
        {
             int age
                  ,height
                  ,weight
                  ;
        };
     
        struct Home
        {
             char f_name[12]
                 ,l_name[20]
                 ,street[20]
                 ,city[20]
                 ,state[3]
                 ,zip_code[11]
                 ;
        };
    
        struct Person
        {
             Vital emp;
             Home place;
        } employ;

In order to access a member of one of the nested structures, the dot
operator is used until the lowest member is reached in the structure
hierarchy.


Fig. 9-10
`````````

::

    
        cout << "Enter your age: ";
        cin >> employ.emp.age;
    
        cout << "Enter your last name: ";
        cin >> employ.place.lname;



9.6 Arrays of Structures
~~~~~~~~~~~~~~~~~~~~~~~~
Like any other data type in C, a variable of a structure type can be
arrayed.


Fig. 9-11
`````````

::

    
        struct Person
        {
             Vital emp;
             Home place;
        } stats[100];

The above declaration would allow for the storage of 100 items of type
**people**. Any specific item could be referenced as:

::

    
        stats[indx].place.f_name
    
        stats[indx].emp.age

Notice **stats** is the arrayed item, and requires the array operator,
**[]**.


9.7 Passing Structures to Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Structures can be passed as an argument to a function simply by
writing the variable name in the argument list when calling the
function.


Fig. 9-12
`````````

::

    
        main()
        {
        void getData( Person );  // function prototype 
        Person employee;         
    
             getData(employee);
                  .
                  .
                  .
        }
        void getData( Person x )
        {
             cout << "Enter last name: ";
             cin >> x.l_name;
             .
             .
             .
        }

Just like any other argument, a structure is passed by value;
therefore, functions may not make permanent changes to the values of
members of the structure. A structure may be used as the return-type
of a function.


Fig 9-13
````````

::

    
        Person getData( Person newemp )
        {
                       ...
             return( newemp );
        }

The calling routine can store the structure data returned into a like
typed structure variable.


Fig 9-14
````````

::

    
        int main()
        {
        void getData( Person );
        Person newemp, employee;
             newemp = getData(employee);
                  ...
        }

If the function being called is to modify or change the data within
the structure, the address of the structure variable can be passed and
the called function can work with the structure members through a
pointer. This method is referred to as call by reference.


Fig. 9-15
`````````

::

    
        #include 
    
        main()
        {
        void getData( Person * );
        Person employ;
    
             getData(  );
    
        }
    
        void getData( Person *ptr )
        {
             cout << "Enter first name:";
             cin >> ptr->place.f_name;
             cout << "\nEnter last name:";
             cin >> ptr->place.l_name;
                       .
                       .
                       .
             cout << "\nEnter age:";
             cin >> ptr->person.age;
        }

Notice that the **->** operator is used when referencing a pointer to
a structure. Functions can also return pointers to structures.


9.8 Unions
~~~~~~~~~~
A union is an aggregate variable that can declare several data types,
but only store the value of one variable at any one time; each data
type shares the same area of memory. The declaration of a union is
similar to that of a structure:


Fig. 9-16
`````````

::

    
        union [union_tag]
        {
             data_type variable_1;
             data_type variable_2;
             data_type variable_3;
             .
             .
             .
        } {union_variable_name};

As with a structure, a **union_tag** is optional if a
**union_variable_name** is present. The compiler allocates only the
storage space of the largest data_type declared.


Fig. 9-17
`````````

::

    
        union Data
        {
             char str[6];
             int y;
             long z;
             float x;
             double t;
        } var;

The union variable **var** is given eight(8) bytes of storage; all the
elements start at the same address in memory; the compiler gives the
amount of storage needed by the largest data type, in this case
**double** which is eight bytes.


9.9 Accessing Members of a union
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
To access a member of a union the dot operator is used the same as
with structures.

::

    
        var.x = 123.45;

Unions passed to functions exactly as a structure would be passed.


9.10 Anonymous unions in C++
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Unions without a name can be defined anywhere a variable or field can
be defined. They allow sharing of memory storage among two or more
fields of the structure for economy of memory storage.


Fig. 9-18
`````````

::

    
        struct data-rec
        {
             char *last_name;
             char *first_name;
             int id_number;
             union
             {
                  float annual_salary;
                  float hourly_wage;
             };
        };

All members of a union require only as much memory storage as the
largest member. For the structure given above, storage for only one
floating point entity is required. The union members **annual_salary**
and **hourly_wage** are stored at the same memory address. Each
instance of a **data_rec** can only store one of these members. One
can access a member of an anonymous union as in the following:

::

    
        data_rec  my_record;
             cout << "My annual salary = "
                  << my_record.annual_salary 
                  << endl;



9.11 Bit Fields
~~~~~~~~~~~~~~~
With the use of **unions** and **structures** C can access individual
bits of a word or byte. Bit fields are required to be unsigned
integers. Bit fields are allowed to be declared in a structure that
includes other data types. When mapping a area of memory to the bit
level, it must be understood that hardware engineers number bits
differently than software engineers. For example, assume that there is
a one byte area of memory that is to be mapped to the bit level, a
hardware engineer would describe the one byte area as follows:


Fig. 9-19
`````````

::

    
    bit:  0    1    2    3    4    5    6    7
        +----+----+----+----+----+----+----+----+
        |    |    |    |    |    |    |    |    |
        +----+----+----+----+----+----+----+----+

but a software engineer would describe the area of memory as follows:


Fig. 9-20
`````````

::

    
    bit:  7    6    5    4    3    2    1    0
        +----+----+----+----+----+----+----+----+
        |    |    |    |    |    |    |    |    |
        +----+----+----+----+----+----+----+----+

As the programmer can see, a reference to bit number 2 would mean one
thing to a hardware person and an entirely different thing to a
software person. Most specifications for hardware are produced by
hardware engineers and the software to use that hardware is written by
software people, so over the years an understanding has been reached.
As an additional complication, the Intel family of processors used in
IBM type personal computers, uses a different arrangement for words of
memory than any other processor. With most computers a word of memory
has a **most significant byte (MSB)** and a **least significant byte
(LSB)**. On most processors a word of memory would look as follows:


Fig. 9-21
`````````

::

    
        |    Byte 1             |     Byte 0            |
        |15 14 13 12 11 10 9  8 |7  6  5  4  3  2  1  0 |  
        +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
        |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
        +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
        |    MSB                |     LSB               |

But with the Intel processor, which uses something called "Big-Endian"
and "Little-Endian" notation, the above word of storage will look as
follows:


Fig. 9-22
`````````

::

    
        |    Byte 0             |     Byte 1            |
        |7  6  5  4  3  2  1  0 |7  6  5  4  3  2  1  0 |  
        +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
        |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
        +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
        |    LSB                |     MSB               |

For an illustration, there is a word in memory on all MS-DOS machines
that is used to hold the status of keyboard toggles, such as **Caps
Lock**, **Insert**, and others. The following example shows a union
that is used to determine the status of those keyboard toggles.


Fig. 9-23
`````````

::

    
        #include 
        // address of segment and offset of 
        // keyboard control bits, byte address
        // 0017 and 0018 on IBM PC running MS-DOS
    
        #define BASE_ADDR   0x00400017 
        // layout of 16 bits of memory 
        union KeyBits 
        {        
             unsigned keys;      // everything together 
                           
             // Pg. 223, Peter Norton's 
             // "Inside the IBM PC".  
             // Must reverse order of bits in each byte 
    
             struct Bits 
             {
                  // byte 0 
                  unsigned right_shift    :1; // bit 7 
                  unsigned left_shift     :1; // bit 6 
                  unsigned ctrl_pressed   :1; // bit 5 
                  unsigned alt_pressed    :1; // bit 4 
                  unsigned scroll_lock    :1; // bit 3 
                  unsigned num_lock       :1; // bit 2 
                  unsigned caps_lock      :1; // bit 1 
                  unsigned ins            :1; // bit 0 
                  // byte 1 
                  unsigned                :1; // bit 7 
                  unsigned                :1; // bit 6 
                  unsigned pcjr_click     :1; // bit 5 
                  unsigned hold_state     :1; // bit 4 
                  unsigned scr_pressed    :1; // bit 3 
                  unsigned num_pressed    :1; // bit 2 
                  unsigned caps_pressed   :1; // bit 1 
                  unsigned ins_pressed    :1; // bit 0 
             } format; // structure variable 
        }; 
    
        void keyCtrl()
        {
        // use a long far pointer; 'far' 
        // allows a pointer to hold 
        // a 32-bit address, instead of 
        // normal or 'near' of 16-bits
        // this allows you to go indirectly 
        // and get value at address
        unsigned far *p;
        KeyBits keyWord;
             // 
             // initialize bits to off position
             //
             keyWord.keys = 0;
             //
             // establish pointer to absolute address
             //             
             p = (unsigned far *)BASE_ADDR;
             //
             // retrieve bit settings 
             //
             keyWord.keys = *p;
             // 
             // print those toggles that are on
             //
             cout << (keyWord.format.ins
                       ?"Ins ":"" )
                  << (keyWord.format.caps_lock
                       ?"Caps Lock ":"")
                  << (keyWord.format.num_lock
                       ?"Num Lock ":"" )
                  << (keyWord.format.scroll_lock
                       ?"Scroll Lock ":"")
                  << (keyWord.format.alt_pressed
                       ?"Alt Pressed":"")
                  << (keyWord.format.ctrl_pressed
                       ?"Ctrl Pressed":"")
                  << (keyWord.format.left_shift
                       ?"Left Shift Pressed":"")
                  << (keyWord.format.right_shift
                       ?"Right Shift Pressed":"")
                  << (keyWord.format.ins_pressed
                       ?"Insert":"")
                  << (keyWord.format.caps_pressed
                       ?"Caps":"")
                  << (keyWord.format.num_pressed
                       ?"NumLck":"")
                  << (keyWord.format.scr_pressed
                       ?"ScrollLck":"")
                  ;
        }// end of keyCtrl()

Notice that for bit positions that have no meaning there is no element
name, but there must be a length of the number of bits to skip.


9.12 Byte Alignment
~~~~~~~~~~~~~~~~~~~
Bit field with a length of zero (0) causes the next bit to be aligned
at the next byte in memory. A bit mapping cannot map more than one
word of memory. The length of a word will depend upon the machine the
program is running upon.


Fig. 9-24
`````````

::

    
        struct Data
        {
             unsigned a     :1;
             unsigned b     :3;
             unsigned x     :0;
             unsigned y     :1;
             unsigned z     :2;
        } bitfields;

**bitfields.x** causes the next bit field, **bitfields.y** to be
positioned at the start of the next byte in memory.


9.13 Enumerated Data Types
~~~~~~~~~~~~~~~~~~~~~~~~~~
Enumerated types provide the facility to specify the possible values
of a variable by meaningful symbolic names. The general format for
defining an enumerated type is

::

    
        enum tag { value1, value2, ..., valueN };

where tag is an identifier that names the enumerated type, and value1,
value2, ..., valueN are identifiers, called enumerated constants. For
example, the declaration

::

    
        enum Days { Sunday, Monday, Tuesday, Wednesday, Thursday, 
                  Friday, Saturday };

defines an enumerated type **Days** whose list of possible values are
**Sunday**, **Monday**, **Tuesday**, **Wednesday**, **Thursday**,
**Friday**, and **Saturday**. Each of the values in the enumerated
type has an ordinal value associated with it. The default values start
at **0** and proceed in increments of **1** until all values in the
list have an ordinal value. In the list of values for **Days**, the
default ordinal values are **Sunday** has **0**, **Monday** has **1**,
**Tuesday** has **2**, **Wednesday** has **3**, **Thursday** has
**4**, **Friday** has **5**, and **Saturday** has **6**. An integer
value may explicitly be associated with an enumeration constant by
following it with **=** and a constant expression of integral type.
Subsequent enumeration constants without explicit associations are
assigned integer values one greater than the value associated with the
previous enumerated constant. For example, the declaration

::

    
        enum Days { Sunday=6, Monday, Tuesday, Wednesday=2, 
                  Thursday, Friday, Saturday};

results in the value **6** being associated with **Sunday**, **7**
with **Monday**, **8** with **Tuesday**, **2** with **Wednesday**,
**3** with **Thursday**, **4** with **Friday**, and **5** with
**Saturday**. Any signed integer value may be associated with an
enumeration constant. The same integer value may be associated with
two different enumerated constants in the same type declaration. An
enumerated constant must be unique with respect to other enumerated
constants and variables within the same name scope. Thus, in the
presence of the declaration of **days**, the declaration

::

    
        enum DaysOff { Saturday, Sunday };

is illegal because the identifiers **Saturday** and **Sunday** have
already been defined to be enumerated constant values of **days**.
Similarly, the variable declaration

::

    
        float Monday;

following the declaration of **Days**, is also illegal. Variables may
be declared to be of an enumerated type in the same declaration
containing the enumerated type definition, or in subsequent
declarations of the form

::

    
        enum tag variablelist;

Thus, **weekday** and **caldays** may be declared to be of type **enum
days**

::

    
        enum Days { Sunday, Monday, Tuesday, Wednesday, Thursday, 
                  Friday, Saturday }  weekday, caldays;
    
    or
    
        enum Days weekday, caldays;

The tag may be omitted from the declaration of an enumerated type if
all the variables of this type have been declared at the same time.
Thus, the programmer may write

::

    
        enum  { Sunday, Monday, Tuesday, Wednesday, Thursday, 
                  Friday, Saturday }  weekday, caldays;

but due to the omission of the enumerated tag, the programmer may not
subsequently declare another variable whose type is the same as that
of **weekday** or **caldays**. A variable of a particular enumerated
type can be assigned enumerated constants specified in the definition
of the enumeration type. For example, the programmer may write

::

    
        weekday = Tuesday;

The programmer may also compare values as in

::

    
        if( weekday == caldays )

All enumerated types are treated as integer types, and the type of
enumerated constants is treated as **int**. However, the programmer
should differentiate between enumerated and integer types as a matter
of good programming practice and use casts if they have to be mixed,
as show in the following example:

::

typedef enum { Sunday, Monday, Tuesday, Wednesday, Thursday, Friday,
Saturday } DAYS; DAYS nextday( DAYS this ) { return( DAYS )( (int)this
+1) % 7); }


Listing 9-1
```````````
    
    /*
    *   Example program using enumerated variables
    */
    #include 
    #include 
    /*
    *   employee categories
    */
    enum empcats {management, research, clerical, sales};
    /*
    *   employee data
    */
    struct empdata
    {
        char name[30];
        float salary;
        enum empcats category;
    }
    
    int main()
    {
    struct empdata employee;
        /*
        *    establish an employee
        */
        strcpy( employee.name, "Benjamin Franklin" );
        employee.salary = 118.50;
        employee.category = research;
        /*
        *    show the employee data
        */
        printf("\nName = %s", employee.name );
        printf("\nSalary = %6.2f", employee.salary );
        printf("\nCategory = %d", employee.category );
    
        if( employee.category == clerical )
             printf( "\nEmployee category is clerical.\n");
        else
             printf("\nEmployee category is not clerical.\n");
        return 0;
    }



9.14 Enumerated Types in C++
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The name of an enumeration is a type name. It is not necessary in C++
to use the qualifier **enum** in front of the enumerated type name and
as a result this streamlines the notation. In ANSI C, the list of
constants appearing in an **enum** are known throughout the file. C++
considers the constants in an **enum** to be local to a class or a
struct and known only to member and friend functions of the class.


Fig. 9-25
`````````

::

    
        struct SWindow
        {
             enum Operation {refresh, remove, clear, scroll};
             void execute( Operation op);
             .
             .
             .
        };
    
        struct SDocument
        {
             enum Document {brochure, pamphlet, report, book };
             void setDocument( Document type );
             .
             .
             .
        };
    
        int main()
        {
             SWindow win;
             win.execute( SWindow::scroll );
    
             SDocument doc;
             doc.setDocument( SDocument::scroll );
             .
             .
             .
        }


Notice the use of the **::** operator, the scope resolution operator.
This operator associates the structure with the enumerated value
defined within that structure. Although **scroll** is defined as a
value in two enumerated types in two different structures by using the
scope resolution operator there is no difficulty for the compiler in
determinining which **scroll** is being referred in each instance.


9.15 Structures as Abstract Data Types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The concept of **struct** is augmented in C++ to allow functions to be
members. The function declaration is included in the structure
declaration and is invoked by using access methods for structure
members. The idea is that the functionality required by the **struct**
data type should be directly included in the **struct** declaration.
This improves the encapsulation of the Abstract Data Type (ADT) by
packaging its operations together with its data representation. In
traditional OOP terminology, a member function is a method. The
following is an example of implementing a stack as an Abstract Data
Type (ADT) using a **struct**


Listing 9-2:
````````````

::

    
    //
    //  stack.cpp - implementation with constructor and destructor
    //
    #include 
    
    enum BOOLEAN {FALSE, TRUE};
    
    const int MAXSTACK = 100;
    
    struct Stack
    {
    private:
        char *s;
        int max_len;
        int top;
        enum { EMPTY = 0, FULL = MAXSTACK -1 };
    public:
        Stack()
        {
             max_len = MAXSTACK;
             s = new char[max_len];
             top = EMPTY;
        }
        Stack( int size )
        {
             s = new char[size];
             max_len = size;
             top = EMPTY;
        }
        ~Stack()
        {
             delete s;
        }
        void reset( void )
        {
             top = EMPTY;
        }
        void push( char c )
        {
             top++;
             s[top] = c;
        }
        char pop( void )
        {
             return (s[top--]);
        }
        char top_of( void )
        {
             return (s[top]);
        }
        BOOLEAN empty( void )
        {
             return ((top == EMPTY) ? TRUE : FALSE );
        }
        BOOLEAN full( void )
        {
             return ( (top == max_len - 1) ? TRUE : FALSE );
        }
    };
    
    int main()
    {
    Stack z(50);
    Stack t;
    char *str = "My name is Don Knuth!";
    char *str2 = "My dog has fleas and needs a bath.";
    int i = 0;
    
        cout << str << endl;
        z.reset();
        //   push data on the stack
        while( str[i] )
             if( !z.full() )
                  z.push( str[i++] );
        //   pop characters from the stack and print
        while( !z.empty() )
             cout << z.pop();
        cout << endl;
    
        cout << str2 << endl;
        i = 0;
        while( str2[i] )
             if( !t.full() )
                  t.push( str2[i++] );
        while( !t.empty() )
             cout << t.pop();
        cout << endl;
        return 0;
    }

The member functions are written much as other functions. One
difference is that they can use the data member names as they are.
Thus the member functions in **Stack** use **top** and **s** in an
unqualified manner. When invoked on a particular object of type
**Stack**, they act on the specified member in that object. In OOP
terminology an invocation is called message passing. In these terms a
stack object receiving the message "pop" executes the pop method. The
following example illustrates these ideas. If two **Stack** variables

::

    
        Stack data, operands;

are declared, then

::

    
        data.reset();
        operands.reset();

invoke the member function **reset**, which has the effect of setting
both **data.top** and **operands.top** to EMPTY. If a pointer to
**Stack**

::

    
        Stack *ptr_operands = 

is declared, then

::

    
        ptr_operands->push('A');

invokes the member function **push**, which has the effect of
incrementing **operands.top** and setting **operands.s[top]** to 'A'.
Member functions that are defined within the struct are implicitly
inline. As a rule only short, heavily used member functions should be
defined within the struct. To define a member function outside the
struct, the scope resolution operator **::** is used. To illustrate
this, the definition of **push** will be changed to a function
prototype within **struct Stack**. The implementation of the **push**
method will be defined outside the scope of the **struct Stack** which
requires using the scope resolution operator to associate **push**
with the **struct Stack**. In this case the function is not implicitly
inline.


Fig. 9-26
`````````

::

    
    struct Stack
    {
    private:
        char *s;
        int max_len;
        int top;
        enum { EMPTY = 0, FULL = MAXSTACK -1 };
    public:
        Stack()
        {
             max_len = MAXSTACK;
             s = new char[max_len];
             top = EMPTY;
        }
        Stack( int size )
        {
             s = new char[size];
             max_len = size;
             top = EMPTY;
        }
        ~Stack()
        {
             delete s;
        }
        void reset( void )
        {
             top = EMPTY;
        }
        void push( char c );
        .
        .
        .
    };
    
    void Stack::push( char c )
    {
        top++;
        s[top] = c;
    }

The scope resolution operator allows member functions from the
different struct types to have the same names. In this case, which
member function is invoked depends on the type of object it acts on.
Member functions within the same struct can be overloaded. Consider
adding to the data type **Stack** a pop operation that has an integer
parameter that pops the stack that many times before returning a
value. It could be added as the following function prototype within
the struct:


Fig. 9-27
`````````

::

    
    struct Stack
    {
        ...
        char pop( int n );
        ...
    };
    
    char Stack::pop(int n )
    {
        while( n-- > 0 )
             top--;
        return( s[top--] );
    }

The definition that is invoked depends on the actual arguments to
**pop**.

::

    
        data.pop();         // invokes standard pop
        data.pop(5);        // invokes repeated pop

The **inline** specification can be used explicitly with member
functions defined at file scope. This avoids having to clutter the
struct definition with function bodies.


Fig. 9-28
`````````

::

    
    struct Stack
    {
        ...
        void reset();
        void push( char c );
        ...
    };
    
    inline void Stack::reset()
    {
        top = EMPTY;
    }
    inline void Stack::push( char c )
    {
        s[++top} = c;
    }

The grouping of operations with data emphasizes their "objectness".
Objects have a description and behavior. The data members hold the
description or attributes of an object and the member functions
implement the behavior of an object. The concept of struct is
augmented in C++ to allow functions to have **public**, **private**,
and **protected** members. For now the **protected** keyword is a
synonym for **private**. Its real use will be shown when the topic of
class inheritance is discussed. Inside a struct the use of the keyword
**private** followed by a colon restricts the access of the members
that follow this construct. The **private** members can be used by
only a few categories of functions, whose privileges included access
to these members. These functions include the member functions of the
struct. In the above complete implementation of **Stack**, we can see
that the data members **s**, **max_len**, and **top** are in the
**private** section of the **Stack**. By placing data members within a
**private** section only member functions of the **Stack** can modify
the data members. For example, **top** can be modified by the member
function **reset** but cannot be accessed directly by the **main()**
function. The **Stack** has a private part that contains its data
description and a public part that contains member functions to
implement stack operations. It is useful to think of the private part
as restricted to the implementor's use and the public part as an
interface specification that clients may use. At a later time
implementor could change the private part without affecting the
correctness of a client's use of the stack type. Hiding data is an
important component of OOP. It allows for more easily debugged and
maintained code because errors and modifications are localized. Client
programs need only be aware of the type's interface specification. As
a rule of thumb, data members should be placed in the **private** part
of a structure and accessed using member functions. Such an accessing
discipline ensures that a client cannot tamper with or misuse the
implemented ADT.


9.16 Constructors and Destructors
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Note that the **Stack** structure has two member functions named
**Stack** and another named **~Stack**. The two member functions named
**Stack** are called constructors. The member function named
**~Stack** is called the destructor of the class. The C++ compiler
calls a constructor, if one is defined, whenever an instance of a
struct or class is created. In C terms, when an identifier of type
**Stack** is declared a constructor is automatically called. The
programmer can use the constructor to handle any specific requirements
for initializing objects of a type. For example, if an object needs
extra storage, the programmer can allocate memory in the constructor.
In the **Stack** class, the constructor calls **new** to allocate
space for the storage of data on the stack. Note that the constructor
function always has the same name as that of the struct or class.
Also, there are two functions with the name **Stack**. The constructor
has been overloaded so that there is more than one way to initialize
an instance of a **Stack**. Which constructor is call will depend upon
how the instance variable of the **Stack** type is declared. For
example

::

    
        Stack mystack;

will cause the constructor function **Stack()**, which is the default
constructor, to be called. But, with a declaration such as

::

    
        Stack mystack(50);

the constructor function **Stack( int size )** will be called. Also,
notice that constructors do can return any values. Constructors and
destructors cannot return a value. The programmer can also define a
destructor function for a struct or class. There can be one and only
one destructor for a struct or class. A destructor is called if there
is any need to clean up after an object is destroyed ( for example, if
the programmer wants to free memory allocated in the constructor). The
C++ compiler generates code that calls the destructor function of a
structure or class whenever an instance of that struct or class goes
out of scope. The destructor has the same name as the type except for
a tilde ( **~**) prefix. Thus, the destructor function for the struct
**Stack** is **~Stack()**. A destructor is not called unless an
explicit or implicit **return** statement is executed. If no explicit
**return** statement is executed in a function that an instance of a
structure or class, then the implicit **return** generated by
encountering the closing curly brace of the function will cause the
destructor to be called. Using the **exit()** function to terminate a
program is discouraged because it exits the program immediately and
does not allow for the class or structure destructors to be called.


9.17 What Is Object-Oriented Programming?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Up until now the book has addressed syntax of the C and C++ language,
because until now both languages share the same syntax, except for a
few minor exceptions. Now, a major difference is to be addressed. How
a program is actually assembled from a structured oriented approach
and from an object oriented approach. The topic of what makes a
program object oriented must be understood before an attempt is made
to develop such an application.
The term object-oriented programming (OOP) is widely used, but experts
cannot seem to agree on its exact definition. However, most experts
agree that OOP involves defining abstract data types (ADT) that
represent complex real-world or abstract objects and organizing the
program around the collection of ADTs with an eye toward exploiting
their common features. The term data abstraction refers to the process
of defining ADTs. Object- oriented programming also involves the use
of inheritance and polymorphism as the mechanisms that enable the
programmer to take advantage of the common characteristics of the ADTs
- the objects in the OOP.
OOP is only a method of designing and implementing software. Use of
object-oriented techniques does not impart anything to a finished
software product that the user can see. However, as a programmer
implementing the software, you can gain significant advantages by
using object-oriented methods, especially in large software projects.
Because OOP enables the programmer to remain close to the conceptual,
higher-level model of the real-world problem he/she is trying to
solve, the programmer can manage the complexity better than with
approaches that force the programmer to map the problem to fit the
features of the language. The programmer can take advantage of the
modularity of objects and implement the program in relatively
independent units that are easier to maintain and extend. The
programmer can also share code among objects through inheritance and
take advantage of the commonality among objects that are inherited
with polymorphism. OOP has nothing to do with any programming
language, although a programming language that supports OOP makes it
easier to implement the object-oriented techniques, the programmer can
use objects in C programs, assembly language programs or BASIC
programs. OOP is more a way of conceptualizing the problem and of
implementing the code.


9.18 Procedure-Oriented Programming
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Before the programmer gets into OOP, take a look at conventional
procedure-oriented programming in a language such as C. Using the
procedure-oriented approach, the programmer views a problem as a
sequence of things to do. The programmer organizes the related data
items into **C structs **and write the necessary functions
(procedures) to manipulate the data and in the process, complete the
sequence of tasks that solve the problem. Although the data may be
organized into structures, the primary focus is on the functions. Each
C function transforms data in some way. For example, the programmer
may have a function that prompts for and reads values into the members
of a structure, another that computes the mean of a set of numbers,
and one that prints the values held in a structure. The programmer
does not have to look far to find examples of this kind of programming
- C function libraries are implemented this way. Each function in a
library performs a well-defined operation on its input arguments and
returns the transformed data as a return value. Arguments may be
pointers to data that the function directly alters or the function may
have the effect of displaying graphics on a video monitor. For a
concrete illustration of procedure-oriented programming, consider the
following example. This is a classic example used in many C++ books
for illustrating the advantages of OOP over structured methods.
Suppose the programmer wants to write a computer program that handles
geometric shapes such as rectangles and circles. The program should be
able to draw any shape and compute its area. Here is a conventional
approach to writing this program.


Listing 9-3
```````````

::

    
    /***************************************************************
    *   File:     cshapes.h
    *
    *   Defines data types for manipulating geometric shapes in C.
    *
    ****************************************************************/
    
    #ifndef  CSHAPES_H      /* Used to avid including file twice */
    #define  CSHAPES_H
    
    #define  PI               3.14156
    
    /*  Define the types of shapes being supported */
    
    typedef
    enum tagSHAPE_TYPE
    {
        A_CIRCLE
        ,A_RECTANGLE
    } SHAPE_TYPE;
    
    /*  Define each individual shape's data structure */
    
    typedef 
    struct tagCIRCLE_SHAPE
    {
        SHAPE_TYPE     type;     /* type of shape (THE_CIRCLE) */
        double         x, y;     /* coordinates of center */
        double         radius;   /* radius of circle */
    }   CIRCLE_SHAPE;
    
    typedef 
    struct tagRECTANGLE_SHAPE
    {
        SHAPE_TYPE     type;     /* type of shape (THE_RECTANGLE) */
        double         x1, y1;   /* coordinates of the corners  */
        double         x2, y2;
    }   RECTANGLE_SHAPE;
    
    /*  Now define a union of the two structures */
    
    typedef 
    union SHAPE
    {
        SHAPE_TYPE          type;          /* type of shape */
        CIRCLE_SHAPE        circle;        /* data for circle */
        RECTANGLE_SHAPE     rectangle;     /* data for rectangle */
    }   SHAPE;
    
    /*  function prototypes */
    
    double   compute_area( SHAPE *p_shape );
    void     draw_shape( SHAPE *p_shape );
    
    #endif   /* #ifndef CSHAPES_H */
    
    /***************************************************************
    *   File :    cshapes.c
    *
    *   C functions to operate on geometric shapes.
    *
    ****************************************************************/
    
    #include 
    #include 
    #include "cshapes.h"
    
    /*
    *   compute the area of the shape and return the area
    */
    double compute_area ( SHAPE *pShape )
    {
    double area;
        /*
        *    handle each shape according to its type
        */
        switch( pShape->type )
        {
             case A_CIRCLE:
                  area = PI * pShape->circle.radius
                            * pShape->circle.radius;
                  break;
    
             case A_RECTANGLE:
                  area = fabs( (pShape->rectangle.x2 
                                 - pShape->rectangle.x1)
                            *  (pShape->rectangle.y2 
                                 - pShape->rectangle.y1)
                            );
                  break;
    
             default:
                  printf("Unknown shape\n");
        }
        return area;
    }
    /*
    *   draw a shape (print information about shape)
    */
    void draw( SHAPE *pShape )
    {
        /*
        *    handle each shape according to its type 
        */
        printf( "Draw: " );
        switch( pShape->type )
        {
             case A_CIRCLE:
                  printf( "Circle of radius %f at (%f, %f)\n",
                       pShape->circle.radius,
                       pShape->circle.x, pShape->circle.y);
                  break;
    
             case A_RECTANGLE:
                  printf( "Rectangle with corners:"
                       "(%f, %f) at (%f, %f )\n",
                       pShape->rectangle.x1,
                       pShape->rectangle.y1,
                       pShape->rectangle.x2,
                       pShape->rectangle.y2,
    
                  break;
    
             default:
                  printf("Unknown shape\n");
        }
    }
    /*
    *   program to test shape-handling functions 
    */
    int main()
    {
    int i;
    SHAPE s[2];
        /*
        *    initialize the shapes
        *
        *    A 10 x 40 rectangle with upper left corner at 
        *    (10, 10)
        */
        s[0].type = A_RECTANGLE;
        s[0].rectangle.x1 = 10.0;
        s[0].rectangle.y1 = 10.0;
        s[0].rectangle.x2 = 20.0;
        s[0].rectangle.y2 = 50.0;
        /*
        *    A circle at (12.0, 40.0) with radius of 10.0 
        */
        s[1].type = A_CIRCLE;
        s[1].circle.x = 40.0;
        s[1].circle.y = 12.0;
        s[1].circle.radius = 10.0;
        /*
        *    compute areas 
        */
        for( i = 0; i < 2; ++i )
             printf( "Area of shape[%d] = %f\n", i,
                  compute_area( [i] ) );
        /*
        *    draw shapes
        */
        for( i = 0; i < 2; ++i )
             draw( [i] ) );
        return 0;
    }



9.19 Adding a New Shape
~~~~~~~~~~~~~~~~~~~~~~~
To see one of the problems of conventional procedure-oriented
programming consider what happens when the programmer wants the
program to handle another type of geometric shape - say, triangles.

::

1. Define a data structure for triangles. typedef enum tagSHAPE_TYPE {
A_CIRCLE ,A_RECTANGLE ,A_TRIANGLE } SHAPE_TYPE; typedef struct
TRIANGLE_SHAPE { SHAPE_TYPE type; /* type of shape (T_TRIANGLE) */
double x1, y1; /* coordinates of the corners */ double x2, y2; double
x3, y3; } TRIANGLE_SHAPE; 2. Add a new member to the SHAPE union.
typedef union SHAPE { SHAPE_TYPE type; /* type of shape */
CIRCLE_SHAPE circle; /* data for circle */ RECTANGLE_SHAPE
rectangle;/* data for rectangle */ TRIANGLE_SHAPE triangle; /* data
for triangle */ } SHAPE; 3. In the cshapes.c file, add code in the
functions **compute_area()** and **draw()** to handle triangles.


Fig. 9-29
`````````
/* * compute the area of the shape and return the area */ double
compute_area ( SHAPE *pShape ) { double area; /* * handle each shape
according to its type */ switch( pShape->type ) { case A_CIRCLE: area
= PI * pShape->circle.radius * pShape->circle.radius; break; case
A_RECTANGLE: area = fabs( (pShape->rectangle.x2 -
pShape->rectangle.x1) * (pShape->rectangle.y2 - pShape->rectangle.y1)
); break; case A_TRIANGLE: { double x21, y21, x31, y31; x21 =
pShape->triangle.x2 - pShape->triangle.x1; y21 = pShape->triangle.y2 -
pShape->triangle.y1; x31 = pShape->triangle.x3 - pShape->triangle.x1;
y31 = pShape->triangle.y3 - pShape->triangle.y1; area = fabs ( y21 *
x31 - x21 * y31 ) / 2.0; } break; default: printf("Unknown shape\n");
} return area; } /* * draw a shape (print information about shape) */
void draw( SHAPE *pShape ) { /* * handle each shape according to its
type */ printf( "Draw: " ); switch( pShape->type ) { case A_CIRCLE:
printf( "Circle of radius %f at (%f, %f)\n", pShape->circle.radius,
pShape->circle.x, pShape->circle.y); break; case A_RECTANGLE: printf(
"Rectangle with corners:" "(%f, %f) at (%f, %f )\n",
pShape->rectangle.x1, pShape->rectangle.y1, pShape->rectangle.x2,
pShape->rectangle.y2, break; case A_TRIANGLE: printf( "Triangle with
vertices: " "(%f, %f) (%f, %f) (%f, %f)\n", pShape->triangle.x1,
pShape->triangle.y1 pShape->triangle.x2, pShape->triangle.y2
pShape->triangle.x3, pShape->triangle.y3 ); break; default:
printf("Unknown shape\n"); } } 4. The programmer can now test
operations on the triangle shape.


Fig. 9-30
`````````
    
    /*
    *   program to test shape-handling functions 
    */
    int main()
    {
    int i;
    SHAPE s[3];
        /*
        *    initialize the shapes
        *
        *    A 10 x 40 rectangle with upper left corner at 
        *    (10, 10)
        */
        s[0].type = A_RECTANGLE;
        s[0].rectangle.x1 = 10.0;
        s[0].rectangle.y1 = 10.0;
        s[0].rectangle.x2 = 20.0;
        s[0].rectangle.y2 = 50.0;
        /*
        *    A circle at (12.0, 40.0) with radius of 10.0 
        */
        s[1].type = A_CIRCLE;
        s[1].circle.x = 40.0;
        s[1].circle.y = 12.0;
        s[1].circle.radius = 10.0;
        /*
        *    A triangle at (20, 5), (20, 40), and (5, 20)
        */
        s[2].type = A_TRIANGLE;
        s[2].triangle.x1 = 5.0
        s[2].triangle.y1 = 20.0
        s[2].triangle.x2 = 40.0
        s[2].triangle.y2 = 20.0
        s[2].triangle.x3 = 20.0
        s[2].triangle.y3 = 5.0
        /*
        *    compute areas 
        */
        for( i = 0; i < 3; ++i )
             printf( "Area of shape[%d] = %f\n", i,
                  compute_area( [i] ) );
        /*
        *    draw shapes
        */
        for( i = 0; i < 3; ++i )
             draw( [i] ) );
        return 0;
    }


The reason for going through this exercise is to point out the types
of changes the programmer has to make when a new data type - a new
object - has to be added to an existing program written in
conventional procedure-oriented style. Notice that the programmer has
to edit working code - the switch statements in the **compute_area**
and **draw** functions - when he/she wants to handle triangles in
addition to the rectangles and circles that the program was originally
designed to accept. If this were a realistic program with many files,
a change such as this would have required the programmer to edit
switch statements in most of the files.
The object-oriented approach avoids this problem by keeping data
structures together with functions that operate on them. This approach
effectively localizes the changes that become necessary when the
programmer decides to add a new object to the program.


9.20 OOP Terminology
~~~~~~~~~~~~~~~~~~~~

First the terminology of object-oriented programming needs to be
defined. The following terms are required knowledge when doing object-
oriented programming.
**Data Abstraction:** The process of defining a data type, often
called an abstract data type (ADT), together with the principle of
data hiding. The definition of an ADT involves specifying the internal
representation of the ADT's data as well as the functions to be used
by others to manipulate the ADT. Data hiding ensures that the internal
structure of the ADT can be altered without any fear of breaking the
programs that call the functions provided for operations on the ADT.
**Method:** A function by any other name. A method is code bound to an
object. The code provides an interface for messages requesting an
operation and a means to perform the requested operation.
**Object:** A conceptual entity, implemented in software, which has
distinct boundaries and contains both data and code. There are two
types of code in an object - methods, which transfer data across the
object's boundaries, and internal functions, which provide private
services to the object.
**Class:** A class is the template from which an object is derived. It
defines what data, functions and methods can be bound to the object.
An object is formed by creating an instance of the class and filling
in the blanks.
**Inheritance:** This is the ability to derive a new class from an
existing one. The child class can be a sub or super set of the parent.
Multiple Inheritance is the ability to derive a new class from more
than one parent class.
**Polymorphism:** Polymorphism is when two objects bind a different
method but access it by the same name. The classic example is to
create two classes, car and boat. An object from either class can
perform an operation "Move" but the method which carries out the
operation is different. The use of the same command to generate
similar effects using different code is polymorphism.
**Information Hiding:** Information hiding denies outside entities
direct access to the object's private data and functions. Instead it
forces outsiders to access the data in a controlled fashion via the
object's methods. As with some government agencies, if the programmer
do not need to know, then knowing will gum the works.
**Messaging:** The act of communicating with an object to get
something done. It consists of invoking a method, supplying that
method with the information it requires, and receiving a reply from
the method. Clearly, messaging can be something as simple as a
function call.
