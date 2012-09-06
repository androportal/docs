


Chapter 13 File Processing
==========================

This chapter is designed to explore the mechanisms used by C and C++
to access external files residing on disk.


13.1 High Level, Buffered or Stream I/O
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

C programs have access to two completely different sets of file input-
output functions. High level file functions are recognized by the ANSI
C standards committee. Low level file access are what the high level
functions are built upon. The low level routines reside as intrinsics
built into the operating system in most multi-user, multi-tasking
operating systems and as such provide improvements in speed and size
over functions residing within a library. In MS-DOS, the low-level
routines are functions that reside in the standard C library and
provide no benefit over the high-level file functions.
High-level file access structures the file access through memory
buffers. These buffers hold data going to or coming from the file. On
a file being accessed for write, the data being written to the file is
actually written to the memory buffer for the file. When the buffer is
full, then the data is transferred to the disk with one physical
write. Therefore, it is proper to say that high-level file access has
two distinct views of the file, the logical view and the physical
view. The logical view is where the programmer assumes that each time
a write is performed the data is written to the file, where in reality
the data is placed into a memory buffer for later transfer to the
file. The physical view is where the input-output subsystem of the
operating system is used to transfer the memory buffer contents to the
disk with one input-output operation.
High-level file access makes life easier for the programmer because
there is no need to know about sector sizes, buffer lengths or other
operating system dependent considerations. The only need is to have a
pointer to FILE type data and through that pointer access to the
caching buffer that holds the data.

::

    
        FILE *fp;


High-level file access has the following functions available:

::

    
     **FILE *fopen(char *filename, char *mode);**


The argument **filename** is the physical name of the file on disk,
including the drive designator, path, and extension. This argument can
be a string literal, or variable.
The **mode** is a string literal or variable holding the mode that the
file is to be opened with. Allowable modes for IBM PC are:

::

    
        "r" => read; file must exist
        
        "w" => write; file does not exist it is created;
               if it does exist, it is overwritten
    
        "a" => append; data added to the end of the 
               existing data, or new file created
    
        "r+" => open for both read and write; the file must exist
    
        "w+" => open for both read and write; if file
                exists contents over-written; if doesn't exist,
                created
    
        "a+" => open for both read and appending; if 
                doesn't exist, create


The function returns an address if the file is opened. If the file
could not be opened, the function returns a NULL value for the
address.


Fig. 13.1
`````````

::

    
    #include <stdio.h>
    ...
    FILE *fp;
        ...               
        if((fp=fopen("test.dat","w")) == NULL)
        {
             puts("Cannot Open File");
             exit(1);
        }


::

    
     **int fclose( FILE *stream);**


This function closes an open stream in an orderly fashion, which
includes the flushing of any data held in internal data buffers to the
disk. The function returns an EOF if an error is detected, otherwise
it returns zero.

::

    
     **int fputc(char c, FILE *fp);**


The argument **c** is a character to be written to the disk and **fp**
is the FILE pointer to the data stream where the data is to be
written.
The function returns an **EOF**, usually a -1, to indicate an end-of-
file or error. If the function succeeded, the function returns the
character that was written.


Fig. 13-2
`````````

::

    
    #include <stdio.h>
    /* 
    *   The following statements send a line of output to a stream
    */
        ...
        for(i = 0;
            (i < 80) && (fputc( str[i], stream) != EOF)
             && (str[i] != '\n'); i++);


::

    
     **int fgetc( FILE *fp );**


The argument **fp** is a pointer to a **FILE** type object that has
been opened and is capable of handling output.
On success the function returns the integer ASCII value that
represents the read. If the function fails, meaning it encountered an
end-of-file condition or someother error, it returns an **EOF**,
usually -1.


Fig. 13-3:
``````````

::

           
    #include <stdio.h>
    /* 
    *   The following statements gathers a line of input from a 
    *   stream
    */
        ...
        for(i = 0;
             (i < 80) && ((ch = fgetc(stream)) != EOF)
             && (ch != '\n'); i++)
                  buffer[i] = ch;
        buffer[i] = '\0';


::

    
     **char *fgets(char *str, int num, FILE *fp);**


The argument **str** is a character array or pointer to a character
array and **num** is the maximum number of characters to be read into
the string **str **. The argument **fp** is the FILE pointer into the
data stream. Characters are read from the input stream into **str**
until

#. a newline is seen,
#. end-of-file is reached, or
#. num-1 characters have been read without encountering end-of-file or
   a newline character.

On success the function returns the address of the buffer that was
filled, in the example, that would be the address of **str**. If an
error or end-of-file is encountered, the function returns a NULL
value.


Fig. 13-4:
``````````

::

    
    #include <stdio.h>
    /* 
    *   The following statement gets a line of input from a stream. 
    *   No more than 99 characters, or up to \n, are read from the 
    *   stream
    */
        ...
        result = fgets(line,100,stream);

**int fputs(char *str, FILE *fp);**
The argument **str** is the character array or pointer to an array of
null-terminated characters that are to be written to the stream
**fp**.
The function returns the last character output, if successful. If the
string is empty, the return value is 0 on most systems, but some UNIX
implementations return an indeterminate value. A return of EOF,
usually -1, indicates an error.


Fig. 13-5:
``````````

::

           
    #include <stdio.h>
    /* 
    *   The following statement writes a string to a stream
    */
        ...
        result = fputs(buffer,stream);

**int fprintf(FILE *stream,char *format-string[,arguments...]);**
The argument **stream** is the data stream where the data is to be
written. **format-string** contains escape-sequences and format-
specifiers exactly like those used in **printf()**, and the
**arguments** are data items that correspond to the format-specifiers.
On success the function returns the number of characters printed. If
the function cannot write to the data stream, the return value is EOF.


Fig. 13-6:
``````````

::

    
    #include <stdio.h>
    ...
    File *stream;
    int i = 10;
    double fp = 1.5;
    char *s = "this is a string";
    char c = '\n';
        ...    
        stream = fopen("results","w");
        ...           
        fprintf(stream,"%s%c",s,c);
        fprintf(stream,"%d\n",i);
        fprintf(stream,"%f",fp);

**int fscanf(FILE *stream,char *format-string[,arguments...]);**
The argument **stream** is the data stream to be read. **format-
string** contains the format-specifiers for data conversion,
**arguments** are those variables that data is to be stored into.
On success the function returns the number of fields that were
successfully converted and assigned. The return value does not include
fields that were read but not assigned. The EOF value is returned on
attempt to read end-of-file. The value 0 is returned, if no fields
were assigned.


Fig. 13-7:
``````````

::

           
    #include <stdio.h>
    ...    
    FILE *stream;
    long l;
    float fp;
    char s[81];
    char c;
        ...
        stream = fopen("data","r");
        ...
        fscanf(stream,"%s",s);
        fscanf(stream,"%c",);
        fscanf(stream,"%ld",);
        fscanf(stream,"%f",);

