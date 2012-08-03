


Chapter 12: Programming Projects
================================

::

    
     1. You are to create an interactive program that will
        present the following menu. 
    
        0: Quit
        1: Add an Event
        2: View Events
    
        An Event is a class,  **CEvent**, that is derived 
        from  **CRecord** which is an abstract base class 
        that generically defines records that are held within a 
        document.  The  **CEvent** class has the following 
        data members.  
    
        long julianDate;    // the date the event is scheduled for
        long theTime;       // the time the event is scheduled for
        char theEvent[256]; // the statement about the event
    
        The abstract base class  **CRecord** defines two pure 
        virtual functions for reading input from the disk and 
        for placing data onto the disk. 
    
        virtual void readRecord( size_t length) const = 0;
        virtual void writeRecord( size_t length) const = 0;
    
        The  **CEvent** class implements its own versions of 
        these functions in order to read and write data to 
        disk.
    
        This program will create the following C++ classes.  
    
        CMenu - stores a list of menu items; presents those 
                menu items on the screen; reads a selected menu 
                item and returns an integer value representing 
                the item selected.
    
        CDateTime - is an abstract base class that defines 
                    those methods needed for date and time 
                    handling.  This base class acquires the 
                    current date and time from the system.  
    
                    One derived class is  **CDate** which 
                    keeps the date in gregorian and julian 
                    formats; holds a string that represents the 
                    current date, i.e. "Monday, November 27, 
                    1995".  The second derived class is 
                     **CTime** which holds the time in 
                    hh:mm:ss format and in twenty-four 
                    hour format.  The base class should declare 
                    are pure virtual functions the overload the 
                    of the following operators:
    
             + : adds a specified number of days to a julian
                 date for  **CDate**.
             + : adds a specified number of minutes to a twenty-four
                 hour time for  **CTime**.
             - : substracts a specified number of days from a
                 julian date for CDate.
             - : substracts a specified number of minutes from a 
                 twenty-four hour time for CTime.
    
        CDocument - opens a disk file and stores or retrieves 
                    data from the file depending upon which 
                    method of the class is called. The 
                    constructor is passed the name of the file 
                    to open, if the file does not exist then it 
                    is created, and the address of a 
                     **CRecord** class or derived class.  The 
                    file is assumed to always be a binary data 
                    file.  This class has a pointer to the 
                     **CRecord** class which holds the 
                    address passed as a parameter of the 
                    constructor.  Overload the following 
                    operators:
    
             ++ : move to next item in document
             -- : move to previous item in document
             +  : add a new item to the document
             -  : delete an item from the document
    
                    Use the pointer to the  **CRecord** type 
                    to access the correct derived class that 
                    knows how to read and write data of the 
                    correct type to and from the disk.
    
        CView - displays data on the screen, one screen at a 
                time; supports the input of 'N' or 'n' for next 
                screen and 'P' or 'p' for previous screen; 
                also, 'q' or 'Q' for quit which returns back to 
                the main menu.
    
        In order for the program to obtain the current date and 
        time from the operating system.  The date and time can 
        be obtained by calling the  **time()** and 
         **localtime()** functions. The following is a 
        sample program that obtains the date and time from the 
        system: 
    
        #include 
        #include types.h>
        #include <time.h>
    
        main()
        {
        struct tm *ptr;
        int nseconds;
    
             nseconds = time( (time_t)NULL );
             ptr = localtime( &nseconds );
             printf("\nptr->tm_sec = %d",ptr->tm_sec);
             printf("\nptr->tm_min = %d",ptr->tm_min);
             printf("\nptr->tm_hour = %d",ptr->tm_hour);
             printf("\nptr->tm_mday = %d",ptr-tm_mday);
             printf("\nptr->tm_mon = %d",ptr->tm_mon);
             printf("\nptr->tm_year = %d",ptr->tm_year);
             printf("\nptr->tm_wday = %d",ptr->tm_wday);
             printf("\nptr->tm_yday = %d",ptr->tm_yday);
             printf("\nptr->tm_isdst = %d",ptr->tm_isdst);
             printf("\n");
        }
    
    The structure, <B>struct tm<B>, has the following layout:
    
        struct tm
        {
             int tm_sec;    /* seconds after the minute ( 0 - 59 ) */
             int tm_min;    /* minutes after the hour ( 0 - 59 ) */
             int tm_hour;   /* hours since midnight ( 0 - 23 ) */
             int tm_mday;   /* day of the month ( 1 - 31 ) */
             int tm_mon;    /* month of the year ( 0 - 11 ) */
             int tm_year;   /* years since 1900 */
             int tm_wday;   /* days since Sunday ( 0 - 6 ) */
             int tm_yday;   /* day of the year ( 0 - 365 ) */
             int tm_isdst;  /* daylight savings time flag */ 
                            /* ( 1 = dst ) */
        };




