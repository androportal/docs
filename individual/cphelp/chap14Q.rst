


Chapter 14: Review Questions
============================

::

    
     T  F    1. Preprocessing directives are evaluated before 
                language keywords.
    
     T  F    2. One macro cannot be used to help define 
                another.
    
     T  F    3. Every macro parameter occurrence in the macro 
                body should be surrounded by parenthesis.
    
     T  F    4. The backslash is needed to continue the 
                definition of a macro to another line.
    
     T  F    5. It is required that defined constant names be 
                in uppercase.
                        
     T  F    6. The  **#** operator creates a character 
                pointer whose name is that of the macro 
                argument.
    
     T  F    7. Arithmetic expressions in a macro should be 
                surrounded by parentheses, even if that means 
                enclosing the entire macro body.
    
     T  F    8. The  **#define** directive is used to create 
                both simple replacement and function-like 
                macros.
    
     T  F    9. The  **#line** directive allows for the 
                setting of the  **__DATE__** and 
                 **__TIME__** macros.
    
     T  F   10. The  **#error** directive allows for the 
                output of a message to stdout when a runtime 
                error is  encountered.
    
     T  F   11. The preprocessor has been a part of C from 
                the inception of the language.
    
     T  F   12. Preprocessing directives are evaluated before C 
                language keywords like  **while**, 
                 **for**, or  **if**.
    
     T  F   13. It is appropriate to think of the preprocessor 
                as a smart text editor.
    
     T  F   14. One macro cannot be used to help define 
                another.
    
     T  F   15. The  **#define** directive is used to create 
                both simple replacement and function-like 
                macros.
    
     T  F   16. Macro parameters have data types, just like 
                function parameters.
    
     T  F   17. Every macro parameter occurrence in the macro 
                body should be surrounded by parentheses.
    
     T  F   18. The backslash is needed to continue the 
                definition of a macro to another line.
    
     T  F   19. It is required that macro names be in 
                uppercase.
    
     T  F   20. Without  **#undef** it is impossible to 
                redefine a macro.
    
     T  F   21. The  **#if defined** directive requires that 
                the identifier being examined not only be 
                defined, but also have at least a space for a 
                value.
    
     T  F   22. The  **#if** and related directives can be 
                nested.
    
     T  F   23. The  **#** operator creates a character 
                pointer whose name is that of the macro 
                argument.
    
     T  F   24. The concatenation operator can be used to 
                dynamically build both macro and variable 
                names.
    
     T  F   25. The preprocessor helps you debug your C cyntax.
    
    
     T  F   26. All macros must be defined in your program.
    
     T  F   27. Conditional compilation can help you move your 
                program to new environments while retaining one 
                set of base code.
    
     T  F   28. Assigning a macro name to string literals make 
                changing your program easier.
    
     T  F   29. If a compiler already has a macro called 
                 **min**, we would have problems creating a 
                 **MIN** macro to be used together with 
                 **min**.
    
     T  F   30. Arithmetic expressions in a macro should be 
                surrounded by parentheses, even if that means 
                enclosing the entire macro body.
    
    31. A macro, compared to its equivalent function 
        implementation, is generally:
    
        a.   More complicated
        b.   Faster in execution speed.
        c.   Coded from a different algorithm.
        d.   None of the above.
        e.   All of the above.
    
    32. What is wrong with the following macro?
    
        #define   TRUE      1
        #define   FALSE     0
        #define   TEST(bin,bit)  bin & bit ? TRUE : FALSE
    
        (Assume that  **bin** is a binary number and 
          **bit** is the bit to be tested.)
    
        a.   The type  **bin** is not valie in C.
        b.   The macro will always return TRUE.
        c.   Side effects may arise in the expansion.
        d.   TRUE and FALSE will not be expaned to TEST.
    
    33. One use for the  **#ifdef** proprocessor directive 
        could be:
    
        a.   Building applications that can be used in 
             different operating system environments.
        b.   Nesting one function within another.
        c.   Dynamic memory allocation within a macro.
        d.   None of the above.
    
    34. What is wrong with the code fragment given below?
    
        #define SQUARE(x)   ((x) * (x))
             ...
        /* produce a table of squares from 1 to 10 */
        int i = 0;
    
        while( i <= 10 )
             printf("%d squared = %d\n", SQUARE(++i) );
             ...
    
        a.   The loop will not terminate because  **++i** 
             will not be evaluated in the macro expansion.
        b.   The macro expansion will introduce side effects, 
             resulting in an incorrect table of squares.
        c.   The increment operator cannot be used in a macro.
        d.   The macro argument  **x** cannot be used more 
             than once in the macro definition.  A compile 
             error will be the result.
    
    35. Which statement is not true when applied to the 
         **#if** family of preprocessor directives?
    
        a.   They can be nested.
        b.   They can be used as functionally equivalent to the 
             C construct  **if/else**.
        c.   They are always evaluated before compilation takes 
             place.
        d.   The  **#else**, if present, is always associated 
             with the closest preceding  **#if** directive.
    
    36. The predefined macros  **__DATE__** and 
         **__TIME__** are useful because
    
        a.   They can be used to reset the system date and/or 
             time.
        b.   They are difficult (impossible?) to retrieve by 
             other methods.
        c.   They can be used to dynamically retrieve the 
             current date/time at runtime.
        d.   None of the above.
    
    37. What is wrong with the following code fragment?
    
        #define IBM
        #if defined(IBM)
        #     define   MAX_INT   16
        #elif defined(MACINTOSH)
        #     define MAX_INT     32
        #else defined(ATARI800)
        #     define MAX_INT     8
        ...
        printf("Maximum integer is %d\n", MAX_INT );
    
        a.   There is no  **#endif** directive.
        b.    **IBM** has no value.
        c.   The  **define** directives cannot be indented.
        d.    **MAX_INT** would be undefined, which would 
             produce a compile error.
        e.   All of the above.
        f.   None of the above.
    