**int fread(char *buffer, int size, int count, FILE *stream);**
This function reads up to **count** items of length **size** from the
input **stream** and stores them in the given **buffer**. The file
pointer is incremented by the number of bytes actually read.
If the given **stream** was opened in text mode, carriage-
return/linefeed pairs are replaced with single linefeed characters.
The replacement has no effect on the file pointer or the return value.
On success the function returns the number of full items actually
read, which may be less than **count** if an error occurs or if the
end-of-file is encountered before reaching **count**.


Fig. 13-8:
``````````

::

    
    #include <stdio.h>
    ...
    FILE *stream;
    long list[100];
    int numread;
        ...
        stream = fopen("data","r+b");
        .
        .
        .
        numread = fread((char *)list,sizeof(long),100,stream);

**int fwrite(char *buffer,int size,int count,FILE *stream);**
The function writes up to **count** items of length **size** from
**buffer** to the output **stream**. The file pointer associated with
**stream** is incremented by the number of bytes actually written.
If the given **stream** was opened in text mode, each carriage-return
is replaced with a carriage-return/linefeed pair. The replacement has
no effect on the return value.
On success the function returns the number of full items actually
written, which may be less than **count** if an error occurs.


Fig. 13-9:
``````````

::

    
    #include <stdio.h>
    ...
    FILE *stream;
    long list[100];
    int numwritten;
        ...
        stream = fopen("data","w+b");
        ...
        numwritten = fwrite((char *)list,sizeof(long),100,stream);

**int fseek(stream,offset,origin)** **stream **to a new location that
is **offset** bytes from the **origin**. The next operation on the
stream takes place at the new location. On a stream open for update,
the next operation can be either a read or a write.
The **origin** can be one of the following defined constants that
appear in **io.h**.

::

    
        constant          origin         meaning
    
        SEEK_SET             0            beginning of file
        SEEK_CUR             1            current position
                                          of file pointer
        SEEK_END             2            end of file


On success the function returns the value 0 if the pointer was
successfully moved. A nonzero return value indicates an error. On
devices incapable of seeking, the value returned is undefined.


Fig. 13-10:
```````````

::

           
    #include <stdio.h>
    ...     
    FILE *stream;
    int result;
        ...
        stream = fopen("data","r");
        .
        .
        .
        result = fseek(stream,0L,0);  /* beginning of file */

**int feof(FILE *stream);**
This function determines whether the end of the given **stream** has
been reached. Once end-of-file is reached, read operations return an
end-of-file indicator until the stream is closed or rewind() is
called.
On success the function resturns a nonzero value when the current
position is end-of-file. The value 0 is returned if the current
position is not end-of-file. There is no error return.


Fig. 13-11:
```````````

::

    
    #include <stdio.h>
    ...
    char string[100]
    FILE *stream;
        ...
        while(!feof(stream))
        {
             if(fscanf(stream,"%s",string))
                  process(string);
        }

**int ferror(FILE *stream);**
This function tests for a reading or writing error on the given
**stream**. If an error has occurred, the error indicator for the
**stream** remains set until the **stream** is closed, rewound or
until clearerr() is called.
On success this function returns a nonzero value to indicate an error
on the given **stream**. The return value 0 means no error has
occurred.


Fig. 13-12:
```````````

::

       
    #include <stdio.h>
    ...         
    FILE *stream;
    char *string;
    ...
        fprintf(stream,"%s\n",string);
        if(ferror(stream))
        {
             perror("write error");
             clearerr(stream);
        }

**void perror(char *string);**
This function prints an error message to stderr. The **string**
argument is printed first, followed by a colon, the system error
message for the last library call that produced an error, and a
newline.
The actual error number is in the variable **errno**, which should be
declared at the external level. The system error messages are accessed
through the variable **sys_errlist**, which is an array of messages
ordered by error number. This function has no return values.


Fig. 13-13:
```````````

::

    
    #include <stdio.h>
    ...
    FILE *stream;
    ...
        if((stream = fopen("data","r")) == NULL)
        {
             perror("Couldn't open file");
             abort();
        }



13.2 Low Level Unix Like I/O or Un-buffered I/O
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Although these functions are defined within the ANSI C standard, they
are available on all C compilers. The true use of these functions when
a multi-user, multi-tasking operating system such as UNIX is used. On
such operating systems these routines are built into the operating
system kernel and give low-level access to all devices available on
the system. All device drivers for such operating systems are written
using these system routines to open, close, read and write to the
specified device. In the MS- DOS operating system and Microsoft
Windows operating environment, these are functions that reside within
the standard C library and do not necessarily provide any low-level
access to devices.
When these routines are used there is no buffering within the
operating system between the application and the disk file. The
programmer is responsible for setting up a buffer within the
application that holds the data to be written or filled on a read.
Since there is no operating system buffer to contend with, these
routines are more efficient than standard high-level I/O functions.
Use of the low-level routines tend to produce smaller programs and
faster execution speeds.
The functions available: **int open(char *pathname, int oflag[, int
pmode]);**
This function opens the file specified by **pathname** and prepares
the file for subsequent reading or writing as defined by **oflag**.
The argument **oflag** is an integer expression formed by combining
one or more of the following manifest constants, defined in
**fcntl.h**. When more than one manifest constant is given, the
constants are joined with the bitwise OR operator.

::

    
        O_RDONLY            Open for reading only.
        O_WRONLY            Open for writing only.
        O_RDWR              Open for reading and writing.
        O_APPEND            Each write to the file will be at the 
                            end of the file.
        O_CREAT             If the file exists, O_CREAT is ignored.
                            However, if the file does not exist, it
    				    is created with mode  **pmode**.
        O_TRUNC             If the file exists, its contents will
                            be discarded.
        O_EXCL              If O_CREAT and O_EXCL are set, then
    				     **open()** fails if the file exists.
        O_NDELAY            When opeing pipes, FIFOs, and 
                            communication-line special files, this 
    				    flag determines whether  **open()** waits
                            or returns immediately.  Subsequent reads
                            and writes are also affected.  This has
                            no effect on ordinary files and 
                            directories.
        O_BINARY            Can be given to explicitly open the file 
                            in binary mode.
        O_TEXT              Can be given to explicitly open the file 
                            in text mode.


The argument **pmode** is only if the O_CREAT flag is in effect. This
argument is used in constructing the access permissions to the file.
The permissions are found as manifest constants in the **sys/stat.h**
header file. Those constants are defined as follows:

::

    
        S_IWRITE            Permission to write for the user.
        S_IREAD             Permission to read for the user.


The above two constants are the only ones available on a PC compiler.
With UNIX the above constants are defined as S_IRUSR and S_IWUSR and
the following constants are also available:

