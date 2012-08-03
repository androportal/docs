


Chapter 4 Operators
===================

C and C++ are languages that are rich in operators. The languages
provide arithmetic, relational, logical, bitwise, conditional and many
others.


4.1 Order of Precedence of Operators
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Both **C** and **C++** have a great many operators. In fact one of the
criticisms of the **C** language is that it has too many operators
which makes the language difficult to read. The operators fall into
several categories: arithmetic, logical, relational, bitwise,
assignment and miscellaneous. Within a category the operators can be
classified into types: unary, binary, or ternary. The type indicates
the number of operands required with the operator. For instance, a
unary operator only requires a single operand, whereas a binary type
operator requires two operands, and of course ternary type operators
require three operands. The operators have an order of precedence
among themselves. This order of precedence dictates in what order the
operators are evaluated when several operators are together in a
statement or expression. Also, with each operator is an associativity
factor that tells in what order the operands associated with the
operator are to be evaluated. The following is a chart of the
operators in the **C** and **C++** language.


Table 4-1
`````````
Precedence and Associativity of Operators Operators Description
Associativity () function call left to right [] array element .
structure/union member -> structure/union member using pointer !
logical not right to left ~ one's complement - unary minus ++ --
increment/decrement & address of * indirection (type) type cast sizeof
size in bytes * multiply left to right / divide % modulus + add left
to right - subtract << left shift left to right >> right shift < less
than left to right <= less than or equal > greater than >= greater
than or equal == equal to left to right != not equal to & bitwise AND
left to right ^ bitwise XOR left to right | bitwise OR left to right
&& logical AND left to right || logical OR left to right ?:
conditional right to left = assignment right to left *= multiply and
assign /= divide and assign %= modulo and assign += add and assign
/TR> -= subtract and assign <<= left shift and assign >>= right shift
and assign &= bitwise AND and assign ^= bitwise XOR and assign |=
bitwise OR and assign , comma left to right


4.2 Operators: Arithmetic
~~~~~~~~~~~~~~~~~~~~~~~~~



Fig 4-1
```````
Symbol Operator Example * multiplication a*b / division a/b % modulo
a%b + addition a+b - subtraction a-b

All arithmetic operators evaluate from left to right. When several
arithmetic operators, in fact operators of any type, appear within an
expression several passes of the expression may be necessary to
completely evaluate the expression.

Problems can occur if you mix **unsigned** variables with variables of
other data types. Due to differences in computer architecture,
unsigned variables do not always convert to the larger data type. This
can result in loss of accuracy, and even incorrect results. There are
other times when you might want to fully control the type conversions
instead of letting C and C++ make its best bet.

You can override C and C++'s default conversions by specifying your
own temporary type change. This process is called **typecasting**.
When you typecast, you temporarily change a variable's data type from
its declared data type to a new one. The two formats of the typecast
are:

::

     
       (data type) expression /* ANSI C method */
    
    and
    
       data type(expression) // C++ method



where **data type** can be any valid C and C++ data type, such as
**int** or **float**, and the **expression** can be a variable,
literal, or an expression that combines both. The following code
temporarily typecast the integer variable **age** into a double
floating-point variable, so that it can be multiplied by the double
floating-point **factor**. Both formats of the typecast are
illustrated.

::

     
    age_factor = (double)age * factor;



The second way of typecasting puts the parentheses around the variable
rather than the data type:

::

     
    age_factor = double(age) * factor;



Instead of having C and C++ perform the conversion, you might want to
typecast all mixed expression to ensure that they convert the way you
want them to.


4.4 sizeof
~~~~~~~~~~


The **sizeof** operator returns the physical size, in bytes, of the
data item for which it is applied. It can be used with any type of
data item except bit fields. The general form is:

::

     size_t sizeof( item );



When **sizeof** is used on a character field the result returned is 1
(if a character is stored in one byte). When used on an integer the
result returned is the size in bytes of that integer. When used on an
array the result is the number of bytes in the array, not the number
of characters which appear before a NULL. In the ANSI standard the
**sizeof** operator returns a data type of **size_t** which is usually
an **unsigned int** value.

::

     int nums[10];
    
    
     printf("There are %d types in the array and %d elements"
     , sizeof( nums ), sizeof( nums ) / sizeof( int ) );




