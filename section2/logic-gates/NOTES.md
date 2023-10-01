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

### The NAND Gate

The starting point of computer architecture can be the NAND gate, from which all other gates and chips can be built.

- **Chip name:** Nand
- **Inputs:** a, b
- **Outputs:** out
- **Function:** If a=b=1 then out=0 else out=1
- **Comment:** This gate is considered primitive and thus there is no need to implement it.

### Basic Logic Gates

- **Chip name:** NOT
- **Inputs:** in
- **Outputs:** out
- **Function:** If in=0 then out=1 else out=0.

---

- **Chip name:** AND
- **Inputs:** a, b
- **Outputs:** out
- **Function:** If a=b=1 then out=1 else out=1.

---

- **Chip name:** OR
- **Inputs:** a, b
- **Outputs:** out
- **Function:** If a=b=0 then out=0 else out=1.

---

- **Chip name:** XOR
- **Inputs:** a, b
- **Outputs:** out
- **Function:** If a!=b then out=1 else out=0.

---

- **Chip name:** MUX
- **Inputs:** a, b, sel
- **Outputs:** out
- **Function:** If sel=0 then out=a else out=b
- **Comment:** Multiplexor is a three-input gate that uses one of the inputs, called "selection bit", to select and output one of the other two inputs, called "data bits". 

| a | b | sel | out |
|:-:|:-:|:---:|:---:|
| 0 | 0 |  0  |  0  |
| 0 | 1 |  0  |  0  |
| 1 | 0 |  0  |  1  |
| 1 | 1 |  0  |  1  |
| 0 | 0 |  1  |  0  |
| 0 | 1 |  1  |  1  |
| 1 | 0 |  1  |  0  |
| 1 | 1 |  1  |  1  |

| sel | out |
|:---:|:---:|
|  0  |  a  |
|  1  |  b  |

---

- **Chip name:** DMux
- **Inputs:** in, sel
- **Outputs:** a, b
- **Function:** If sel=0 then {a=in, b=0} else {a=0, b=in}.

| sel |  a |  b |
|:---:|:--:|:--:|
|  0  | in |  0 |
|  1  |  0 | in |

### Multi-Bit Versions of Basic Gates

Computer hardware is typically designed to operate on multi-bit arrays called "buses".

A basic requirement of a 32-bit computer is to be able to compute an AND function on two given 32-bit buses.

When referring to individual bits in a bus, it is common to use an array syntax. For example, to refer to individual bits in a 16-bit bus named data, we use the notation data [0], data [1], ..., data[15].

- **Chip name:** NOT16
- **Inputs:** in[16]
- **Outputs:** out[16]
- **Function:** For i=0..15 out[i]=NOT(in[i]).

---

- **Chip name:** AND16
- **Inputs:** a[16], b[16]
- **Outputs:** out[16]
- **Function:** For i=0..15 out[i]=AND(a[i], b[i]).

---

- **Chip name:** OR16
- **Inputs:** a[16], b[16]
- **Outputs:** out[16]
- **Function:** For i=0..15 out[i]=OR(a[i], b[i]).

---

- **Chip name:** MUX16
- **Inputs:** a[16], b[16], sel
- **Outputs:** out[16]
- **Function:** If sel=0 then for i=0..15 out[i]=a[i] else for i=0..15 out[i]=b[i].

### Multi-Way Versions of Basic Gates

Many 2-way logic gates that accept two inputs have natural generalization to multi-way variants that accept an arbitrary number of inputs.

An m-way n-bit multiplexor selects one of m n-bit input buses and outputs it to a single n-bit output bus. The selection is specified by a set of k control bits, where k = log2m.

An m-way n-bit demultiplexor channels a single n-bit input into one of m possible n-bit outputs. The selection is specified by a set of k control bits, where k = log2m.

- **Chip name:** OR8Way
- **Inputs:** in[8]
- **Outputs:** out
- **Function:** out=OR(in[0],in[1],...,in[7]).

---

- **Chip name:** Mux4Way16
- **Inputs:** a[16], b[16], c[16], d[16], sel[2]
- **Outputs:** out[16]
- **Function:** If sel=00 then out=a else if sel=01 then out=b else if sel=10 then out=c else if sel=11 then out=d
- **Comment:** The assignment operations are all 16-bit. For example, "out=a" means "for i=0..15 out[i]=a[i]".

---

- **Chip name:** Mux8Way16
- **Inputs:** a[16], b[16], c[16], d[16], e[16], f[16], g[16], h[16], sel[3]
- **Outputs:** out[16]
- **Function:** If sel=000 then out=a else if sel=001 then out=b else if sel=010 out=c ... else if sel=111 then out=h
- **Comment:** The assignment operations are all 16-bit. For example, "out=a" means "for i=0..15 out[i]=a[i]".

---

- **Chip name:** Demux4Way16
- **Inputs:** in, sel[2]
- **Outputs:** a[16], b[16], c[16], d[16]
- **Function:** If sel=00 then {a=in, b=0, c=0, d=0} else if sel=01 then {a=0, b=in, c=0, d=0} else if sel=10 then {a=0, b=0, c=in, d=0} else {a=0, b=0, c=0, d=in}.

| sel  |  a |  b |  c |  d |
|:----:|:--:|:--:|:--:|:--:|
|  00  | in |  0 |  0 |  0 |
|  01  |  0 | in |  0 |  0 |
|  10  |  0 |  0 | in |  0 |
|  11  |  0 |  0 |  0 | in |