::

    
        S_ISUID             set user ID on executions
        S_ISGID             set group ID on execution
        S_IRWXU             read, write, execute permission (owner)
        S_IRUSR             read permission (owner)
        S_IWUSR             write permission (owner)
        S_IXUSR             execute permission (owner)
        S_IRWXG             read, write, execute permission (group)
        S_IRGRP             read permission (group)
        S_IWGRP             write permission (group)
        S_IXGRP             execute permission (group)
        S_IRWXO             read, write, execute permission (other)
        S_IROTH             read permission (other)
        S_IWOTH             write permission (other)
        S_IXOTH             execute permission (other)


On success the function returns a file handle or descriptor for the
opened file. A return value of -1 indicates an error, and **errno** is
set to an error code value.


Fig. 13-14:
```````````

::

                
    #include <fcntl.h>
    #include <sys/types.h>
    #include <sys/stat.h>
    #include <io.h>
    #include <stdlib.h>
    ...
    int fh1, fh2;
    ...
        fh1 = open("data1",O_RDONLY);
        if(fh1 == -1 )
             perror("Open Failed");
        ...
        fh2 = open("data2",O_WRONLY|O_TRUNC);
        if(fh2 == -1)
             perror("Couldn't Open Output");

**int creat(char *pathname, int pmode);**
This function creates a new file or opens and truncates an existing
file. The permission setting, **pmode**, applies to newly created
files only. The new file receives the specified permission setting
after it is closed for the first time.
The **pmode** is an integer expression containing one or both of the
manifest constants defined in **/sys/stat.h**.
On success the function returns a handle for the created file if the
call is successful. A return value of -1 indicates an error, errno is
set to one of the manifest constant error codes.


Fig. 13-15:
```````````

::

    
    int fh;
    ...
        fh = creat("data",S_IREAD|S_IWRITE);
        if(fh = -1)
             perror("Couldn't Create File");

**int read(int handle, char *buffer, int count);**
This function attempts to read **count** bytes from the file
associated with **handle** into **buffer**. After the read, the file
pointer points to the next unread character in the file.
On success this function returns the number of bytes actually read,
which may be less than **count** if there are fewer than **count**
bytes left in the file or if the file was opened in text mode. A value
of 0 indicates end-of-file. A value of -1 indicates an error.


Fig. 13-16:
```````````

::

    
    int fh, bytesread;
    unsigned int nbytes = BUFSIZ;
    char buffer[BUFSIZ];
    ...
        bytesread = read(fh,buffer,nbytes);

**int write(int handle,char *buffer,int count);**
This function attempts to write **count** bytes from **buffer** into
the file associated with **handle**.
On success this function returns the number of bytes actually written.
The value of -1 is returned to indicate an error.


Fig. 13-17:
```````````

::

    
    int fh, byteswritten;
    unsigned int nbytes = BUFSIZ;
    char buffer[BUFSIZ];
    ...
        byteswritten = write(fh,buffer,nbytes);

**long lseek(int handle,long offset,int origin)**
This function moves the file pointer associated with **handle** to a
new location that is **offset** bytes form the **origin**. The
**origin** can be one of the following defined constants that appear
in **io.h**.

::

    
        constant          origin         meaning
    
        SEEK_SET             0            beginning of file
        SEEK_CUR             1            current position
                                          of file pointer
        SEEK_END             2            end of file       


On success this function returns the offset, in bytes, of the new
position relative to the beginning of the file. A return value of -1L
indicates an error.


Fig. 13-18:
```````````

::

    
    #include <io.h>
    #include <fcntl.h>
    #include <stdlib.h>
    ...
    int fh;
    long position;
    ...
        fh = open("data",O_RDONLY);
    ...
        /* 0 offset from beginning */
        position = lseek(fh, 0L, SEEK_BEG);
        if(position == -1L)
             perror("lseek failed");

**int unlink(char *pathname);**
This function deletes the file specified by **pathname**.
On success this function returns the value of 0 if the file is
successfully deleted. A return value of -1 indicates an error and
**errno** is set to hold the system error number.


Fig. 13-19:
```````````

::

    
    #include <io.h>
    #include <stdlib.h>
    ...
    int result;
    ...
        result = unlink("tmpfile");
        if(result == -1)
             perror("Couldn't Delete File");



Listing 13-1
````````````

