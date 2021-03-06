


Chapter 7: Review Questions
===========================

::

    
     1. Which data type cannot be used when declaring an array?
    
        a) char
           
        b) float
           
        c) double
           
        d) All of the above can be used.
           
     2. Which data type is used for array subscripts?
           
        a) char only
           
        b) int only
           
        c) char and int only
           
        d) int, float, and char only
           
     3. Which of the following is true?
           
        a) The subscript time[7] is the last subscript in an
           array declared as time[7].
           
        b) The subscript time[6] is the last subscript in an
           array declared as time[7].
           
        c) The subscript time[8] is the last subscript in an
           array declared as time[7].
           
        d) The subscript time[5] is the last subscript in an
           array declared as time[7].
           
     4. An integer array named array_1 designed to store 25 
        integers is delcared as:
           
        a) array_1(25);
           
        b) int array_1[24];
           
        c) array_1[24];
           
        d) int array_1[25];
    
     5. In the following code fragment, which is stored in the
        element, maxnum[4]?
           
        {
             :
             maxnum[2] = 6;
             maxnum[3] = maxnum[2];
             maxnum[4] = (maxnum[2] + maxnum[3]) * 3;
             :
        }
           
        a) 15
           
        b) 24
           
        c) 36
           
        d) 48
           
     6. Given the following code fragment, what is the value of
        arg1[5]?
           
        static int arg1[] = {1,2,3,4,5};
           
        a) 0
           
        b) 4
           
        c) 5
           
        d) Not a meaningful value, since the maximum value of
           arg1 is arg1[4].
    
     7. Which of the following code fragments is correct for 
        setting the first hundred scores to zero?
           
        a) for(x = 1; x <= 100; x++)
             scores[x] = 0;
           
        b) for(x = 0; x <= 100; x++)
             scores[x] = 0;
           
        c) for(x = 1; x < 100; x++)
             scores[x] = 0;
           
        d) for(x = 0; x < 100; x++)
             scores[x] = 0;
    
     8. Given the following code fragment, which of the 
        following is correct?
           
        num[3] = 9;
        --num[3];
           
        a) num[3] = 9
           
        b) num[2] = 9
           
        c) num[3] = 8
           
        d) num[2] = 8
           
     9. Suppose the entire array static int num[1000] is to be
        passed to a function cube().  The correct function call 
        is:
           
        a) cube(num);
           
        b) num(cube);
           
        c) cube[num];
           
        d) cube(num[1000]);
           
    10. Suppose the character string name[20] is to be printed 
        using the printf() function.  The correct statement is:
           
        a) printf("\n %s \n", name);
           
        b) printf("\n %c \n", name);
           
        c) printf("\n %s \n", name[20]);
           
        d) printf("\n %c \n", name[20]);
           
    11. Which one of the following is the correct syntax for a
        two-dimensional array?
           
        a) array[rows],[columns]
           
        b) array[columns][rows]
           
        c) array[columns],[rows]
           
        d) array[rows][columns]
    
    12. Which of the following declares a float array called
        worksheet[], with 30 rows and 50 columns?
           
        a) float worksheet array[30][50];
           
        b) float worksheet[50][30];
           
        c) float worksheet[30][50];
           
        d) worksheet[30][50] = float;
           
    13. How many elements does the array value[] contain, where
        the array is declared as:
           
        int value[10][10][10];
           
        a) 10
    
        b) 100
           
        c) 1000
           
        d) 10000
           
    14. Given the following character array, what does state[4]
        reference?
           
        char state[5][3] = {"AA","BB","CC","DD","EE"};
           
        a) The address of the first character in the string CC.
    
        b) The address of the first character in the string DD.
           
        c) The address of the first character in the string EE.
           
        d) None of the above, since state[][] is incorrectly
           referenced.
           
    15. Given the following character array, what does the
        state[3][1] reference?
           
        char state[5][3] = {"AT","BU","CV","DX","EY"};
           
        a) The letter X.
           
        b) The letter Y.
           
        c) The letter V.
           
        d) The letter D.
    
    16. Which of the following initializes all of the elements
        in the array counter[5][6] to 1?
           
        a)  for(x = 0; x <= 5; x++)
                  for(y = 0; y <= 6; y++)
                       counter[x][y] = 1;
           
        b)  for(x = 0; x < 5; x++)
                  for(y = 0; y < 6; y++)
                       counter[x][y] = 1;
           
        c)  for(x = 0; x < 5; x++)
                  for(y = 0; y < 6; y++)
                       counter[y][x] = 1;
           
        d)  for(x = 0; x < 5; x++)
                  for(y = 0; y < 5; y++)
                       counter[x][y] = 1;
           
    17. In initializing a type int two-dimensional array using
        a row-by-row format, which of the following rules is
        incorrect?
           
        a) Inner braces set off each row.
           
        b) Commas follow each entry in the elements list.
           
        c) Commas follow each set of inner braces.
           
        d) both statements b and c are incorrect.
           
    18. Given the following code fragment, what is the value of
        num[3][5]?
           
        num[1][3] = 6;
        num[1][4] = 7;
        num[1][5] = 4;
        num[3][5] = (num[1][3] + num[1][5]) * num[1][4];
           
        a) 52
    
        b) 70
           
        c) 32
           
        d) 40
    
    19. If Charles is compared to Charley, using the strcmp()
        function, the value returned is
           
        a) 0
           
        b) > 0
           
        c) < 0
           
        d) -1
           
    20. What is the purpose of the strcpy() function?
           
        a) To assign the value of string2 to stirng1.
    
        b) To determine if string2 is larger than string1.
           
        c) To assign the value of string1 to string2.
           
        d) To determine if string1 is larger than string2.
           
    21. Which of the following declares an array called text[] 
        to be an array of 9 character pointers?
           
        a) char *text[][];
           
        b) char [];
           
        c) char *text[9];
           
        d) char *text[][9];
           
    22. How many bytes of memory would the compiler allocate 
        for the following statement?
           
        char names[][5] =  {"Roy ","Paul","Jim "};
           
        a) 15
           
        b) 24
           
        c) 4
           
        d) 10
    