4.5 Relational and Logical
~~~~~~~~~~~~~~~~~~~~~~~~~~



Fig 4-2
```````

Symbol Operator Example < less than a < B > greater than a > b >=
greater than or equal a >= b == equal to a==b != not equal a!=b
**Logical:**


Fig 4-3
```````
Sample Operator Example ! NOT !(a < b) < >/TR> && AND a < b && c > d
|| OR a || d
Relational and logical operators evaluate to only a true (1) or false
(0) value. Relational operators have a higher order of precedence that
logical operators and therefore are evaluated first in any expression
that includes both types of operators.


4.6 The Conditional Operator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The conditional operator is C and C++'s only ternary operator. It
works on three values as opposed to the binary operators you have seen
that operate on only two valurs. The conditional operator is used to
replace if-else logic in some situations. It is a two-symbol operator,
**?:**, with the following format:

::

    
    result = conditional_expression ? expression1 :expression2;



The **conditional_expression** is any expression in C and C++ that
results in a True (nonzero) or False (zero) answer. If the result of
**conditional_expression**is true, **expression1** executes.
Otherwise, if the result of **conditional_expression** is false,
**expression2** executes. Only one of the expressions following the
question mark ever executes. Only a single semicolon appears at the
end of **expression2**. The internal expressions, such as
**expression1**, do not have a semicolon. The resultant value
generated by the expression that is executed is returned and can be
captured into the result identifier.

If you require simple if-else logic, the conditional operator usually
provides a more direct and succinct method, although you should always
prefer readability over compact code.

To glimpse the conditional operator at work, consider the section of
code that follows:

::

    
    if( a > b )
       ans = 10;
    else
       ans = 25;



You can easily rewrite this kind of **if-else** code by using a single
conditional operator.

::

    
    ans = a > b ? 10 : 25;




4.7 Increment and Decrement
~~~~~~~~~~~~~~~~~~~~~~~~~~~



Fig 4-4
```````

Symbol Operator Example ++ increment a++ or ++a -- decrement a-- or
--a

The decrement and increment operators function the same whether the
operator is pre (meaning before the operand) or post (meaning after
the operand). When the operators are used in conjunction with a
conditional test, such as in an if statement or a loop control
conditional test, then the placement of the operator in relationship
to the operand is taken into account as to when to decrement or
increment the value of the operand.


4.8 Assignment
~~~~~~~~~~~~~~



Fig 4-5
```````

Symbol Operator Example = assignment a = b += addition and assignment
a += b same as a = a + b -= subtraction and assignment a -= b same as
a = a - b *= multiplication and assignment a *= b same as a = a * b /=
division and assignment a /= b same as a = a / b %= modulo and
assignment a %= b same as a = a % b &= bitwise AND assignment a &= b
same as a = a & b |= bitwise OR and assignment a |= b same as a = a |
b ^= bitwise XOR and assignment a ^= b same as a = a ^ b <<= shift
left and and assignment a <<= 2 same as a = a << 2 >>= shift right and
assignment a >>= 4 same as a = a >> 4

The various assignment operators are intended as a shorthand method.
Depending upon the machine architecture, the shorthand notation could
be faster than the traditional method.


4.9 Bitwise Operators
~~~~~~~~~~~~~~~~~~~~~


Each of the bitwise operators affects individual bits in a value. Some
of these operators are binary, taking two bits and returning a third
bit. Bitwise operators only work on values that reside in a word or
less of storage. Bitwise operators cannot be used with floating point,
double, or long values. The size of a word will vary from one machine
architecture to another.

The order of precedence for the bitwise operators is as follows:


Table 4-2
`````````

Bitwise Operators Operator Description Associativity ~ Ones complement
right to left << Left shift left to right >> Right shift left to right
& Bitwise AND left to right ^ Bitwise XOR left to right | Bitwise OR
left to right


4.10 Bitwise Complement: ~
~~~~~~~~~~~~~~~~~~~~~~~~~~


This operator is a unary operator, that flips the value of each bit.
The operator takes a bit and converts it to 0 if the bit was 1 and to
1 if the bit was 0.


Table 4-3
`````````

Truth Table: Ones Complement (~) value ~value 0 1 1 0