::

    
    /***************************************************************
    *   Program Name    :   testio
    *   Source Name     :   testio.c
    *   Description     :   Demonstration program to show different 
    *                   :   techniques for writing to and reading 
    *                   :   from the disk. 
    ****************************************************************/
    
    
    #include <stdio.h>  /* all I/O functions */
    #include <fcntl.h>  /* all UNIX low level functions*/
    #include <string.h> /* all string manipulation functions */
    #include <stdlib.h> /* permission modes for UNIX low level */
    #include <io.h>
    #include <sys/types.h>
    #include <sys/stat.h>
    
    extern int errno;   /* needed to go with perror() */
    /*
    *       describe a structure template, no variable of declared
    */                    
    typedef
    struct tagPERSON
    {
        char name[30];
        char street[20];
        char city[20];
        char state[3];
        char zip[6];
        char ssn[13];
        int age;
        int height;
        int weight;
    } PERSON;
    /*
    *   function prototypes
    */
    int getdata( PERSON * );
    int showdata(PERSON * );
    int puts_gets( void );
    int fprnt_fscan( void );
    int fread_fwrite( void );
    int read_write( void );
    int err_handler(FILE *, char *, int );
    /*
    *       S T A R T   O F   P R O G R A M
    */
    int main()
    {
    char ans[2];
    int which;
        /*
        *       which functions are to be executed
        */
        do {
            printf("\nWhich set of I/O functions are to be tested?");
            printf("\n    1. fputs and fgets");
            printf("\n    2. fprintf and fscanf");
            printf("\n    3. fread and fwrite");
            printf("\n    4. read and write");
            printf("\n    5. quit this program");
            printf("\nEnter your selection: ");
            gets(ans);
            which = atoi(ans);
            switch(which)
            {
                case 1:
                    puts_gets();
                    break;
                case 2:
                    fprnt_fscan();
                    break;
                case 3:
                    fread_fwrite();
                    break;
                case 4:
                    read_write();
                    break;
                case 5:
                    return(0);
                default:
                    printf("\n\nInvalid selection . . . try again!");
                    break;
            }
        }while(1);
    }
    /*
    *   read data from screen into structure elements
    */
    int
    getdata( PERSON *ptr)
    {
    int result;
    
        printf("\nEnter your name: ");
        gets(ptr->name);
        printf("\nEnter your street: ");
        gets(ptr->street);
        printf("\nEnter your city: ");
        gets(ptr->city);
        printf("\nEnter your state: ");
        gets(ptr->state);
        printf("\nEnter your zip code: ");
        gets(ptr->zip);
        printf("\nEnter your ssn: ");
        gets(ptr->ssn);
        printf("\nEnter your age: ");
        scanf("%d",>age);
        printf("\nEnter your height: ");
        scanf("%d",>height);
        printf("\nEnter your weight: ");
        scanf("%d",>weight);
        /*
        *    flush the input data stream so no newlines are left
        */
        if((result = fflush(stdin)) == EOF)
            err_handler(stdin,"stdin",1);
        return 0;
    }
    /*
    *   display the data held in structure elements on the screen
    */
    int
    showdata(PERSON *ptr)
    {
        printf("\nPERSON: %s",ptr->name);
        printf("\n      : %s",ptr->street);
        printf("\n      : %s",ptr->city);
        printf("\n      : %s",ptr->state);
        printf("\n      : %s",ptr->zip);
        printf("\n      : %s",ptr->ssn);
        printf("\n      : %d",ptr->age);
        printf("\n      : %d",ptr->height);
        printf("\n      : %d",ptr->weight);
        return 0;
    }
    /*
    *   Using fputs() and fgets() write data to and read data back 
    *   from the disk.  These functions only work with string data.
    */
    int
    puts_gets()
    {
    FILE *fp;
    PERSON my;
    char *val;
    char ans[2],filename[16],text[80];
    int
        rtnval
        ,linecnt
        ,lgth
        ;
        /*
        *       load file name
        */
        strcpy(filename,"testfil1.dat");
        /*
        *       open test data set
        */
        if((fp = fopen(filename,"w")) == NULL)
            err_handler(fp,filename,1);
        do {
            /*
            *       acquire data
            */
            printf("\nEnter Text:");
            gets(text);
            /*
            *       write to disk
            */
            lgth = strlen(text);
            text[lgth] = '\n';      /* replace NULL terminator */
            text[lgth + 1] = '\0';  /* place NULL terminator  */
            if((rtnval = fputs(text,fp)) == EOF)    
                err_handler(fp,filename,2);
            /*
            *       keep going?
            */
            strcpy(ans," ");
            printf("\nContinue(Y/N)? ");
            gets(ans);
        }while(!strcmp(ans,"y"));
        if((rtnval = fclose(fp)) == EOF)
        {
            err_handler(fp,filename,3);
        }
        /*
        *       open test data set
        */
        if((fp = fopen(filename,"r")) == NULL)
            err_handler(fp,filename,3);
        /*
        *       print the data back on the screen
        */
        linecnt = 0;
        do {
            /*
            *   read data from disk, newline is only way to 
            *   distinguish records
            */
            if((val = fgets(text,sizeof(text),fp)) == NULL)
                if(err_handler(fp,filename,3))
                    break;
            /*
            *       display data on screen
            */
            printf("\nLine %d:%s",linecnt,text);
            ++linecnt;
            strcpy(ans," ");
            printf("\nContinue(Y/N)? ");
            gets(ans);
        }while(!strcmp(ans,"y"));
        if((rtnval = fclose(fp)) == EOF)
        {
            err_handler(fp,filename,3);
        }
        return 0;
    }
    /*
    *   Using fprintf() and fscanf() functions write data to and
    *   read data from the disk.  Notice that fscanf() has same 
    *   limitations as scanf()
    */
    int
    fprnt_fscan()
    {
    FILE *fp;
    PERSON my;
    char filename[16],lname[20],tstreet[20],ans[2];
    int
        rtnval
        ;
        /*
        *       load filename
        */
        strcpy(filename,"testfil2.dat");
        /*
        *       open test data set
        */
        if((fp = fopen(filename,"w")) == NULL)
        {
            perror("FPRNT_FSCAN(): cannot open file for write");
            exit(3);
        }
        do 
        {
             /*
             *    inform user of limitations
             */
             printf("\nEnter only a single string ");
             printf("for name, street and city");
            /*
            *       acquire data
            */
            getdata();
            /*
            *       write to disk
            */
            if((rtnval = fprintf(fp,"%s %s %s %s %s %s %d %d %d\n",
                                 my.name,
                                 my.street,
                                 my.city,
                                 my.state,
                                 my.zip,
                                 my.ssn,
                                 my.age,
                                 my.height,
                                 my.weight)) == EOF)
            {
                perror("FPRNT_FSCAN(): cannot fprintf to file");
                exit(4);
            }
            /*
            *       keep going?
            */
            strcpy(ans," ");
            printf("\nContinue(Y/N)? ");
            gets(ans);
        }while(!strcmp(ans,"y"));
        fclose(fp);
        /*
        *       open test data set
        */
        if((fp = fopen(filename,"r")) == NULL)
        {
            perror("FPRNT_FSCAN(): cannot open file for read");
            exit(5);
        }
        /*
        *       print the data back on the screen
        */
        do 
        {
            /*
            *     read data from disk, notice fscanf has same 
            *     limitation in scanning disk data as scanf has 
            *     in screen data; it delimits values by whitespace
            */
            if((rtnval = fscanf(fp,
                                "%s %s %s %s %s %s %s %s %d %d %d",
                                my.name,
                                lname,
                                my.street,
                                tstreet,
                                my.city,
                                my.state,
                                my.zip,
                                my.ssn,
                                ,
                                ,
                                )) == NULL)
            {
                perror("FPRNT_FSCAN(): cannot fscanf from file");
                exit(3);
            }
            /*
            *       display data on screen
            */
            showdata();
            strcpy(ans," ");
            printf("\nContinue(Y/N)? ");
            gets(ans);
        }while(!strcmp(ans,"y"));
        fclose(fp);
        return 0;
    }
    /*
    *   Using the fwrite() and fread() functions write data to and 
    *   read data from the disk.  These are block oriented, 
    *   high-level buffered I/O functions.
    */
    int
    fread_fwrite()
    {
    FILE *fp;
    PERSON my;
    char filename[16],ans[2];
    int
        rtnval
        ;
        /*
        *       load filename
        */
        strcpy(filename,"testfil3.dat");
        /*
        *    open test data set, binary mode because of integer 
        *    values to be written
        */
        if((fp = fopen(filename,"w+b")) == NULL)
        {
            perror("FREAD_FWRITE(): cannot open file for write");
            exit(6);
        }
        do {
            /*
            *       acquire data
            */
            getdata();
            /*
            *     write to disk;
            *      = the address of the buffer to be written
            *     sizeof(my) = the number of bytes to be written
            *     1 = the number of items of the above size to be 
            *         written
            *     fp = the stream pointer
            */
            if((rtnval = fwrite(,sizeof(my),1,fp)) == EOF)
            {
                perror("FREAD_FWRITE(): cannot fwrite to file");
                exit(7);
            }
            /*
            *       keep going?
            */
            strcpy(ans," ");
            printf("\nContinue(Y/N)? ");
            gets(ans);
        }while(!strcmp(ans,"y"));
        fclose(fp);
        /*
        *    open test data set, allow for binary data because of 
        *    integer type values
        */
        if((fp = fopen(filename,"r+b")) == NULL)
        {
            perror("FREAD_FWRITE(): cannot open file for read");
            exit(8);
        }
        /*
        *       print the data back on the screen
        */
        do {
            /*
            *     read data from disk; must be tested for less than 
            *     the count of items (1) to detect EOF
            */
            if((rtnval = fread(,sizeof(my),1,fp)) < 1)
                if(err_handler(fp,filename,9))
                    break;
            /*
            *       display data on screen
            */
            showdata();
            strcpy(ans," ");
            printf("\nContinue(Y/N)? ");
            gets(ans);
        }while(!strcmp(ans,"y"));
        fclose(fp);
        return 0;
    }
    /*
    *   Using the write() and read() functions, write data to and 
    *   read data from the disk.  These are low-level, unbuffered, 
    *   UNIX like I/O functions.
    */
    int
    read_write()
    {
    char buf[512];
    int fp;
    PERSON my;
    char filename[16], ans[2];
    int
        rtnval
        ;
        /*
        *       load filename
        */
        strcpy(filename,"testfil4.dat");
        /*
        *    open test data set, binary mode because of integer 
        *    values to be written; create dataset if not there
        *    O_WRONLY|O_CREAT|O_BINARY = open the file and write 
        *         only if the file is not there then create it and
        *         write to the file in binary mode.
        *    S_IWRITE = if the file has to be created then create 
        *         it as as read/write file, which implies read and 
        *         write capability allowed.
        */
    #ifdef PC
        if((fp = 
             open(filename,O_WRONLY|O_CREAT|O_BINARY,S_IWRITE)) 
             == EOF)
        {
            perror("READ_WRITE(): cannot open file for write");
            exit(10);
        }
    #else
        if((fp = 
             open(filename,O_RDWR|O_CREAT,S_IREAD|S_IWRITE)) 
             == EOF)
        {
            perror("READ_WRITE(): cannot open file for write");
            exit(10);
        }
    #endif
        do 
        {
    #ifndef PC
            /*
            *    inform user of limitations
            */
            printf("\nEnter only a single string ");
            printf("for name, street and city"); 
    #endif
            /*
            *       acquire data
            */
            getdata();
            /*
            *       write to disk
            */
    #ifdef PC
            if((rtnval = write(fp,,sizeof(my))) == EOF)
            {
                perror("READ_WRITE(): cannot write to file");
                exit(7);
            }
    #else
            sprintf(buf,"%s %s %s %s %s %s %d %d %d",
                    my.name,
                    my.street,
                    my.city,
                    my.state,
                    my.zip,
                    my.ssn,
                    my.age,
                    my.height,
                    my.weight);
            if((rtnval = write(fp,buf,sizeof(my))) == EOF)
            {
                perror("READ_WRITE(): cannot write to file");
                exit(7);
            }
    #endif
            /*
            *       keep going?
            */
            strcpy(ans," ");
            printf("\nContinue(Y/N)? ");
            gets(ans);
        }while(!strcmp(ans,"y"));
        close(fp);
        /*
        *    open test data set, allow for binary data because of 
        *    integer type values
        */
    #ifdef PC
        if((fp = open(filename,O_RDONLY|O_BINARY)) == EOF)
        {
            perror("READ_WRITE(): cannot open file for read");
            exit(11);
        }
    #else
        if((fp = open(filename,O_RDONLY)) == EOF)
        {
            perror("READ_WRITE(): cannot open file for read");
            exit(11);
        }
    #endif
        /*
        *       print the data back on the screen
        */
        do 
        {
            /*
            *     read data from disk, notice fscanf has same 
            *     limitation in scanning disk data as scanf has 
            *     in screen data; it delimits values by whitespace
            */
    #ifdef PC
            if((rtnval = read(fp,,sizeof(my))) < 0)
            {
                perror("READ_WRITE(): cannot read from file");
                exit(12);
            }
            if( rtnval == 0 )
            {
                fprintf(stderr,"\nEnd Of File Reached");
                break;
            }        
    #else
            if((rtnval = read(fp,buf,sizeof(my))) <0)
            {
                perror("READ_WRITE(): cannot write to file");
                exit(7);
            }
            if( rtnval == 0 )
            {  
                fprintf(stderr,"\nEnd Of File Reached");
                break;
            }
            sscanf(buf,"%s %s %s %s %s %s %d %d %d",
                   my.name,
                   my.street,
                   my.city,
                   my.state,
                   my.zip,
                   my.ssn,
                   ,
                   ,
                   );
    #endif
            /*
            *       display data on screen
            */
            showdata();
            strcpy(ans," ");
            printf("\nContinue(Y/N)? ");
            gets(ans);
        }while(!strcmp(ans,"y"));
        close(fp);
        return 0;
    }
    /*
    *   Sample error handler for I/O functions.  Will determine if
    *   error was encountered or simply end-of-file
    */
    int
    err_handler(FILE *fileptr, char *filename, int exitnum)
    {
    char errmsg[80];
    
        if ferror(fileptr)
        {
            sprintf(errmsg,"ERROR - cannot access file:%s",filename);
            putchar('\n');
            perror(errmsg);
            clearerr(fileptr);
            exit(exitnum);
        }
        if feof(fileptr)
        {
            sprintf(errmsg,"End of File reached on file:%s",
                    filename);
            putchar('\n');
            perror(errmsg);
            clearerr(fileptr);
            return(1);
        }
        return 0;
    }



