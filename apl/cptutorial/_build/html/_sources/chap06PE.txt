


Chapter 6: Programming Exercises
================================

::

    
     1. Write a program that consists of a  **main()** 
        function and one or more other functions.  One of the 
        functions must be called  **void printLetter( char, 
        short, char );** where the formal parameters are
    
        void printLetter( char symbol, short height, char letter );
    
        where 
    
         **symbol** is a character such as '*'; 
         **height** specifies the number of symbol characters 
             that compose the height; and, 
         **letter** specifies a letter of the alphabet.
    
        The  **printLetter()** function prints a letter with 
        the height specified using the specified symbol.  For 
        example,
    
        symbol = '*'
        height = '5'
        letter = 'c'
    
        the function will print
    
    		    *******
    		    *
    		    *
    		    *
    		    *******
    
        The width will always be 7.  Make the program 
        continuously prompt for the input of the above data 
        until a -1 is input for the height.  This should be 
        written using C++ syntax.
    
     2. Write a program that will convert an unsigned integer 
        number to its binary representation and print on the 
        screen that binary representation.  This program should 
        consist of a  **main()** function, which prompts for 
        the input of an unsigned integer value from the 
        keyboard, and a second function called 
         **convertToBinary( char [], unsigned )**, which 
        converts the unsigned argument passed to its binary 
        form.  The character string holding the binary string 
        is returned in an array that is passed as an argument.  
        DO NOT assume the word length of the system, but 
        determine the word length by obtaining the number of 
        bytes in an integer and using 8-bits as representing a 
        byte.  Declare the array for the storage of the binary 
        image large enough to hold 32 bits.  Write the program 
        using C++ syntax.
    
     3. Write a program to encode a message using the following
        techique.
    
        1.   Enter a message (allow up to 256 characters).
        2.   Use a function compress() to remove the spaces 
             from the entered message.
        3.   Print out the ASCII codes for the message 
             characters in groups of 10 separated by two 
             spaces.
    




