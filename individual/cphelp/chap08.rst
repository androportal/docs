


Chapter 8 Pointers
==================
The purpose of this chapter is to expose the student to the use of
pointer data types in the C and C++ language. Pointers are the most
advanced feature of the C/C++ programming language and serve to set
the language apart from other languages.


8.1 What is a pointer?
~~~~~~~~~~~~~~~~~~~~~~
A pointer provides a way of accessing a variable without referring to
the variable directly. The mechanism used for this is the address of
the variable. A program statement can refer to a variable indirectly
using the address of the variable as a sort of post office box. A
pointer is a variable that can only hold a memory address.


8.2 Why are pointers used?
~~~~~~~~~~~~~~~~~~~~~~~~~~
Pointers can be used to:

#. return more than one value from a function
#. pass arrays and strings more conveniently from one function to
another
#. manipulate arrays more easily by moving pointers to them (or to
parts of them), instead of moving the arrays themselves
#. create complex data structures, such as linked lists and binary
trees, where one data structure must contain references to other data
structures
#. communicate information about memory, as in the function malloc()
and the operator new, which returns the location of free memory by
using a pointer
#. pointer notation compiles into faster, more efficient code than,
   for example, array notation



8.3 Pointer Operators
~~~~~~~~~~~~~~~~~~~~~
There are two operators that are uniquely associated with pointers.
These are:

::

    
         **&**    => retrieves the memory address of the operand
    
         *****    => retrieves the value stored at the address
                  held in the pointer



8.4 Declaring a Pointer Variable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
It must be remembered that a pointer is a data type. An example of a
pointer declaration would be:

::

    
        char *ptr;

The above declaration should be evaluated as: **ptr** is a pointer to
**char** type data. **char** is not the data type of **ptr**. **ptr**
is an identifier of type pointer and **char** is a modifier that is
used to indicate what type of data is at the memory address that
**ptr** is holding. Pointers are variables that hold memory addresses.
At the memory address held in a pointer is a value, this value has a
data type of one of the C data types or a constructed data type. In
declaring a pointer variable, the programmer is actually declaring a
variable that holds a memory address that points to a specific type of
data value. Pointer type variables on most machines are **unsigned
int** type items; so the address held in a pointer must fit in an
**unsigned ** **int** field. Depending upon the machine architecture,
the size of a pointer will range from being a 16-bit field on the IBM
PC class of machine, to a 64-bit field on a Cray supercomputer.

::

    
        int *a;
    
         **a** is a pointer type variable that points to  **int**
        type data
    
        float *t;
    
         **t** is a pointer type variable that points to
         **float** type data

Pointers can be initialized when they are declared.

::

    
        char *myname="John Doe";
    
        int x = 10;
        int *ptr = 

In the above example, **myname** is assigned the address of where the
compiler stored the string constant "John Doe". The pointer **ptr** is
assigned the address of the integer variable **x**. Pointers must hold
addresses that fall within the boundaries of the program. Those
addresses can be that of other variables or identifiers that are
declared within the program or the addresses can be obtained from the
heap or free store that is associated with the program. But a pointer
must not be used until it is assigned a meaningful address. To use a
pointer that has not been initialized properly will cause
unpredictable results. Sometimes the program will appear to run
correctly but when the program terminates the message 'Null Pointer
Assignment' will be displayed. This message is produced by the close-
out routine of the program telling the programmer that the program is
using an uninitialized pointer. In other cases, the use of an
uninitialized pointer will result in a "Bus Error" or a "Memory Fault"
runtime error. No matter what the result, the use of an uninitialized
pointer is extremely dangerous, on PC type systems especially, and
difficult to track down.


8.5 Pointers and Passing Arguments
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Functions usually return only one value and when arguments are passed
by value, the called function cannot alter the values passed and have
those changes reflected in the calling function. Pointers allow the
programmer to "return" more than one value by allowing the arguments
to be passed by reference which allows the function to alter the
values pointed to and thus "return" more than one value from a
function.


Listing 8-1
```````````

::

    
        #include <stdio.h>
        int main()
        {
        int x = 4, y = 10;
    
             swap(x,y);
             printf("X=%d  Y=%d",x,y);
             return 0;
        }
    
        int swap(int a,int b)
        {
        int temp;
    
             temp = a;
             a = b;
             b = temp;
        }

The result of running the above example would be:

::

    
        X=4  Y=10

The result prints the original values stored in **x** and **y**. The
variables **a**, **b**, and **temp** are local to **swap()** and their
values have no effect on the original variables. With the use of
pointers and passing by reference, the function can affect the
original variables and thus return more than the single value allowed
thru the **return** statement.


Listing 8-2
```````````

::

    
        #include <stdio.h>
        int main()
        {
        int x = 4, y = 10;
    
             swap( ,  );
             printf("X=%d  Y=%d",x,y);
             return 0;
        }
    
        int swap(int *a, int *b)
        {
        int temp;
             temp = *a;
             *a = *b;
             *b = temp;
        }

The result of running the above example would be:

::

    
        X=10  Y=4