13.3 C++ Input/Output Classes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The C++ input/output mechanism (provided with C++ compilers that
support at least AT release 2.0) is comprised of a series of classes
that have been created to handle the problem of sending and receiving
data. Here is a brief description of these classes:

#. The **streambuf** class provides memory for a buffer along with
class methods for filling the buffer, accessing buffer contents,
flushing the buffer, and managing the buffer memory. It handles the
most primitive functions for streams on a first-in-first-out basis.
#. The **filebuf** class is derived from class **streambuf** and
extends it by providing basic file operations.
#. The **strstreambuf** class is derived from class **streambuf** and
is designed to handle memory buffers.
#. The **ios** class represents general properties of a stream, such
as whether it's open for reading and whether it is a binary or a text
stream, and it includes a pointer member to a **streambuf** class.
#. The **ostream** class derives from the **ios** class and provides
output methods. That is, it formats the data you send to an output
device so that it appears in the way you expect.
#. The **istream** class also derives from the **ios** class and
provides input methods. That is, it accepts data from an input device
in the way you expect.
#. The **iostream** class is based on the **istream** and **ostream**
   class and thus inherits both input and output methods.



13.3.1 Instances of the class ostream
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Of course, classes in and of themselves do no good unless they are
used to create instances, or objects, of those classes. Fortunately,
this has already been done at a global scope, so that these objects
are immediately available for use. Here is a list of the objects to
which messages can be sent:

#. The **cout** object corresponds to the standard output stream. By
default, this stream is associated with the standard output device,
typically a monitor. **cout** is an instance of the class **ostream**.
#. The **cerr** object corresponds to the standard error stream, which
can be used for displaying error messages. By default, this stream is
associated with the standard output device, typically a monitor, and
the stream is unbuffered. Unbuffered means that information is sent
directly to the screen without waiting for a buffer to fill or for a
newline character.
#. The **clog** object also corresponds to the standard error stream.
   By default, this stream is associated with the standard output device,
   typically a monitor, and the stream is buffered.


