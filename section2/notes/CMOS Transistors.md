## CMOS Transistors
- Logic gates are built from transistors
- Transistors can be viewed as a three-ported voltage-controlled switch

## Silicon
- Transistors are built from silicon, a semiconductor
- Pure silicon is a poor conductor (no free charges)
- Doped silicon is a good conductor (free charges)
    * n-type (free negative charges, electrons)
    * p-type (free positive charges, holes)

## MOS Transistors
- Metal Oxide Silicon (MOS) transistors:
    * Polysilicon (used to be metal) gate
    * Oxide (silicon dioxide) insulator
    * Doped silicon

The most common type of transistor today is the metal oxide semiconductor transistor.
It's made from a stack: metal, silicon dioxide, and semiconductor.
The gate historically was made out of metal, but more recently it was made by polycrystalline sillicon also known as polysillicon, which acts like a conductor.
Even more recently we've started using metal on these gates again.
In between source and drain is a layer of silicon dioxide SiO2, also known as glass, and it's an excellent insulator, and underneath we have silicon substrate which will dope p-type.
We'll make source and a drain next to the gate and dope those n-type.

## Transistors: nMOS

Gate = 0
- OFF (no connection between source and drain)

Gate = 1
- ON (channel between source and drain)

Anytime you have a P to N junction that forms what we call a diode.
We'll ground our substrate so diods normally won't turn on.
We have source, substrate, and the drain.
Because diods are off there's no path between source and drain, and we say that the transistor is off when the gate is sitting at zero.

On the other hand if we apply a positive voltage to the gate (VDD) that will put some positive charge onto the gate terminal.
Remember that if you have conductor and another conductor separated by an insulator that's known as a capacitor.
When you apply a positive voltage to one terminal of the capacitor you get a negative charge on the other terminal, so we attract some electrons into a channel underneath the gate.
Now we have n-type silicon in the source, n-type silicon in the drain, and we have electrons in small channel right underneath the gate, and now there's a path for electrons to flow from the source to the drain.
So we say turns ON.

In summary for nMOS transistor when the gate is zero the transistor is off - source and drain are disconnected.
When the gate is one the transistor turns ON and the source and drain become connected.
We call this nMOS because the conduction is through n-type, and it's a metal oxide semiconductor transistor.

## Transistors: pMOS

- pMOS transistor is opposite
    * ON when Gate = 0
    * OFF when Gate = 1

It's got p-type source and drain, with an n-type substrate.
The pMOS turns ON when the gate is at a low voltage and it turns off when the gate is at a high voltage.
The symbol for the pMOS is just like the nMOS except it has a bubble on the gate indicating that it turns on when the gate is zero instead of one.

## Transistor Function

In summary we can think of a transistor as a three terminal switch with a gate that controls whether the switch is on and a source in a drain that are either connected or disconnected.

For nMOS transistor when the gate is zero the transistor is OFF - source and drain are disconnected.
When the gate is one the transistor turns ON - source and drain are connected.

For pMOS transistor it's the opposite.
When the gate is zero source and drain are connected and it's ON.
When the gate is one source and drain are disconnected and it's OFF.

- nMOS: are good in passing 0's, so connect source to GND
- pMOS: are good in passing 1's, so connect source to VDD

If we want to build up a logic gate we'll have some inputs and an output.

We'll build a network of nMOS transistors between the output and ground.
So the nMOS will do their good direction pulling the output down towards the ground, pulling it towards zero.

We'll build a network of pMOS transistors between the output and power, and that way we'll be able to pull the output up to high, because the pMOS pass ones well.