The values have been exchanged by the function **swap()**. Within the
**main()** function the **&** operator causes the address of arguments
**x** and **y** to be passed in the call to **swap()**. In the
**swap()** function header, the addresses being passed from the
calling function are received in pointer type variables ( **int **
***a**, **int *b**). Within the **swap()** function body, the *****
operator is used to retrieve values held at the addresses that were
passed. The following example attempts to demonstrate how identifiers
or variables are assigned locations in memory and how values are
stored in those locations. All addressing in the following example is
assumed to be on a 16-bit machine.


Fig 8-1:
````````

::

    
                                      variable  memory    value
                                      name      address 
        int main()            
        {
        void swap( int *, int *);
        int 
             x = 4                    x         2000      4
             ,y = 10                  y         2002      10
             ;   
             /* pass addresses */
             swap( ,  );   
             return 0;
        }
    
        void 
        swap(int *a, int *b)          a         3000      2000
                                      b         3002      2002
        {
        int temp;                     temp      4000      0
    
             temp = *a;               temp      4000      4
             *a = *b;                 *a        3000      10
             *b = temp;               *b        3002      4
        }

In the above code, the addresses of **x** and **y** are passed to the
function **swap()**. The arguments of the **swap()** function, **int
*a** and **int *b** are pointers to integer type data. These pointers
receive the addresses of **x** and **y** respectively that are passed
in the call to **swap()**. Within the function **swap()**, a local
variable **temp** is declared. The pointer **a** is dereferenced,
meaning that the value at the address held in **a** is retrieved. This
value is stored into **temp**. Then the value at the address held in
**b** is retrieved and assigned to the value at the address held in
**a**, thus exchanging values. The final statement in the function
completes the exchange of values. Notice that the function does not
return a value because of the **void** return type.


8.6 Pointers Without Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
When the **swap()** function is called with the statement **swap(,);**
the addresses of **x** and **y** are the values that are passed to the
function and those values are assigned to the pointer type variables
**a** and **b**. This is an automatic process of placing addresses
into pointers. Without using a function call pointers must be assigned
explicitly the address they are to hold.


Listing 8-3
```````````

::

    
        #include <iostream.h>
        #include <stdio>
        int main()
        {
        char myname[30];
        char *ptr;
    
             ptr = myname;
             cout << "\nEnter your name: ";
             gets( ptr );
             cout << "\nHello " << myname 
                  << " welcome to C++!" << endl;
             return 0;
    
        }

The above example uses a pointer to hold the address of the array
**myname**. The name of an array is a constant that represents the
beginning address of the array. Therefore, by using the name of the
array, the address of **myname** is stored into **ptr**. There is no
need to use the **&**, address of, operator to obtain the address
although the following two statements are equivalent.

::

    
        ptr = myname;         or        ptr = [0];

Both statements store the beginning address of **myname** into
**ptr**.


8.7 Pointers and Arrays
~~~~~~~~~~~~~~~~~~~~~~~
Array notation is a form of pointer notation. The name of an array is
the beginning address of the array. The array name is referred to as a
'pointer constant'. An array can be subscripted to get to individual
cells of data. With the name of the array actually being a constant
that represents a memory address, the name of the array can be used as
a pointer and an integer value can be used to represent an offset from
the base. This alternate method can be used to get to individual cells
of an array.


Listing 8-4A
````````````

::

// // example A - using normal array notation // #include <iostream.h>
int main() { int nums[]={10,20,30,40,50}; int indx; for(indx = 0; indx
< 5; ++indx) cout << "\n" << nums[indx]; return 0; }


Listing 8-4B
````````````
    
    
        //
        //    example B - using array name as pointer holding base 
        //    address and using integer variable as offset
        //
        #include <iostream.h>
        int main()
        {
        int nums[]={10,20,30,40,50};
        int indx;
       
             for(indx = 0; indx < 5; ++indx)
                  cout << "\n" << *(nums+indx);
             return 0;
        }

In **Listing 8-4b**, the integer identifier **indx** is added to the
base address of the array. The C compiler computes the resulting
address that will be accessed by taking the value held in **indx**
multiplied by the length in bytes of a unit of **nums** and adds the
proper offset to **nums** to give the correct memory address.


Listing 8-5
```````````

::

    
        #include <iostream.h>
        int main()
        {
        char name[]="John Smith";
        char *ptr;
    
             ptr = name;    // load address of name 
                            // in the pointer
                            //
             while(*ptr)    // while the character 
                            // being pointed to is 
                            // non-zero            
             {
                  cout << *ptr; // place character 
                               // on screen 
                  ++ptr;       // increment address 
                               // held in pointer   
             }
             return 0;
        }



8.8 Strings Initialized as Pointers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Strings or arrays of characters that are terminated with a null byte
can be initialized when they are declared. A pointer can be
substituted for a character array.


