New 6502 language module for [Ghidra](https://ghidra-sre.org/).

New stuff compared to the standard 6502 support:

* remove default memory block stuff (not useful for me)
* 65c02 instructions support
* minor fixes to the opcode descriptions (unclear this makes a big
  difference)

Probably coming eventually:

* Rockwell 65c02 instructions
* WDC 65c02 instructions
* NMOS undocumented instructions
* other improvements when/if I figure stuff out...

To install, copy `6502_2` from the `dist` folder in the repo to
`Ghidra/Processors/` in your Ghidra folder. (There might be a way to
make Ghidra use it in situ, but I couldn't find one.)

The CPUs come up as `6502`/`CMOS` and `6502`/`NMOS` in the languages
list. (`6502`/`default` is the spec that comes with Ghidra.)

The default memory map has two regions corresponding to zero page and
stack. Use `Window` > `Memory Map` to add additional regions
corresponding to whatever other areas don't overlap your binary. This
isn't very slick but I haven't figured out how to make it usefully
nicer.

# Building it yourself

Prerequisites:

* all the stuff you need to run Ghidra
* [Apache Ant](https://ant.apache.org/) - I used ver 1.10.5

Tested on OS X.

    make GHIDRA=<<path to Ghidra>>
	
The default value for `GHIDRA` is `$HOME/ghidra_9.0`.

The Makefile builds everything, rebuilds the `dist/6502_2` folder, and
also copies it to `$GHIDRA/Ghidra/Processors/`, to make it easier to
iterate on.

It seems you have to restart Ghidra after making any change.