C++ treats the terminal screen as an object in the real world. This
object has a state and a public interface. By sending both mutator and
accessor messages to this object, the programmer can effectively
perform all the same operations that were available using the output
functions provided in the **stdio** library.
The global instance **cout** of class **ostream** is used to initiate
all output operations to the monitor. In the class **ostream**, the
function usee the most often is the overloaded bitwise left-shift
operator, **<<**. It is typically called the insertion operator. The
name "insertion" comes from the fact that characters are being
"inserted" into an output buffer, as represented by the object
**cout**.
Within the class **ostream** the operator **<<** (left_shift) has been
overloaded many times as a binary member function (requires two
operands). The one implicit argument is, of course, the instance of
**cout**, and the one explicit argument is the data item that is to be
output. It is recommended that a listing of the file **iostream.h** be
printed. Inside the file can be seen the many declarations for this
overloaded function within the **ostream** class.

::

    
    ostream& operator<<( int );
    ostream& operator<<( long );
    ostream& operator<<( double );
    ostream& operator<<( char );
    ostream& operator<<( const signed char * );
    ostream& operator<<( unsigned char );
    ostream& operator<<( short int );
    ostream& operator<<( unsigned long );
    ostream& operator<<( float );
    ostream& operator<<( long double );
    ostream& operator<<( void * );
    ostream& operator<<( streambuf * );
    ostream& operator<<( ostream& (*) (ostream&) );


These are essentially all of the types that **printf()** can accept.
The last item is designed to accommodate a **manipulator function**.


13.3.2 Stream Input
~~~~~~~~~~~~~~~~~~~

The class **istream** is derived from the class **ios** and controls
the handling of input from the keyboard. The global instance that the
programmer uses is called **cin**. Think of **cin** as being the
keyboard object, from which data will be extracted.
The function used the most often to read input from the keyboard is
called the **extraction** operator, **>>**. Note that it is the
overloaded right-shift operator, whereas the insertion function
**operator<<()** is the overloaded left-shift operator. Within the
class **istream** it has been overloaded many times as a binary member
function. Thus, it is declared as:

::

    
        istream& operator>>( ... );


The name "extraction" comes from the fact that data is being
"extracted" (taken) from the input data stream. The argument to this
function is the variable name that references the storage location for
the data. Note that all such overloaded functions ignore leading
whitespace characters from the keyboard, and terminate upon
encountering a whitespace character within the data.
The extraction operator function has been overloaded to accommodate
these types:

::

    
        unsigned char *
        signed char *
        unsigned char&
        signed char&
        unsigned short int&
        short int&
        int&
        unsigned int&
        long&
        unsgined long&
        float&
        double&
        long double&
        streambuf *
        istream& (*) (istream&)


Note that unlike **scanf()**, there is no need to use the address
operator (for a non-array type), nor is there a need to specify any
type of conversion specification. The function knows which overloaded
function is to be used because it matches the type of function
argument to the corresponding overloaded **operator>>** function that
takes the same type of argument. All arguments are passed by
reference.


13.4 Writing Manipulators
~~~~~~~~~~~~~~~~~~~~~~~~~

Manipulators really are functions, but when the name of a function is
stated without writing parentheses, the compiler generates the address
of that function. Therefore, in the following statement there are no
direct function calls occurring, so the left-to-right order of items
to be output when sending data to the **cout** instance can be
guaranteed. This means that when the following in written:

::

    
        cout << arg1 << manipulator << arg2;


the compiler assures that first **arg1** will be sent, followed by the
**manipulator** and finally **arg2**.
In the case of a manipulator function, since we are supplying the
address of a function, that takes as its one argument a reference to
**cout** and returns a reference, the compiler will look for an
overloaded **operator<<()** function that conforms to this scheme.
Since a pointer-to-function is usually what is being passed in the
**cout** or **cin** stream, the function being pointed to can be
executed by dereferencing the pointer variable that was passed and
enclosing the entire expression within parentheses. Since ***this**
always refers to the invoking instance of any nonstatic member
function call, in this case it's the object **cout**, which will be
passed to the manipulator function as an actual argument. Finally,
since the manipulator function itself returns a reference to **cout**,
this reference must, in turn, be passed back to the original statement
to allow the function chaining to occur.
This is how the insertion function to accommodate manipulators is
written:

::

    
        ostream& ostream::operator<< (ostream& (*ptr) (ostream&))
        {
             return (*ptr)(*this);
        }



13.4.1 Manipulator with No Arguments
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is the simplest type of manipulator and only a reference to the
data stream be passed and that a reference be returned.


Listing 13-2
````````````

::

    
    #include <iostream.h>
    
    ostream& showDollars( ostream& stream )
    {
        stream.setf( ios::fixed );
        stream.fill( '$' );
        stream.width( 8 );
        stream.precision( 2 );
        stream.setf( ios::right );
        return stream;
    
    }
    
    int main()
    {
    float cash = 123.45;
    
        cout << "The amount " << showDollars 
             << cash << " is due." << endl;
        return 0;
    }



13.4.2 Manipulator with One Argument
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The generic form of an output manipulator that accepts one argument
is:

::

    
        ostream& manipulator(ostream& stream, type arg)
        {
             //   your code goes here that uses arg
             return stream;
        }


where type is either **int** or **long**, and **arg** is the formal
argument name.
Next, the following code must be included:

::

    
        OMANIP(type) manipulator( type arg)
        {
             return OMANIP(type) (manipulator, arg);
        }


where **OMANIP** is a class defined in the file **iomanip.h**. (
**NOTE:** This only works on Microsoft C++ v7.0, Visual C++ v1.5x and
Borland C/C++ v3.1.)
As an example, here is a manipulator called **set** that sets the
field width to whatever the argument happens to be, and also sets the
fill character to an '*'.


Listing 13-3
````````````

::

    
    //
    //  example of manipulator set
    //  source file: setmanip.cpp
    //
    #include <iostream.h>
    #include <iomanip.h>
    
    ostream& set( ostream& stream, int length )
    {
        return stream << setw(length) << setfill('*');
    }
    
    OMANIP(int) set( int length )
    {
        return OMANIP(int) (set, length );
    }
    
    int main()
    {
        cout << set(7) << 123 << endl;
        cout << set(5) << 45 << endl;
        return 0;
    }


Here is another manipulator that is designed to tab to an absolute
column position on some output device. This would be useful when
column alignment of data is needed on a report. If the tab position is
less than the current file position marker, then a newline is
performed.


Listing 13-4
````````````

