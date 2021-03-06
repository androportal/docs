


Chapter 7: Programming Exercises
================================

::

    
     1. Write a program that performs the following.  The user
        inputs a number and then enters a series of numbers 
        from 1 to that number.  Your program should determine 
        which number (or numbers) is missing or duplicated in 
        the series, if any.  For example, if the user entered 
         **5** as the initial number and then entered the
        following sequences, the results should be as shown. 
    
        Input Sequence          Output 
        ----------------------  ---------------
        1 2 3 4 5               Nothing bad 
    
        However, if  **7** were the high number, the user 
        would see the results on the right for the following 
        number entries: 
    
        Input Sequence          Output 
        ----------------------  ---------------
        1 3 2 4 5               Missing 6 
                                Missing 7 
    
        And if  **10** were the high number and the user 
        entered the numbers  shown on the left, note the list 
        of missing and duplicate numbers: 
    
        Input Sequence          Output 
        ----------------------  ---------------
        1 2 4 7 4 4 5 10 8 2 6  Duplicate 2 ( 2 times) 
                                Missing 3 
                                Duplicate 4 ( 3 times ) 
                                Missing 9 
    
        The program should check the high number that the user 
        inputs to ensure that it does not exceed the size of 
        any array you might be using for storage. 
    
     2. Write a program that accepts as input a date in the 
        format MM-DD-YYYY, i.e. 11-30-1995.  The program is to 
        have a function to determine if the given year is a 
        leap year or not a leap year.  To determine a leap year 
        use the following: 
    
        if( year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
            i = true;
        else i = false;
    
        The program must convert the given date into a julian 
        date which has the format YYYYDDD, where YYYY is the 
        year of the century and DDD is the day of the year.  
        The julian date must be displayed for the date input. 
    
        In addition, write a function converts the date input 
        into a date string of the form (using 11-30-1995): 
    
             November 11, 1995
    
        The program must keep prompting for dates until a date 
        of 00-00-0000 is input. 
    
     3. Write a program that prompts for the input of social 
        security numbers upto a maximum of 10.  Store the 
        social security numbers in a two dimensional array of 
        characters.  Ask if the array of social security 
        numbers is to be sorted in ascending or descending 
        order, then call a bubble sort function that you write 
        to sort the array.  The program should print the 
        unsorted list first, sort the list, then print the 
        sorted list. The bubble sort algorithm is as follows: 
    
        A.  Start with the first two array elements.
        B.  Compare the elements and exchange them if the 
            compare function indicates they should be swapped.
        C.  Bump up one element and repeat step B.
        D.  Continue until the end of the array is reached.
        E.  Repeat steps B -> D decreasing the upperlimit on 
            the array by one for each iteration of the loop.  
            In other words, stop one element short of the 
            previous iteration in the main loop.
        F.  End the sort if:
            1.   No exchanges occur during an iteration or
            2.   The upper limit for the loop reaches one.




