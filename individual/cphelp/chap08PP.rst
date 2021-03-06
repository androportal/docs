


Chapter 8: Programming Projects
===============================

::

    
    1. Write a structure,  **struct card**, that will 
       represent a card in a standard deck of playing cards.  
       You will need to represent both the suit (clubs, 
       diamonds, hearts, or spades) as well as the 
       rank (A, K, Q, J, 10, 9, 8, 7, 6, 5, 4, 3, 2) of each 
       card.  Note that a deck of playing cards can be 
       represented as an array declared as 
    
        struct card deck[52];
    
       Using the above structure write a program that will 
       present a menu with the following options:
    
        1.   Deal Five Cards
        2.   Deal Seven Cards
        3.   Quit the Game
    
        Enter Selection:
    
       If the user selects either of the deal options, the 
       program will call a function that performs a perfect 
       shuffle of the deck.  In a perfect shuffle, the deck is 
       broken exactly in half and rearranged so that the first 
       card is followed by the 27th card, followed by the 
       second card, followed by the 28th card, and so 
       on.  The program then asks for how many players are at 
       the table.  There can be no more than seven players at 
       the table and no less than three players.  The program 
       will then deal cards, either five cards per player or 
       seven cards per player depending upon the menu 
       selection, to the players at the table.  The dealer, the 
       program, always is dealt to last.  Using a simple 
       scoring method of where A=11, K=Q=J=10, and all other 
       cards are of face value, compute and display which hand 
       holds the most points. 
    
    2. You have been hired to help program a new "Ma Bell" 
       telephone feature. The feature allows users with a "PC" 
       to obtain a disk of telephone numbers in addition to a 
       telephone book. Your job is to write the program which 
       will allow the phone information to be used. 
    
       You must allow the addition of and viewing of phone 
       number information. 
    
       The program should be able to:
    
        1. Add people to the telephone list
        2. View all people in the list
        3. View based on just the last name
    
       You may make the following assumptions:
    
        1. There are no more than 100 phone numbers
        2. No name is longer than 50 characters.
        3. Only one telephone number per person.
        4. The address should be broken into only
             street # or po box
             street name
             zip code 
    
    3. Write a program that uses C++ syntax and that creates an 
       index for lines of text.  The program must prompt for a 
       topic, no more than twenty characters and blanks are 
       allowed.  The topic will be passed through a hashing 
       algorithm.  The hashing algorithm will add together the 
       ASCII values of the characters composing the topic.  The 
       resultant number will be used in a modulo division where 
       the divisor will be fifty (50), the maximum number of 
       topics allowed.  The result of the modulo division, 
       which is the remainder will be used as the index into 
       the topic index array, which has 50 elements.  Each 
       topic is used to compute its location within the topic 
       index array.  The program will then prompt for the input 
       of a text string.  The text string will be read into a 
       character array,  **kbdBuffer**, that is setup for a
       maximum of 256 characters.  The program will use 
        **new** in conjunction with  **strlen** to allocate 
       space from the heap that will hold the number of 
       characters being held in  **kbdBuffer**.  The data
       will be transferred from  **kbdBuffer** to the 
       allocated space.  The address of the allocated space 
       will be stored into an array of pointers to character 
       type data, which holds 50 pointers.  The index computed 
       from the topic string will also be used to determine the 
       array index where the address of the allocated space 
       will be stored.  A maximum of fifty topics and 
       associated text strings can be input.  The user can 
       terminate the input of topics early if desired.  After 
       the termination of topic input, show the contents of the 
       topic array and the associated text string.  Only show 
       one screen full at a time.  The letter 'n' or 'N' can be 
       used to proceed to the next page of topics and strings.  
       The input of the letter 'q' or 'Q' will quit the 
       program. 