::

    
    #include <iostream.h>
    #include <iomanip.h>
    #include <string.h>
    //
    //  Declaration
    //
    ostream& TAB( ostream&, long );
    OMANIP(long) TAB(long);
    
    //
    //  Definition
    //
    ostream& TAB( ostream& stream, long col )
    {
        long here = stream.tellp();
        if( col < here )
        {
             stream << endl;
             here = 0L;
        }
        return stream << setw(col-here) << " ";
    }
    
    OMANIP(long) TAB(long col)
    {
        return OMANIP(long) (TAB, col);
    }
    
    class Person
    {
    private:
        char *name;
        long age;
        long income;
    
    public:
        Person( const char * = "", int = 0, float = 0.0 );
        ~Person();
        friend ostream& operator<<(ostream&, const Person& );
    };
    
    inline Person::Person(const char *n, int a, float i)
    {
        name = new char[strlen(n) +1];
        strcpy(name,n);
        age = a;
        income = i;
    }
    
    inline Person::~Person()
    {
        delete [] name;
    }
    
    ostream& operator<<(ostream& stream, const Person& p )
    {
        stream.seekp(0L);
        stream << p.name;
        stream << TAB(20) << p.age;
        stream << TAB(30) << p.income;
        stream << endl;
        return stream;
    }
    
    int main()
    {
    Person staff[] =
        {
             Person("John Doe", 21, 34566.67 )
             ,Person("Mary Jones", 23, 35700.33)
             ,Person("Pat Lowry", 20, 33100.10)
        };
    
    const int size = sizeof( staff ) / sizeof( Person );
    
        for( int i = 0; i < size; ++i )
             cout << staff[i];
    
        return 0;
    }



13.4.3 Manipulator with Two Arguments<
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are no built-in manipulators in the standard C++ language
definition that takes two arguments. However, Borland C++ provides a
constream class that supplies some manipulators that handle two
arguments. Suppose a manipulator that requires two arguments is needed
to output a line consisting of a variable number of any given
character. This means that the manipulator requires two arguments: (1)
the number of characters to be output, and (2) the character itself.
The first thing that must be done is to package the arguments into a
structure object. Here it is called **args**.


Fig. 13-18
``````````
#include <iostream.h> #include <iomanip.h> struct ARGS { char ch; int
number; };
Next, the name of the structure becomes the type that is used in the
IOMANIPdeclare declaration.

::

    
    IOMANIPdeclare( ARGS );


Next, write the manipulator function as though it were taking just one
argument. This argument is of the type of the structure. The name of
manipulator is **fill**. It loops the requisite number of times and
outputs the character.


Fig. 13-19
``````````

::

    
    ostream& fill( ostream& stream, ARGS a )
    {
        for( int i = 0; i < a.number; ++i )
             stream << a.ch;
        return stream;
    }


Finally, write the **OMANIP** macro shown below. Note that the
arguments are listed individually, and the body of the macro creates
an instance of the structure and assigns the input values to it.


Fig. 13-20
``````````

::

    
    OMANIP( ARGS ) fill(char ch, int number )
    {
    ARGS a;
    
        a.ch = ch;
        a.number = number;
        return OMANIP( ARGS )(fill,a);
    }
    
    int main()
    {
        cout << "How many characters? ";
        int number;
        while( !(cin >> number).eof() )
        {
             if( cin.fail() )
                  cout << "Invalid entry\n";
             else
             {
                  cout << "Enter the character: ";
                  char ch;
                  cin >> ch;
                  cout << fill(ch, number) << endl;
             }
             cout << "How many characters? ";
        }
        return 0;
    }



13.5 File I/O<
~~~~~~~~~~~~~~

In ANSI C, file I/O is handled by functions such as **fopen** to open
a file, **fclose** to close it, and **fscanf** and **fprintf** to read
from and write to a file. In the iostream package, the classes meant
for file I/O are defined in the header file ** **.
There are three classes of interest in ** **: the **ifstream** class
is meant for input, **ofstream** for output, and the **fstream**
supports both input and output.
The simplest way to open a file for I/O is to create an instance of
the **ifstream** or **ofstream** class, as follows:


Fig. 13-21
``````````

::

    
    #include <fstream.h>
    //
    // open file named "infile" for input operations only and 
    // connect it to the istream "ins" 
    //
    ifstream ins("ifile");
    //
    // open file name "outfile" for output operations only and 
    // connect it to the ostream "outs"
    //
    ofstream outs("outfile");


As can be seen, the file can be opened and connected to a data stream
when the the instance of the **ifstream** or **ofstream** class is
declared. There are two distinct streams for input and output. The
ANSI C equivalent for connecting a file to an **ifstream** is to call
**fopen** with the "r" mode. On the other hand, using **ofstream** in
C++ is similar to calling **fopen** with the "w" mode in ANSI C.
Before using the stream connected to a file, it should be checked to
see if the stream was successfully created. The logical NOT operator
**!** is overloaded for the stream classes so that it can be used to
check a stream using a test like this:


Fig. 13-22
``````````

::

    
    //
    // open stream
    //
    ifstream ins("infile");
    //
    // check whether stream has been opened successfully
    //
    if( !ins )
    {
        cerr << "Cannot open : infile" << endl;
        exit( 1 );
    }


An **ifstream** or **ofstream** does not have to be attached to any
file at the time of creation. The instance of the class can be created
first and then at a later point in the logic flow the open member
function of the stream can be used to connect the class instance to a
file:


Fig. 13-23
``````````

::

    
        ifstream ins;
    
        ins.open( "infile" );
    
        if( !ins )          // open failed


When the data stream is close with the **close()** method the file is
disconnected from the stream.


Fig. 13-24
``````````

::

    
        // close file
        ins.close();


This does not destroy the instance of the class or the data stream, so
the stream can be reconnected to another file by calling **open()**
again.


13.5.1 Controlling the Stream Operating Modes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When a data stream is opened by simply providing the name of a file to
the stream's constructor, the method is taking advantage of C++'s
allowance for default argument values. When an instance of
**ifstream** is declared as follows:

::

    
        ifstream ins("infile");


the constructor that gets invoked is declared as follows:

::

    
        ifstream( const char *, int = ios::in, 
             int = filebuf::openprot);


The last two integer-valued arguments are used with the default
values. The second argument to the constructor indicates the mode in
which the stream operates. For **ifstream**, the default is
**ios::in**, which means the file is opened for reading. For an
**ofstream** object, the default mode is **ios::out**, implying that
the file is opened for writing.
The constructors allow you to declare a file stream without specifying
a named file. Later, the file can be associated with the data stream.


Fig. 13-25
``````````

::

    
        ofstream ofile;      // creates output file stream
        ...
        ofile.open("payroll");   // ofile connects to file "payroll"
        //   do some payrolling...
    
        ofile.close();      // close the ofile stream
        ofile.open("employee");  // ofile can be reused


By default, files are opened in text mode. This means that on input,
carriage-return/linefeed sequences are converted to the '\n'
character. On output, the '\n' character is converted to a carriage-
return/linefeed sequence. These translations are not done in binary
mode. The file opening mode is set with an optional second parameter
to the open function, chosen from the following table:


