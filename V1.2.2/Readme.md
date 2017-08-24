Same as V1.2.1 (Draft excluder at rear and Pi Display, 40mm higher to make better use of 600x400 acrylic sheet).

* Increased cutout for the Raspberry Pi Display as the fixings appear to have changed slightly and it was already tight to fit.
* Moved Pi display down a little
* Cutout in top for 40mm fan to cool Pi.
* Cutout at rear for 80 or 120mm fan to cool/filter printer environment
* Add hole for DC Power connector. (12mm)
* Bottom - added plates for fans to cover hole if required
* Bottom - reduced cutout for screw/boden cable exit so it doesn't cut through the back as well.

Right, Left are unchanged from V1.2.1

Use http://www.makercase.com/ to create laser cut plan from .json file.

40mm fan (Top)
--------------
Holes 32mm apart. (16 from center)
main hole 38mm

Use:
{"params":[161,309,37,1],"type":"roundHole"},
{"params":[145,293,4,2],"type":"roundHole"},
{"params":[145,325,4,3],"type":"roundHole"},
{"params":[177,325,4,4],"type":"roundHole"},
{"params":[177,293,4,5],"type":"roundHole"}


80mm fan (Back)
---------------
Holes 71mm apart. (35.5 from center)
main hole 75mm

Use:
{"params":[60,60,75,10],"type":"roundHole"},
{"params":[24.4,24.4,4.4,11],"type":"roundHole"},
{"params":[24.4,95.5,4.4,12],"type":"roundHole"},
{"params":[95.5,95.5,4.4,13],"type":"roundHole"},
{"params":[95.5,24.4,4.4,14],"type":"roundHole"}

Add also cutout on bottom to cover the hole if not in use.

120mm fan (Back)
----------------
Holes 105mm apart. (52.5 from center)
main hole 115mm

Use:
{"params":[80,80,115,15],"type":"roundHole"},
{"params":[27.5,27.5,4.4,16],"type":"roundHole"},
{"params":[27.5,132.5,4.4,17],"type":"roundHole"},
{"params":[132.5,132.5,4.4,18],"type":"roundHole"},
{"params":[132.5,27.5,4.4,19],"type":"roundHole"},

Add also cutout on bottom to cover the hole if not in use.