Assuming 16 bit integers and that **unsigned int Z** is **0xA**, the
expression **~Z** has the value **0xFFF5** as shown below:


Table 4-4
`````````

Example Expression Binary Representation Value Z 0000 0000 0000 1010
0xA ~Z 1111 1111 1111 0101 0xFFF5

The bitwise complement operator should not be confused with the
arithmetic unary minus (-) or the logical negation (!). For example,
if **Z** is defined to be an int and set equal to **0**, then **-Z**
results in **0** and **!Z** is **1**, but **~Z** yields **-1** on a
2's complement machine.

The bitwise complement operator is useful in writing portable code as
it avoids inclusion of machine-dependent information in the program.
For example, the statement

::

    
        Z &= ~0xFF;

sets the last 8 bits of **Z** to **0**, independent of word length.


4.11 Bitwise Shift Operators
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


C provides two bitwise shift operators, bitwise left shift ( **<<**)
and bitwise right shift ( **>>**), for shifting bits left or right by
an integral number of positions in integral data. Both of these
operators are binary, and the left operand is the integral data whose
bits are to be shifted, and the right operand, called the shift count,
specifies the number of positions by which bits need shifting. The
shift count must be nonnegative and less than the number of bits
required to represent data of the type of the left operand.

Automatic unary conversions are performed on both operands. However,
the type of the result is that of the promoted left operand; the right
operand does not promte the result.
The result of applying these operators to signed operands is
implementation-dependent. For portability, therefore, these operators
should only be used on unsigned operands.

These operators can also be used, like other binary operators, to form
compound assignment operators **>>=** and **<<=**.


4.11.1 Left Shift Operator: <<
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The left shift operator shifts bits to the left, and has the formation

::

    
        intvalue << intvalue



As bits are shifted toward high-order positions, **0** bits enter the
low-order positions. Bits shifted out through the high-order position
are lost. For example, given

::

    
        unsigned int Z = 5;
    
    and 16-bit integers, that is, 
    
        Z is 00000000 00000101
    
    then 
    
        Z << 1 is 00000000 00001010  or 10 decimal
    
    and 
    
        Z << 15 is 10000000 00000000 or 32768 decimal




4.11.2 Right Shift Operator: >>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The right shift operator shifts bits to the right, and has the
formation

::

    
        intvalue >> intvalue



As bits are shifted toward low-order position, **0** bits enter the
high-order positions, if the data is unsigned. If the data is signed
and the sign bit is **0**, then **0** bits also enter the high- ordr
positions. However, if the sign bit is **1**, the bits entering high-
order positions are implementation-dependent. On some machines **1**s,
and on others **0**s, are shifted in. The former type of operation is
known as the arithmetic right shift, and the latter type the logical
right shift. For example, given

::

    
        unsigned int Z = 40960;
    
    and 16-bit integers, that is 
    
        Z is 10100000 00000000
    
    then 
    
        Z >> 1 is 01010000 00000000 or 20480 decimal
    
    and 
        Z >> 15 is 00000000 00000001 or 1 decimal



In the second example, the **1** originally in the fourteenth bit
position has dropped off. Another right shift will drop off the **1**
in the first bit position, and **Z** will become zero.


4.12 Multiplication and Division thru Shifting Bits
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The left shift of a value by one position has the effect of
multiplying the value by two, unless an overflow occurs due to a **1**
falling off from the high-order position. Similarly, the right shift
of a value by one position has the effect of dividing the value by
two, provided the value is nonnegative. Here are some examples,
assuming 16-bit integers:


Table 4-5
`````````

Z as each statement executes unsigned int Z Binary Representation
Decimal Value Z=3 00000000 00000011 3 Z << 1 00000000 00000110 6 Z <<
4 00000000 01100000 96 Z << 9 11000000 00000000 49152 Z << 1 10000000
00000000 32768 Z >> 1 01000000 00000000 16384 Z >> 9 00000000 00100000
32 Z >> 4 00000000 00000010 2 Z >> 1 00000000 00000001 1 Z >> 1
00000000 00000000 0
The operation **Z << 1**, when the value of **Z** is **49152** results
in an overflow and does not have the effect of multiplication by
**2**. However, the operation **Z >> 1**, when the value of **Z** is
**1**, has the effect of integer division. Remember, shifting left is
a multiply by 2 at each bit position, where shifting right is dividing
by 2 at each bit position shifted.