Table 13-1
``````````
Modes for File Open Mode Name Operation ios::app Appends data to the
file. ios::ate When first opened, positions file at end-of-file (
**ate** stand for at end ). ios::in Opens file for reading.
ios::nocreate Fails to open file if it does not already exist.
ios::noreplace If file exists, open for output fails unless
**ios::app** or **ios::ate** is set. ios::out Opens file for writing.
ios::trunc Truncates file if it already exists. ios::binary Opens file
in binary mode.
Note that more than one mode can be specified for a file, simply use a
bitwise OR of the required modes. For example, to open a file for
output and position it at the end of existing data, bitwise OR the
modes **ios::out** and **ios::ate** as follows:

::

    
        ofstream outs("outfile",ios::out|ios::ate);


As an example of file I/O in C++, consider a utility program that
copies one file to another. Assume that the utility is named
**filecopy** and that when the following command is typed:

::

    
        filecopy in.fil out.fil

**filecopy** copies the contents of the file named **in.fil** to a
second file named **out.fil**.


Listing 13-6
````````````

::

    
    //
    //  filecopy.cpp - Source available on instructors diskette
    //
    #include <fstream.h>
    #include <stdlib.h>
    
    const int bufsize=256;
    
    main(int argc, char *argv[])
    {
    char ch;
    ifstream f1;
    ofstream f2(argv[2]);
    char buff[bufsize];
        //
        //   open the source file that is to be copied
        //
        f1.open( argv[1], ios::in );
        if( !f1 )
        {
             cerr << "Cannot open " << argv[1] << "for input" 
                  << endl;
             exit( 1 );
        }
        else
             cout << "File " << argv[1] << " opened for input." 
                  << endl;
        //
        //   check to see if the destination file was opened
        //
        if( !f2 )
        {
             cerr << "File " << argv[2] << " was not opened "
                  << "for output" 
                  << endl;
             exit( 2 );
        }
        else
             cout << "File " << argv[2] << " opened for output." 
                  << endl;
        //   copy one file to another
        //
        //   the following will copy one character at a time
        //   from the file associated with f1 to the file 
        //   associated with f2
        //
    //  while ( f2 && f1.get( ch ) )
    //         f2.put( ch );
        //
        //   the following will copy a line at a time
        //
        while( !f1.eof() )
        {
             f1.read( buff, sizeof( buff ) );
             f2.write( buff, sizeof( buff ) );
        }
        return ( 0 );
    }


There is another way to implement the last **while** loop that
actually copies data between the files. The data can be read a line at
a time and written a line at a time. To read a line, use the same
**get** function but with the address of a buffer and the buffer's
size as arguments:


Fig. 13-26
``````````

::

    
        const bufsize = 128;
        char buf[bufsize];
        // ...
        f1.get( buf, bufsize );


The call to **get** will extract from the input stream into the
specified buffer, up to **bufsize-1** characters or until a newline
character is encountered. The **get** places a terminating null
character in the buffer. By default, the **get** function stops at the
newline character, but another delimiter can be specified as a third
argument to the **get** function. Note that this call to **get** is
similar to the **fgets** function in C except that unlike **fgets**,
**get** does not copy the newline character into the buffer. Nor does
**get** skip over the newline character. Therefore, to read lines
repeatedly from a file, the newline must be extracted separately after
each line is read.


13.5.2 Positioning in a File
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Many times files must be read containing binary data that have a
specific internal structure. For instance, there may be a 128- byte
header followed by blocks of data. Information extracted from the
header might tell that the data needed is at a specific location
inside the file. To read this data, the program must be able to
position the stream properly before reading from the file. In ANSI C,
functions such as **fseek** and **ftell** can be used for positioning
within data streams. The **iostream** library also enables programs to
reposition within streams and, as expected, classes provide member
functions that accomplish this task.
It is possible to position a stream in the **iostream** library by
calling the member functions **seekg** or **seekp** of that stream.
Because the same stream may be used for both input and output, the
stream classes have the concept of a **get position** and a **put **
**position** that respectively indicate the location from which the
next read or write will occur. The **get position** is set using
**seekg**, whereas **seekp** alters the **put position**. For example,
to position the stream at the 513th byte in the input stream **ins**,
**seekg** can be called as follows:

::

    
        ins.seekg(512);     // next get will start at 513th byte


On the other hand, the position can be specified relative to some
reference point such as the end of the file. For example, to move 8
bytes backward from the end of the stream, use the following:

::

    
        ins.seekg( -8, ios::end );


There are three reference points identified by constants defined in
the **ios** class: **ios::beg** is the beginning of the stream,
**ios::end** is the end, and **ios::cur** represents the current
position.
The current **get** or **put** position in a file can be determined by
using the **tellg** function which returns the current location in an
input stream, and **tellp** returns the corresponding item for an
output stream. Both functions return a variable of type **streampos**.
The returned position value can be saved and used with **seekg** or
**seekp** to return to the old location in a file:


Fig. 13-27
``````````

::

    
        streampos saved_pos = ins.tellg();
        //   other operations on stream...
        //   ...
        //   get back to old location
        ins.seekg(saved_pos);



13.5.3 Detecting Errors in File I/O
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The **iostream** library provides a number of functions for checking
the status of a stream. The **fail** function tells whether something
has gone wrong with the last file access method. Thus, it is possible
to check for problems by calling **fail** for the stream as follows:


Fig. 13-28
``````````

::

    
        ifstream ins("infile");
        if( ins.fail() )
        {
             // stream creation has failed
             ....
        }


In fact, the logical NOT operator **!** has been overloaded to call
**fail** for a stream so that the **if** test can be written more
simply as:


Fig. 13-29
``````````

::

    
        if( !ins )
        {
             // handle error
        }



13.5.4 Detecting the End-of-File
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When reading from a file, it is desired to know whether the end- of-
file is reached. The **eof** function returns **true** if the stream
is at the end-of-file. Once a stream has reached the end-of- file, it
does not perform any I/O even if the next I/O operation is attempted
after moving the stream away from the end by using **seekg** or
**seekp**. This is because the stream's internal state remembers the
encounter with the end-of-file. The method **clear** must be called to
reset the state before any further I/O can take place. Thus, sometimes
**eof** and **clear** are used as follow:


Fig. 13-30
``````````

::

    
        //   "ins" is an istream.  If the stream reached eof, clear 
        //   the state before attempting the read from the stream
        if( ins.eof() )
             ins.clear();
        //   reposition stream and read again...
        ins.seekg( -16, ios::cur );   // move back 16 bytes
        ins.get( buf, 8 );  // read 8 bytes into buffer


Two other member functions, **good** and **bad**, indicate the general
condition of a stream. As the names imply, **good** returns true (a
nonzero value) if no error has occurred on the stream, and **bad**
returns true if an invalid I/O has been attempted or if the stream has
an irrecoverable failure. The functions **good** and **bad** could be
used in tests such as this:


Fig. 13-31
``````````

::

    
        if( ins.bad() )
        {
             // invalid operation
        }
        if( ins.good() )
        {
             // everything ok, continue using stream
        }


