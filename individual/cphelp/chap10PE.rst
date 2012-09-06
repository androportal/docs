


Chapter 10: Programming Exercises
=================================

::

    
     1. Write a class called  **CAccount** which contains two
        private data elements, an integer  **accountNumber** 
        and a floating point  **accountBalance**, and three 
        member functions:
    
             1. A constructor that allows the user to set 
                initial values for  **accountNumber** and 
                 **accountBalance** and a default constructor 
                that prompts for the input of the values for 
                the above data members.
    
             2. A function called  **inputTransaction**, 
                which reads a  character value for 
                 **transactionType** ('D' for deposit
                and 'W' for withdrawal), and a floating point 
                value for  **transactionAmount**, which 
                updates  **accountBalance**.
    
             3. A function called  **printBalance**, which 
                prints on the screen the  **accountNumber** 
                and  **accountBalance**.
            
     2. Design a class  **CCourse** that will hold the 
        courses that are offered at a local college.  The class 
        should at least have the following data members:
        
             year = the calendar year the class is being taught 
             term = the term the class is being taught in 
                    (FALL, WINTER, SPRING, SUMMER)
             courseNumber = the course prefix and number 
                            (edp171, chm201, ... )
             sectionNumber = the three character value that  
                             identifies what specific section 
                             of the course is being taught
             building = what building the course is being 
                        taught in        
             room = what room the course is being taught in
             beginTime = what time the course starts (the 
                         beginning time can vary from one 
                         meeting to the next, 
                         i.e., The class meets at 1:00PM on 
                         Monday and Wednesday, but at 1:30PM on 
                         Tuesday and Thursday.)                      
             endTime = what time the course starts (the ending 
                       time can vary from one meeting to the 
                       next, i.e., The class ends at 3:00PM on 
                       Monday and Wednesday, but at 3:30PM on 
                       Tuesday and Thursday.)
             meetingDays = what days of the week the course 
                           meets, usually more than once a 
                           week.
    
        Develop all methods needed by the class.  You do not 
        have to  write a program to use the class.
    
     3. Design a class  **CDocument** that will hold lines 
        that compose the contents of a document.  A document 
        can be text that comes from disk file or a list of 
        lines that are temporarily being held in memory.  The 
        class should have a 'has-a' relationship with a 
         **CDblList** class which is a double linked list 
        class.  The  **CDocument** class should at least have 
        the following capabilities:
    
             1. A constructor that is passed the name of a disk 
                file.  The file will be opened, the contents 
                read and each line from the file will be stored 
                into an element of  the linked list.
    
             2. A default constructor that initializes the list 
                as  being empty.
    
             3. A copy constructor that initializes the list 
                from another instance of the  **CDocument**.
    
             4. A group of browse functions for the list, such
                as:
    
                  - insert a new item in the list
                  - delete an item from the list
                  - move to the beginning of the list
                  - move to the end of the list
                  - move to the next item in the list
                  - move to the previous item in the list
                  - are we at the beginning of the list
                  - are we at the end of the list
                  - return the value from the current item in 
                    the list
    
             5. A method that returns a reference to the 
                current instance of the  **CDocument** class.
    
        Develop all methods needed by the class.  You do not 
        have to write a program to use the class.        
    
     4. Design a class  **CView** that will allow for the 
        display of  lines of text.  The class will paginate any 
        output, pausing at the end of each screen full shown 
        and allowing the input of the following commands:
    
                  - N or n for move to next page
                  - P or p for move to previous page
                  - Q or q to quit the display and return to 
                    the menu
    
        The  **CView** class should at least have the 
        following capabilities:
    
             1. A constructor that is passed the address of a 
                 **CDocument** class.  The  **CDocument** 
                class manages the document that will be viewed.
    
    
             2. A default constructor that initializes the 
                display device to be blank.
    
        Develop all methods needed by the class.  You do not 
        have to write a program to use the class.        