4.13 Precedence and Associativity
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Left and right shift operators have equal precedence and they
associate from left to right. Thus, the expression

::

    
        1 << 1 >> 2
    
    is interpreted as 
    
        (1 << 1) >> 2



The precedence of the shift operators is lower than that of any
arithmetic operator, but higher than that of any bitwise logical
operator except the unary bitwise complement operator. Thus, the
express

::

    
        1 << 2 - 1
    
    is interpreted as 
    
        1 << (2 -1)
    
    and the expression
    
        01 | ~01 << 1 
    
    is interpreted as 
    
        01 | ( ( ~01 ) << 1 )




4.14 Bitwise AND Operator: &
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


This is not the address of operator, but the bitwise AND operator. The
address of operator is a unary operator that has only one operand,
whereas the bitwise AND operator is a binary operator and thus
requires two operands.
The bitwise AND operator **&** has the formation

::

    
        intvalue & intvalue



When it is applied to two integral operands, the binary
representations of the converted values of the operands are compared
bit by bit. If **Z1** and **Z2** represent corresponding bits of the
two operands, then the result of **Z1 & Z2** is shown in the following
truth table:


Table 4-6
`````````

Truth Table for Bitwise AND (&) Z1 Z2 Z1 & Z2 1 1 1 1 0 0 0 1 0 0 0 0

For example, given that

::

    
        unsigned int Z1 = 0xA, Z2 = 0x7;



and that an integer is represented in 16 bits in the machine being
used, the expression **Z1 & Z2** has the value **0x2** as show below:


< Table 4-7
```````````

Expression Binary Representation Value Z1 0000 1010 0xA Z2 0000 0111
0x7 Z1 & Z2 0000 0010 0x2

The logical AND operator **&&** and the bitwise AND operator **&** are
quite different. The result of applying **&&** is always **0** or
**1**, but that of **&** depends upon the values of the operands.
For example, whereas the value of the expresseion **0xA && 0x7** is
**1**, the value of **0xA & 0x7** is **0x2**. Only in the special case
when the values of the operands are restricted to be **0** or **1** is
the result of applying **&** and **&&** the same. Moreover, in the
case of **&&**, the second operand is not evaluated if the first
operand is **0**, but both operands are evaluated in the case of
**&**.

The bitwise AND operator is often used to turn some specified bits
off, that is, to set them to **0**. For example, the statement

::

    
        Z1 &= Z2;



as shown in the preceding example, turns off all but the low- order
three bits of **Z1**. Those three bits remain unchanged.


4.15 Bitwise Inclusive OR Operator: |
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The bitwise inclusive OR operator **|**, frequently referred to simply
as the bitwise OR operator, has the formation

::

    
        intvalue | intvalue



As in the case of the bitwise AND operator, when the bitwise OR
operator is applied to two integral operands, the binary
representations of the converted values of the operands are compared
bit by bit. If **Z1** and **Z2** represent corresponding bits of the
two operands, then the result of **Z1 | Z2** is as shown in the
following truth table:


Table 4-8
`````````

Truth Table for Bitwise OR (|) Z1 Z2 Z1 | Z2 1 1 1 1 0 1 0 1 1 0 0 0

For example, given that

::

    
        unsigned int Z1 = 0xA, Z2 = 0x7;



and that an integer is represented in 16 bits in the machine being
used, the expression **Z1 | Z2** has the value **0xF** as show below:


Table 4-9
`````````

Expression Binary Representation Value Z1 0000 1010 0xA Z2 0000 0111
0x7 Z1 | Z2 0000 1111 0xF

The logical OR operator **||** and the bitwise OR operator **|** are
also quite different. The result of applying **|** depends upon the
values of the operands, but that of **||** is always **0** or **1**.
Only in the special case when the values of the operands are
restricted to be **0** or **1** is the result of **|** and **||** the
same. Further, in the case of **||**, the second operand is not
evaluated if the first operand is **1**, but both operands are
evaluated in the case of **|**.

The bitwise OR operator is frequently used to turn some specified bits
on, that is, to set them to 1. For example, the statment

::

    
        Z1 |= Z2;



as shown in the preceding example, ensures that the three rightmost
bits of **Z1** are turned on.


