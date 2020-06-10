# Decimal to another base

You can convert a number from one base to another by:

Take the number you have in decimal and get the remainder when it is divided by the new base. The remainder is the next "digit" in the new base. You add this digit to the LEFT of the new number as you create it.
NOTE: If the digit is >=10, then you need to use a letter like A, B, C, D, ...

Divide your number by the new base, then repeat from step (1) if the new number is > 0.
Example 1:

```NOTE
14 to base 2:

Step 1: 14 % 2 = 0, so next digit is "0".
  Our new number is currently "0"

Step 2: 14 / 2 = 7, so we update our number to be 7
  7 is > 0, so we go to step 1...

Step 1: 7 % 2 = 1; next digit is "1"
  Our new number is currently "10" (we add the new digit to the left)

Step 2: 7 / 2 = 3 (round down always), so we update our number to be 3
  3 > 0, so go to step 1

Step 1: 3 % 2 = 1; next digit is "1"
  Our new number is "110"

Step 2: 3 / 2 = 1; Go to step 1

Step 1: 1 % 1 = 1; next digit is "1"
  Our new number is "1110"

Step 2: 1 / 2 = 0; stop here!

Final number is "1110", which is 14 in base 2!
```

Example 2:

```NOTE
15 to base 16:

Step 1: 15 % 16 = 15, so next digit is "F"
  Current new number: "F"

Step 2: 15 / 16 = 0. stop!

Final new number: "F"
```

Note: If it is easier, you can use the Reverse function from earlier to help solve this. Breaking problems into smaller problems and reusing solutions is often a great way to make them easier.

Ex:

```go
DecToBase(1, 2) // "1"
DecToBase(2, 2) // "10"
DecToBase(7, 3) // "21"
DecToBase(14, 2) // "1110"
DecToBase(14, 16) // "E"
DecToBase(17, 16) // "11"
```

## Reference

<https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#09---decimal-to-another-base-code>