Listing 8-6
```````````

::

    
        #include <iostream.h>
        int main()
        {
        char *msg = "Hello ";
        char name[30];
        
             cout << "\nEnter you name:";
             gets(name);
             cout << "\n" << msg << "\t" << name << endl;
             return 0;
        }

The above example has a pointer, **msg**, that is initialized to hold
the address of a string, **"Hello"**. The compiler will process this
statement by assigning the null terminated string a storage location
in memory and placing the beginning address of that storage area into
the pointer **msg**. Either the pointer, **msg**, or the array,
**name**, can be used to access individual bytes of the null
terminated array or to print the entire string.


8.9 Arrays of Pointers
~~~~~~~~~~~~~~~~~~~~~~
Arrays of pointers are analogous to two dimensional arrays. An array
of pointers allows for the association of groups of strings, each item
of the group can be of a different length. If a two dimensional array
were used to store a list of strings that were to be used as a menu
there would be some wasted or unused space within the two dimensional
array.


Listing 8-7
```````````

::

    
        //
        //    MENUTEST.C - sample program showing a menu display 
        //    function
        //
        #include <iostream.h>
    
        #define   MENUWIDTH 20
    
        char MainMenu[][MENUWIDTH] = {"Add an Item"
                                     ,"Edit an Item"
                                     ,"Delete an Item"
                                     ,"List Items"
                                     ,"Quit"
                                     };
    
        int main()
        {
        int which, limit;
        int showmenu( char [][MENUWIDTH], int, char [] );
             //
             //    control loop for program
             //
             do
             {
                  which = showmenu( MainMenu
                                  , sizeof(MainMenu)/MENUWIDTH
                                  , "Main Menu" 
                                  );
                  switch( which )
                  {
                       case 0:
                       case 1:
                       case 2:
                       case 3:
                            cout << "\n Selected: "
                                 << which << ": "
                                 << MainMenu[which]
                                 ;
                            break;
                       case 4:
                            break;
                       default:
                            cout << "\nInvalid Entry - Try Again!" 
                                 << endl;
                            break;
                  }
             } while( which != 4 );
             return 0;
        }
    
        int showmenu( char menu[][MENUWIDTH]
                    , int numelements
                    , char title[] 
                    )
        {
        int i, item;
             //
             //    show menu title
             //
             cout << "\n\t" << title;
             //
             //    loop to show menu
             //
             for( i = 0; i < numelements; ++i )
                  cout << "\n" << i <<": "
                       << menu[i];
             //
             //   prompt for selection
             //
             cout << "\n\tEnter Selection: ";
             cin >> item;
             return( item  );
        }

Notice in the above example that the function **showmenu()** must be
passed not only the array of strings to display, but how many strings
there are. If an array of pointers is used instead of a two
dimensional array, the function **showmenu()** becomes much simpler.


Listing 8-8
```````````

::

    
        //
        //    MENUTST1.C - sample program showing a menu display
        //    function
        //
        #include <iostream.h>
    
        int main()
        {
        //
        //   menu is now an array of pointers to char data
        //
        char *mainmenu[] = {"Add an Item"
                           ,"Edit an Item"
                           ,"Delete an Item"
                           ,"List Items"
                           ,"Quit"
                           ,NULL
                           };
    
        int which, limit;
        int showmenu( char *[], char [] );
             //
             //    control loop for program
             //
             do
             {
                  which = showmenu( mainmenu, "Main Menu" );
                  switch( which )
                  {
                       case 0:
                       case 1:
                       case 2:
                       case 3:
                            cout << "\n Selected: "
                                 << which << ": "
                                 << mainmenu[which]
                                 ;
                            break;
                       case 4:
                            break;
                       default:
                            cout << "\nInvalid Entry - Try Again!" 
                                 << endl;
                            break;
                  }
             } while( which != 4 );
             return 0;
        }
    
        int showmenu( char *menu[], char title[] )
        {
        int i, item;
             //
             //    show menu title
             //
             cout << "\n\t" << title;
             //
             //    loop to show menu
             //
             for( i = 0; menu[i]; ++i )
                  cout << "\n" << i <<": "
                       << menu[i];
             //
             //   prompt for selection
             //
             cout << "\n\tEnter Selection: ";
             cin >> item;
             return( item  );
        }

Notice in the above example that the array of pointers **mainmenu** is
initialized with the strings comprising the menu items, and the last
initial value is **NULL**. The use of **NULL** places an address of
all zeros to mark the end of the list of menu items. With the use of
**NULL** as a sentinel marking the end of list, there is no need to
pass the number of items in the menu.


8.10 Lvalue and Rvalue
~~~~~~~~~~~~~~~~~~~~~~
All assignment statements in the C language have two components:
lvalue and rvalue. These terms are important when any assignment
statement is made, such as:

::

    
        A1 = A2

where **A1** is the lvalue or left side value because it appears on
the left side of the expression. While **A2** can be considered an
rvalue. **A1**, and all lvalues, must refer to a data item whose value
can be changed. The statement

::

    
        2 = x;

is incorrect because the value of **2** cannot be changed, it is a
constant, and constants cannot be lvalues. Variable names are always
lvalues, except when that variable name is the name of an array,
because array names are "pointer constants". An array name can be
associated with an operator which will allow a value to be assigned to
an array element. Therefore, if an array is declared as follows

::

    
        int x[10];

and the following statement is then issued

::

    
        x = 10;

the compiler will issue an error message that mentions that the above
statement has an "illegal lvalue". The reason being that **x** is the
name of an array. But if the following statement were to be issued

::

    
        x[1] = 10;

it will compile correctly. The **[]** operator is used by the compiler
to set the first array element to a value of 10. The operator **[]**
can be used with an array name and still yield an lvalue.


8.11 Pointers to Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~
C and C++ compilers will support pointers to functions. This mechanism
can be very useful in reducing the number of statements needed to
determine which function to call in a given situation, and to give
flexibility so that a any of a number of functions could be called
through one statement. Pointers to functions allow the function to be
referenced indirectly, just as a pointer to a data item allows the
data item to be referenced indirectly. For a program to make use of a
pointer to a function, the function to be pointed to must first be
prototyped. The prototype will establish the address of the function
for the compiler. For example

::

    
        int afunction( char *, int, float );

Then a pointer to a function must be declared. To declare the pointer
to the function, parentheses must be used to form the correct
associations

::

    
        int (*pfunc)( char *, int, float );

The above declaration can be read by using the order of precedence of
operators. Always go to the identifier first and then move left or
right depending on the order of precedence surrounding the identifier.
By applying this rule, the above statement is read as

::

    
         **pfunc** is a pointer,  *****, to a function,  **()**, that is passed a
        pointer to a  **char**, an  **int**, and a  **float** and that returns an
         **int**

Notice that the pointer to the function must be declared in such a way
that the declaration states the exact same argument types, and number
of arguments as the function being pointed to, and the return type
must also match the function being pointed at. To assign a pointer to
a specific function, simply state the name of the prototyped function,
without the parentheses and argument list.

::

        
        pfunc = afunction;

Writing a function name without parentheses is treated the same as
writing an array name without a subscript; the name of the function
becomes a pointer constant which is the beginning address of the
function. The program can call the function indirectly thru the
pointer and pass the arguments needed

::

    
        char name[30];
        int result, age;
        float salary;
    
             result = (*pfunc)(name, age, salary);

A common use for pointers to functions is in passing them as arguments
to other functions. The standard library function **qsort()** requires
that the name of a function to do comparsions be passed as an
argument.


Listing 8-9
```````````

