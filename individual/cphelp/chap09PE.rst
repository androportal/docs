


Chapter 9: Programming Exercises
================================

::

    
     1. Write a program that prompts for and reads a line of 
        text and uses a stack to reverse that line of text.  
        The program then shows each reversed line on the 
        screen.  The program continues prompting, reading and 
        displaying until the user enters 'end' at the beginning 
        of the line input prompt. 
    
     2. Write a program to compress an ASCII text file and to 
        recover the original text from the compressed text.  
        Whether the program is compressing or uncompressing the 
        text will be indicated by a command line switch.  The 
        switch  **-c** will indicate that compression is to 
        take place.  The switch  **-u** will indicate that
        uncompression is to take place.  The text file will be 
        read by redirection of  **stdin** on the command 
        line.  The compressed text will be written to a file by 
        using redirection of  **stdout** on the command line. 
    
        Compression squeezes a given amount of information so 
        that it requires less storage.  We consider a bit 
        compression technique in which eight characters are 
        compressed into seven bytes, resulting in a 12.5% 
        saving in storage.  This technique exploits the fact 
        that no ASCII letter or punctuation mark uses the 
        eighth bit of a byte.  Therefore, the eighth bit of 
        each of the seven bytes can be used to sotre the eighth 
        character.
    
        For example, the word  **ziggurat** is represented in 
        eight bytes as
    
        byte 0    0111 1010      z
        byte 1    0110 1001      i
        byte 2    0110 0111      g
        byte 3    0110 0111      g
        byte 4    0111 0101      u
        byte 5    0111 0010      r
        byte 6    0110 0001      a
        byte 7    0111 0100      t
    
        The seven significant bits of byte 0 can be distributed 
        into the seven unused positions of bytes 1 through 7.  
        The seven remaining bytes then appear as
    
        byte 1    1 110 1001
        byte 2    1 110 0111
        byte 3    1 110 0111
        byte 4    1 111 0101
        byte 5    0 111 0010
        byte 6    1 110 0001
        byte 7    0 111 0100
    
     3. Fill in the missing pieces where indicated.
    
    #include 
    #include 
    #include 
    #include 
    
    #define MAX_N_A 80
    #define MAX_SSN 11+1
    
    struct EmpPayrollInfo
    {
        int hours;
        int rate;
    };
    
    struct EmpPersonalInfo
    {
        char *name;
        char *address;
        char  ssn[MAX_SSN+1];
        int   id;
        EmpPayrollInfo *payroll;
    };
    
    int main()
    {
    char buffer[MAX_N_A+1];
    int i, len;
    EmpPersonalInfo *emp;
        //
        // allocate the space for the structure
        //
        emp = _______________// fill this                           ________________________
           ___________________//   fill in what goes        ______________
    
        // 
        // prompt for the name and then store it in the
        // structure 
        //
        cout << "Enter employee's name: ";
        fgets(buffer, MAX_N_A, stdin);
        len = strlen(buffer);
        //
        //   allocate space for the name
        //
        emp->name = _________________// fill this         ________________
           ______________//   fill in what goes        ___________________
    
        memset(emp->name, 0, len);
        strncpy(emp->name, buffer, len-1);
        //
        // prompt for the address and then store it in the 
        // structure
        //  
        ______________________// fill in what goes     _____________
        // 
        //  prompt for the ssn and store it in the structure 
        //
        _____________________// fill in what goes     ______________
        //
        // prompt for the emp id and store it in the structure 
        //
        ____________________// fill in what goes     _______________
        //
        // prompt for some number of weeks of payroll data 
        //
        cout << "How many weeks of payroll data? ";
        cin >> len;
        //
        // note: this basically allocates an array of 'len' 
        // size 
        //
        emp->payroll = ___________// fill in what goes here     ________
        _________________________// fill in what goes     __________
        //
        //   fill in the array
        //
        for (i=0; i<< "Enter hours for week " << i+1 << ": ";
           __________________// fill in what goes        ______________
           cout << "Enter rate  for week " << i+1 << ": ";
           _________________// fill in what goes        _______________
        }
        //
        // print out all employee info 
        //
        cout << ___________// fill in what goes             ________________
        //
        //   loop to print array held data 
        //
        for (i=0; i<< __________// fill in what goes 
                   _____________
        }
    } 




