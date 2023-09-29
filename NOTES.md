# The Elements of Computing Systems

## Boolean Algebra

### Truth Table

Truth Table represents all the possible values of the function's input variables.

For each function there are 2^n possible tuples where n indicates inputs.

### Boolean Expresions

Boolean function can be specified using Boolean operations over inputs.

The basic Boolean operators:
- AND
- OR
- NOT

### Canonical Representation

Every Boolean function can be expressed using Boolean expression called the canonical representation.

When we focus on rows in which the function returns value 1 we can construct a term.

We start by 'AND-ing' together literals (variables or their negations) then 'OR-together' all these terms and we get expression that is equivalent to the given truth table.

This construction leads to the conclusion: "Every Boolean function can be expressed using three Boolean operators: AND, OR, and NOT."

### Two-Input Boolean Functions

The number of Boolean functions that can be defined for n inputs is 2^2^n

If we have two inputs we can have 2^2^2 inputs which is 16.

All of the two input functions have their names.

**For input *x* and *y*:**

| Function        | *x*=0 *y*=0 | *x*=0 *y*=1 | *x*=1 *y*=0 | *x*=1 *y*=1 |
|:----------------|:-----------:|:-----------:|:-----------:|:-----------:|
| Constant 0      |      0      |      0      |      0      |      0      |
| AND             |      0      |      0      |      0      |      1      |
| *x* AND NOT *y* |      0      |      0      |      1      |      0      |
| *x*             |      0      |      0      |      1      |      1      |
| NOT x AND y     |      0      |      1      |      0      |      0      |
| *y*             |      0      |      1      |      0      |      1      |
| XOR             |      0      |      1      |      1      |      0      |
| OR              |      0      |      1      |      1      |      1      |
| NOR             |      1      |      0      |      0      |      0      |
| Equivalence     |      1      |      0      |      0      |      1      |
| NOT *y*         |      1      |      0      |      1      |      0      |
| If *y* then *x* |      1      |      0      |      1      |      1      |
| NOT *x*         |      1      |      1      |      0      |      0      |
| If *x* then *y* |      1      |      1      |      0      |      1      |
| NAND            |      1      |      1      |      1      |      0      |
| Constant 1      |      1      |      1      |      1      |      1      |

NAND and NOR functions have a theoretical property: Each one of the operations AND, OR and NOT can be constructed from it, and it alone.

Once we have in our disposal a physical device that implements NAND, we can use many copies of this device (wired in a certain way) to implement in hardware any Boolean function.

## Gate Logic

A gate is a physical device that implements a Boolean function.

The gate that implements function will have n input pins and m output pins.

Complex gates are composed from more elementary gates. The simplest gates are made from transistors.

Today most gates are implemented as transistors etched in silicon, packaged as chips.

Terms 'chip' and 'gate' can be used interchangeably.

Computer scientists don’t have to worry about physical things like electricity, circuits, switches, relays, and power supply. Instead, computer scientists can be content with the abstract notions of Boolean algebra and gate logic.

### Primitive and Composite Gates

All logic gates have the same input and output semantics so they can be chained together, creating composite gates of arbitrary complexity.

Our task: given a gate specification (interface), find an efficient way to implement it using other gates that were already implemented. 

### Hardware Description Language (HDL)

In HDL the designer specifies the chip structure by writing an HDL program, which is then subjected to tests.

Tests are carried out virtually using simulations.

Next the designer can instruct the simulator to test the virtual chip on various sets of inputs, generating chip outputs.

In addition to testing corectness, the hardware designer will typically be interested in a parameters like speed of computation, energy consuption, and overall cost implied by the chip design.

Using HDL we can completely plan, debug, and optimze the entire chip before we produce any chip.

When the HDL program is complete it can become the blueprint from which many copies of the physical chip can be stamped in silicon.

### Hardware Simulation

Since HDL is a hardware construction language, the process of writing and debugging HDL programs is quite similar to software development.

The difference is that we are using hardware simulators instead of compilers.

The hardware simulator is a program that parse and interpret HDL code, turn it into an executable representation, and test it according to given test script.