4.16 Bitwise Exclusive OR Operator: ^
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The bitwise exclusive OR operator **^**, frequently referred to as the
bitwise XOR operator, has the formation

::

    
        intvalue ^ intvalue



In the case of the bitwise exclusive OR also, the binary
representations of the converted values of the operands are compared
bit by bit. If **Z1** and **Z2** represent corresponding bits of the
two operands, then the result of **Z1 ^ Z2** is as shown in the
following truth table:


Table 4-10
``````````

Truth Table for Bitwise XOR (^) Z1 Z2 Z1 ^ Z2 1 1 0 1 0 1 0 1 1 0 0 0

For example, given that

::

    
        unsigned int Z1 = 0xA, Z2 = 0x7;



and that an integer is represented in 16 bits in the machine being
used, the expression **Z1 ^ Z2** has the value **0x9** as show below:


Table 4-11
``````````

Expression Binary Representation Value Z1 0000 1010 0xA Z2 0000 0111
0x7 Z1 ^ Z2 0000 1001 0x9
The exclusive OR operator has the property that any value XORed with
itself produces **0**. as the result. Thus, we have


Table 4-12
``````````

Expression Binary Representation Value Z1 0000 1010 0xA Z1 0000 1010
0xA Z1 ^ Z1 0000 0000 0x0

This property is often used by assembly language programmers to set a
value to **0** or to compare two values to determine if they are
equal.

Another useful property of this operator is that if the result of
XORing a value with another value is again XORed with the second
value, the result is the first value. Thus we have


Table 4-13
``````````

Expression Binary Representation Value Z1 0000 1010 0xA Z2 0000 0111
0x7 Z1 ^ Z1 0000 0000 0x0 Z1 ^ Z2 0000 1101 0xD (Z1 ^ Z2) ^ Z2 0000
1010 0xA

That is, **(Z1 ^ Z2) ^ Z2** is equal to **Z1**. This property is
frequently used in designing bit-manipulation ciphers in cryptography.

The bitwise exclusive OR operator can also be used to interchange two
values without using a temporary variable. Thus, the statement

::

    
        Z1 ^= Z2, Z2 ^= Z1, Z1 ^= Z2;



swaps the values of **Z1** and **Z2**, as shown below:


Table 4-14
``````````

Expression Binary Representation Value Z1 0000 1010 0xA Z2 0000 0111
0x7 Z1 ^= Z2 0000 1010 0xD Z2 ^= Z1 0000 1101 0xA Z1 ^= Z2 0000 0111
0x7


4.17 Precedence and Associativity
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The order of precedence of the bitwise logical operators is bitwise
complement, bitwise AND, bitwise exclusive OR, and then bitwise
inclusive OR. Except for the bitwise complement that associates from
right to left, all others associate from left to right. Thus, the
expression

::

    
        01 | ~01 ^ 01 & 01



is interpreted as

::

    
        01 | ( ( ~01 ) ^ ( 01 & 01 ) )



Note that the precedence of the binary bitwise logical operators is
lower than the equality operator **==** and the inequality operator
**!=**. Thus, parentheses are necessary in expressions such as

::

    
        ( i & 01 ) == 0
    
    or 
    
        ( i ^ 01 ) != 0




4.18 Sequence Points or comma
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


The comma operator is used to insure that parts of an expression are
performed in a left to right sequence. The comma allows for the use of
multiple expressions to be used where normally only one would be
allowed. It is used most often in the **for** loop statement where one
statement is called for, but several actually need to be coded.

The comma operator forces all operations that appear to the left to be
fully completed before proceeding to the right of comma. This helps
eliminate side effects of the expression evaluation.

::

    
        num1 = num2 + 1, num2 = 2



The comma insures that **num2** will not be changed to a 2 before
**num2** has been added to 1 and the result placed into **num1**.

Other operators are also considered to be sequence points. They are:

::

    
        &&
        || 
        ?:


When any of these operators are encountered all activity associated
with any operator to the left is completed before the new operator
begins executing. Both the semicolon and the comma also perform this
service, insuring that there is a way to control the order of when
things happen in a program.

The commas that separate the actual arguments in a function call are
punctuation symbols, not sequence points. A punctuation symbol does
not guarantee that the arguments are either evaluated or passed to the
function in any particular order.