::

    
        //
        //   QSORTEX.C - demonstrate the use of a pointer to a 
        //   function in the call to the qsort() function
        //
        #include <iostream.h>
        #include <stdlib.h>
        #include <string.h>
    
        #define  MAXSTRING      30
        //
        //   array to be sorted
        //
        char names[][MAXSTRING] = {"Snider"
                                  ,"Aaron"
                                  ,"Ruth"
                                  ,"Gehrig"
                                  ,"Mays"
                                  ,"Mantle"
                                  ,"Koufax"
                                  ,"Drysdale"
                                  ,"Gibson"
                                  ,"Spahn"
                                  ,"Calovito"
                                  };
        //
        //   prototype of comparison function to be called by qsort()
        //
        int cmpNames( const void *, const void * );
    
        int main()
        {
        int i;
        size_t numOfNames = sizeof( names ) / MAXSTRING;
             //
             //    print a list of names before the sort
             //
             cout << "\nBefore Sort: there are "
                  << numOfNames << " names in the list."
                  ;
             for(i = 0; i < numOfNames; ++i )
                  cout << "\n\t" << names[i];
             //
             //    sort the list of names
             //
             qsort( names        /* array of items to be sorted */
                  , numOfNames   /* number of items to sort */
                  , (size_t)MAXSTRING /* width of each item */
                  , cmpNames     /* address of compare function */
                  );
             //
             //    print the sorted list of names
             //
             cout << "\nAfter Sort: there are "
                  << numOfNames << " names in the list."
                  ;
             for(i = 0; i < numOfNames; ++i )
                  cout << "\n\t" <<  names[i] ;
             cout << endl;
             return 0;
         }
    
         int cmpNames( const void *name1, const void *name2 )
         {
             return strcmp( (char *)name1, (char *)name2 );
         }



8.12 Arrays of Pointers to Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
An array of pointers to functions can be declared as follows:

::

    
        int ( *cmd [10] ) () ;

The above is an array of pointers to functions. Each element of the
array holds an address of a unique function. In order to the addresses
of functions into this array, first prototype all functions that will
be in the array, then assign then to the array elements. All of the
functions must be passed the same number and type of arguments, and
all the functions must return the same type of value.

::

    
        int func0(), func1(), func3(),
            func4(), func5(), func6(),
            func7(), func8(), func9();
    
        int ( *cmd[] ) () = 
                            {func0, func1, func2, func3,
                            func4, func5, func6, func7,
                            func8, func9 };

To call one of the functions in the array, the following is needed

::

    
        (*cmd[index])();

If index has the value 3, then **func3** is called. This mechanism is
commonly called a dispatch table or jump table and is used frequently
in the keyboard mapping for text editors and word processors. To build
a dispatch table or jump table, the programmer must use structures to
accomplish the task. First, create a composed data type

::

    
        typedef
        struct tagCOMMAND
        {
             char *name;
             int (*func)();
        } COMMAND;

this will establishe the template for a new data type, **COMMAND**.
Next, prototype all functions that are to be called through the
dispatch table. The declare an array variable of the above **COMMAND**
type and initialze the array with a command to be scanned for and the
associated function to execute when that command is encountered.
Assume that the following declarations are made in a program

::

    
        int 
             add_entry( char *, int )
             ,edit_entry( char *, int )
             ,delete_entry( char *, int )
             ,print_entry( char *, int )
             ,quit( char *, int )
             ;
    
        COMMAND 
             dispatch[] = {
                            { "add",    add_entry },
                            { "edit",   edit_entry },
                            { "delete", delete_entry },
                            { "print",  print_entry },
                            { "quit",   quit }
                          };

Further assume that a command was read from the terminal into the
variable **char cmd[7];**. The following code scans for a match on the
command and executes the associated function. All functions in the
dispatch table must have the same type of return value and have the
same number and type of arguments to be passed, even if one or more of
the functions does not actually require any of the arguments or one of
more functions actually will not return any value.

::

    
        #define INVALID     -1
        #define MAXCMDS     5
    
        int find_cmd( char *cmd )
        {
        int indx, result = INVALID;
    
             for(indx = 0; indx < MAXCMDS; ++indx)
                  if(!strcmp(cmd,dispatch[indx].name)
                  {
                       result = (*dispatch[indx].function)( x, y );
                       break;
                  }
             return(result);
        }

A linear search of the array of commands is performed and when a match
is made, a call is executed to the associated function. If the command
list is long, the commands could have been placed in sorted order and
a binary search could have been performed.


8.13 Pointers to Pointers
~~~~~~~~~~~~~~~~~~~~~~~~~
Pointers can be declared that point to other pointers. In fact, there
is no limit to levels of indirection for a pointer type variable.
There is a limit to what a programmer can understand and therefore
what is maintainable. It is not uncommon to see a pointer to a pointer
type variable.

::

    
        char **ptr;

The above declaration says that **ptr** is a pointer to a pointer to
**char** type data. Pointers to pointers are used to dynamically
allocate and thus manage space that will hold a list of items. At
compile time the programmer does not know the number of items in the
list nor does the programmer know the length of each item. Pointers to
pointers are another way of expressing that an array of pointers is
being used. In the chapter on functions, there was a discussion of how
the main function receives command line arguments. The sample program
that was given was:


Listing 8-10
````````````

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

The arguments passed to **main()** that are of type **char * []** can
also be typed as **char ** ** so that the program would appear as
follows:


Listing 8-11
````````````

::

    
    #include <iostream.h>
    int main( int argc, char **argv, char **envp )
    {
    int indx;
    
        cout << "\nNumber of arguments is " << argc;
        for( indx = 0; indx < argc; ++indx )
             cout << "\nARGV[ " << indx << "]= " << argv[indx];
        for( indx = 0; envp[indx]; ++indx )
             cout << "\nENVP[ " << indx << "]= " << envp[indx];
        return 0;
    }

Nothing else in the program would have to be changed, as a pointer to
a pointer has the same usage as an array of pointers. But, if pointer
notation were to be used then the program would appear as follows:


Listing 8-12
````````````

::

    
    #include <iostream.h>
    int main( int argc, char **argv, char **envp )
    {
    int indx;
    
        cout << "\nNumber of arguments is " << argc;
        for( indx = 0; indx < argc; ++indx, ++argv )
        {
             cout << "\nARGV = " << unsigned(argv);
             cout << "\t*ARGV = " << unsigned(*argv)
                  << "\t: " << *argv;
                  
        }
        for( indx = 0; *envp; ++indx, ++envp )
        {
             cout << "\nENVP = " << unsigned(envp);
             cout << "\t*ENVP = " << unsigned(*envp)
                  << "\t: " << *envp;
                  
        }
        return 0;
    }

The deferencing of pointers to pointers requires some thought. In
**Listing 8-12**, **argv** holds the address of an array of addresses.
Each address in the array is the address of where a string of
characters is stored. The following will help to demonstrate.

::

    
        argv      -    A pointer holding the beginning address of 
                       where a list of addresses is stored.
    
        *argv     -    A pointer holding the address of where an 
                       array of characters with a NULL byte is 
                       stored.
    
        **argv    -    A character within an array of characters.



8.14 const, volatile and Pointers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
It is possible to create a **const** pointer, a pointer to a **const**
variable, a **volatile** pointer and a pointer to a volative variable.

::

    
    const int x = 5;
    int const *ptrX = 

Here **ptrX** is a pointer to a **const**, not a **const** that also
happens to ba a pointer. The **const** keyword modifies the item that
is to the immediate right, which is the *****, not **ptrX**. If the
code had been as follows:

::

    
    int y = 10;
    int *const ptrY = 

The **const** keyword in the above code would have modified **ptrY**,
not the ***** and a **const** pinter to an integer would have been
created. The pointer is constant, not the item being pointed to. If a
pointer points at a **const** variable then the variable cannot be
modified through that pointer. The pointer, which is not a **const**,
can be modified. The pointer can be changed to point at a variable
that is not **const**. If a pointer is defined as being a **const**
pointer, then the pointer can never be modified but the memory to
which it refers can be changed. In the above paragraphs, the keyword
**volatile** can be substituted for wherever the word **const** is
used. The syntax rules for using **volatile** are the same as those
for **const**. The following program demostrates both correct and
incorrect uses of **const**.


Listing 8-13
````````````

::

    
    #include <iostream.h>
    
    int const X = 1;   // X is a const
    
    const int Y = 2;
    const int *ptrY =    // ptrY is a pointer to a const int 
    
    const int Z = 3;
    int const *ptrZ =    // ptrZ is also a pointer to const int
    
    int W= 4;
    int *const ptrW =    // const pointer to int
    
    int T = 5;              // an integer
    
    const int *const ptrT;  // uninitialized const pointer to const 
                            // int
    
    int main()
    {
        X = 10;        // ERROR - cannot modify a const
        *ptrY = 11;    // ERROR - cannot modify a const through a 
                       // pointer
        ptrY =      // OKAY - ptrY itself is not const
        *ptrZ = 12;    // ERROR - cannot modify a const through
                       // a pointer
        ptrZ =      // OKAY - ptrZ itself is not const
        *ptrW = 13;    // OKAY - ptrW does not point to a const
        ptrW =      // ERROR - cannot modify ptrW, it is a const
        ptrT =      // ERROR - cannot modify ptrT, it is a const
    
        return 0;
    }



8.15 Pointers and Memory Addresses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Dynamic memory allocation is the ability to acquire blocks of memory
for use by a program, while the program is executing, and then release
those blocks back for use by some other task. In the C and C++
language, pointers can be used to hold the memory address of
dynamically allocated areas of memory. Sometimes a program will not
know the amount of data that needs to be stored until the program is
actually executing, in those cases the program can request that memory
be allocated for use by the program from the dynamic memory pool or
more commonly the "heap". In C++, the "heap" is now referred to as the
"free store". In C, there are four functions available for heap
allocation and deallocation. In C++, the process has been simplified
and only two functions are needed (of course the C functions can be
used from C++). The C functions are:

::

    
        void *malloc( size_t size );
        void *calloc( size_t nitems, size_t size );
        void *realloc( void *block, size_t size );
        void *free( void *block );

Notice that each function above returns a pointer to void type data.
In ANSI C, a **void *** is a generic pointer, that can be a memory
address that can point to any type of data. Of the above functions,
**malloc()**, and **calloc()** are used to acquire memory in an
initial request. The difference between them being that **calloc()**
guarantees that the memory acquired will be initialized to have all
bits set to 0, and **malloc()** makes no guarantee about the contents
of the allocated area. The function **realloc()**, is used to expand
or contract an already allocated area of memory. The **void *block**
parameter is a pointer to an already allocated area of memory, and the
**size** parameter is the resized area in bytes. If **realloc()**
cannot expand the current area, **realloc()** will make a new
allocation of **size** bytes and copy all data from the previous area
into the new area, then free the previous area, and return a pointer
to the new allocation. The functions **malloc()**, **calloc()**, and
**realloc()** all will return NULL if they are unable to allocate the
desired amount of memory. When a program is finished with using an
allocated area of memory, the area must be returned to the heap by
using the **free()** function. **calloc()** provides access to the C
memory heap. The heap is available for dynamic allocation of variable-
sized blocks of memory.

::

    
             #include 
    
             void *calloc(size_t nitems, size_t size);

**calloc** allocates a block of size nitems * size. The block is
cleared to 0. **calloc** returns a pointer to the newly allocated
block. If not enough space exists for the new block, or nitems or size
is 0, **calloc** returns NULL. **malloc()** allocates a block of size
bytes from the C memory heap. It allows a program to allocate memory
explicitly, as it is needed and in the exact amounts needed.

::

    
             #include 
    
             void *malloc( size_t size);

On success, **malloc** returns a pointer to the newly allocated block
of memory. If not enough space exists for the new block, it returns
NULL. The contents of the block are left unchanged. If the argument
**size == 0**, malloc returns NULL. **realloc()** attempts to shrink
or expand the previously allocated block to size bytes. The block
argument points to a memory block previously obtained by calling
**malloc()**, **calloc()**, or **realloc()**. If block is a NULL
pointer, **realloc()** works just like **malloc()**.

::

    
             #include 
    
             void *realloc( void *block, size_t size);

**realloc()** returns the address of the reallocated block, which may
be different that the address of the original block. If the block
cannot be reallocated, or size== 0, **realloc()** returns NULL.
**free()** deallocates a memory black allocated by a previous call to
**calloc()**, **malloc()**, or **realloc()**.

::

    
             #include 
    
             void *free( void *block );

**free()** does not return any value. Pointers can also be used to
address dynamically allocated blocks of memory that can be used as
arrays. Dynamic allocation of a block of memory takes place during
execution. The size of the dynamic block is specified using arguments
to standard library functions such as **malloc()**, **calloc()**, and
**realloc()**. This is in contrast to the dimension of an array, which
is fixed by a constant or by a constant expression in a declaration.
The following is a sample program written in C that uses a dynamically
allocated array:


Listing 8-14
````````````

::

    
    /******************************************************
    *   Program Name   :    sum_num.c
    *   Description    :    Allocate a dynamic array of a 
    *                  :    stated size; load numbers into 
    *                  :    the array and then sum the 
    *                  :    numbers in the array
    *******************************************************/
    
    #include 
    #include 
    #include 
    
    int main()
    {
    int retval;   /* value returned from scanf */
    long *nums;   /* pointer to arrray of numbers to sum */
    short how_many;/* number of numbers to input and sum */
    short inum;   /* counter to index into nums array */
    long sum;     /* sum of numbers in nums array */
        /*
        *    input number of elements to allocate
        */
        printf("\nHow many numbers to sum? ");
        scanf("%hd",_many);
        /*
        *    dynamically allocate memory for how_manay 
        *    long's
        */
        nums = (long *)calloc(how_many, sizeof(long) );
        if(nums == (long *)NULL)
        {
             fprintf(stderr,"\nCould not allocate memory");
             return 1;
        }
        /*
        *    input numbers to store in array
        */
        for( inum =0; inum < how_many; ++inum)
        {
             printf("\nEnter #%d: ", inum + 1);
             retval = scanf("%ld",[inum] );
        }
        /*
        *    sum the numbers in the array
        */
        for( sum = inum = 0; inum < how_many; ++inum )
        {
             /*
             *    add number to sum
             */
             sum += nums[inum];
             /*
             *    show running total
             */
             printf("\n%3d: %10ld %10ld",
                  inum+1,nums[inum],sum);
        }
        /*
        *    print the final total
        */
        printf("\nThe sum of the %d numbers",how_many);
        printf(" entered is %ld\n",sum);
        /*
        *    free the memory back to the heap
        */
        free( (char *)nums );
        return 0;
    
    }/* end of main() ************************************/

Dynamically allocated arrays can also be expanded during the execution
of the program.


Listing 8-15
````````````

::

    
    /******************************************************
    *   Program Name   :    sum_num2.c
    *   Description    :    Allocate a dynamic array of a 
    *                  :    stated size; load numbers into 
    *                  :    the array;when array is full 
    *                  :    prompt user to see if more 
    *                  :    numbers are to be input;
    *                  :    if more numbers are desired 
    *                  :    then expand array
    *******************************************************/
    
    #include <stdio.h>
    #include <malloc.h>
    #include <stdlib.h>
    #include <ctype.h>
    
    int main()
    {
    char ans;     /* response from Yes/No prompt */
    int retval;   /* value returned from scanf */
    long *nums;   /* pointer to array of numbers to sum */
    long *save;   /* saves the address of the array of numbers */
    short how_many;/* number of numbers to input and sum */
    short inum;   /* counter to index into nums array */
    long sum;     /* sum of numbers in nums array */
        /*
        *    input number of elements to allocate
        */
        printf("\nHow many numbers to sum? ");
        scanf("%hd",_many);
        fflush(stdin);
        /*
        *    dynamically allocate memory for how_manay 
        *    long's
        */
        nums = (long *)calloc(how_many, sizeof(long) );
        if(nums == (long *)NULL)
        {
             fprintf(stderr,"\nCould not allocate memory");
             return 1;
        }
        /*
        *    start outer loop
        */
        inum = 0;
        do
        {
             /*
             *    input numbers to store in array
             */
             for( ; inum < how_many; ++inum)
             {
                  printf("\nEnter #%d: ", inum + 1);
                  retval = scanf("%ld",[inum] );
                  fflush(stdin);
                  /*
                  *    no value input, terminate early
                  */
                  if( retval != 1 )
                       how_many = inum;
    
             }/* end of for */
             /*
             *    see if array is to be expanded
             */
             printf("\nExpand Array(Y/N)? ");
             ans = toupper(getchar());
             if( ans == 'Y' )
             {
                  /*
                  *    if answer was Y, then expand array
                  */
                  how_many += how_many;
                  save = nums;
                  /*
                  *    expand on space already owned
                  */
                  nums = (long *)realloc(nums,how_many);
                  if( nums == (long *)NULL )
                  {
                       fprintf(stderr,"\nCould not reallocate");
                       /*
                       *    reset pointer 
                       */
                       nums = save;
                  }
             }
        } while( ans == 'Y' );
        /*
        *    sum the numbers in the array
        */
        for( sum = inum = 0; inum < how_many; ++inum )
        {
             /*     
             *    add number to sum
             */
             sum += nums[inum];
             /*
             *    show running total
             */
             printf("\n%3d: %10ld %10ld",
                  inum+1,nums[inum],sum);
    
        }/* end of for */
        /*
        *    print the final total
        */
        printf("\nThe sum of the %d numbers",how_many);
        printf(" entered is %ld\n",sum);
        /*
        *    free the memory back to the heap
        */
        free( (char *)nums );
        return 0;
    
    }/* end of main() *************************************/

Arrays of buffers can also be allocated from the heap. This allows for
a dynamically allocated two dimensional array.


Listing 8-16
````````````

::

    
    /*
    *   LINES.C - Dynamically allocate space from the heap
    */
    #include <stdio.h>
    #include <stdlib.h>
    
    int main()
    {
    char **buf;
    int height, width, i, j;
        /*
        *    acquire parameters concerning data to be input
        */
        printf("\nEnter number of lines: ");
        scanf( "%d", );
        fflush( stdin );
        printf("\nEnter width of lines: ");
        scanf("%d", );
        fflush( stdin );
        /*
        *    allocate array of buffers for text
        */
        buf = (char **)malloc( height * sizeof( char *) );
        if( buf == (char **)NULL )
        {
             fprintf( stderr, "\nCannot Allocate a Space\n");
             return 1;
        }
        /*
        *    allocate space for lines of text
        */
        for( i = 0; i < height; ++i )
        {
             buf[i] = (char *)malloc( width );
             if( buf[i] == (char *)NULL )
             {
                  fprintf( stderr,"\nCannot allocate text space.\n");
                  /*
                  *    release allocated space
                  */
                  --i;
                  while( i >= 0 )
                  {
                       free( buf[i] );
                       --i;
                  }
                  free( buf );
                  return 1;
             }
        }
        /*
        *   get text from keyboard and save in array
        */
        for( i = 0; i < height; ++i )
        {
             printf("\nEnter text: ");
             gets( buf[i] );
        }
        /*
        *    move down on the screen
        */
        printf("\n\n\n\n\n");
        /*
        *    place text on the screen
        */
        for( i = 0; i < height; ++i )
             printf("%s\n",buf[i]);
        /*
        *    return space to heap
        */
        for( i = 0; i < height; ++i )
             free( buf[i] );
        free( buf );
        return 0;
    }



8.16 The new and delete Operators
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The operators **new** and **delete** are introduced in **C++** to
provide reliable programmer-controlled allocation and deallocation of
storage in the heap. The functions **malloc()**, **calloc()**,
**realloc()** and **free()** could still be used in **C++**, but it is
preferred that the **new** and **delete** operators be used for
dynamic allocation and deallocation of memory. A simplified syntax is

::

    
        pointer-to-name = new name ;
    
        delete pointer-to-name;

**name** can be of any type except "function returning..." (however
pointers to functions are allowed). **new** tries to create an object
of type **name** by allocating (if possible) **sizeof(name)** bytes in
free store (also called the heap). The storage duration of the new
object is from the point of creation until the operator **delete**
kills it by deallocating its memory, or until the end of the program.
If successful, **new** returns a pointer to the new object. A NULL
pointer indicates a failure ( such as insufficient or fragmented heap
memory). As with **malloc**, the programmer needs to test for NULL
before trying to access the new object (unless the programmer uses a
new-handler). However, unlike **malloc**, **new** calculates the size
of **name** without the need for an explicit **sizeof** operator.
Further, the pointer returned is of the correct type, "pointer to
**name**", without the need for explicit casting.

::

    
        char *nameptr;      
    
        if( !(nameptr = new char ) )
        {
             fprintf(stderr,"Insufficient memory for char");
             exit (1 );
        }
    
        delete nameptr;

There are two ways to handle the situation where the **new** operator
cannot allocate the space requested. First, a conditional test can be
made of the return value from **new**. If the return value is
**NULL**, then the space could not be allocated. The second method is
to define a function that will be called if the **new** operator fails
(returns NULL). To tell the **new** operator about the new- handler
function, call **set_new_handler** and supply a pointer to the new-
handler. The prototype for **set_new_handler** is as follows (from
new.h):

::

    
        void (*set_new_handler( void (*) () )) ();

**set_new_handler** returns the old new-handler, and changes the
function **_new_handler** so that it, in turn, points to the new-
handler that the programmer defined.


Listing 8-17
````````````

::

    
    //
    //  LINES1.CPP - dynamically allocate space from the free store
    //  using set_new_handler() to handle out of memory exceptions
    //
    #include <iostream.h>
    #include <stdlib.h>
    #include <new.h>
    
    int main()
    {
    char **buf;
    int height, width, i;
    void nospace();
    
        //
        //   acquire parameters concerning data to be input
        //
        cout << "Enter number of lines: ";
        cin >> height;
        cout << "Enter width of lines: " ;
        cin >> width;
        //
        //   set a new handler
        //
        set_new_handler( nospace );
        //
        //   allocate array of buffers for text
        //
        buf = new char *[height];
        for( i = 0; i < height; ++i )
             buf[i] = new char[width];
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
    
    void nospace()
    {
        cout << "ERROR: Could not allocate from free store"
             << endl;
        return 1;
    }



8.17 Allocating Multi-dimensional Arrays
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
If **name** is an array, the pointer returned by **new** points to the
first element of the array. When creating multidimensional arrays with
**new**, all array sizes must be supplied (although the left-most
dimension doesn't have to be a compile-time constant):

::

    
        mat_ptr = new int[3][10][12];
        mat_ptr = new int[n][10][12];



8.18 Pointers to void and Functions That return void
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ANSI C allows pointers to type **void *** to be assigned to any other
pointer as well as any pointer to be assigned to a pointer of type
**void ***. C++ does not allow assignment of pointer of type **void
*** to any other pointer without an explicit cast. The following
example illustrates the difference:

::

    
        void *p_void;
        int i, *p_i;
    
        p_void =         /* allowed in both C and C++ */
        p_i = p_void;       /* allowed in C but not in C++ */
        p_i = (int*)p_void; /* cast makes it OK to use in C++ */


