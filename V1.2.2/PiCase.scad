$fn = 60;

//{"params":[225.59,25.58,4,1],"type":"roundHole"},
//{"params":[225.59,91.23,4,2],"type":"roundHole"},
//{"params":[99.39,25.58,4,3],"type":"roundHole"},
//{"params":[99.39,91.23,4,4],"type":"roundHole"},
//{"params":[109.39,15.58,106.2,93.65,3,5],"type":"rectHole"}],

width = 136; // X
height = 120; // Y
depth = 55; // Z
// First hole y offset
// this is different between V1.2.1 and 1.2.2 cases
//holeYOffset = 21.58; // V1.2.1 - TODO: Check!
holeYOffset = 25.58; // V1.2.2

module PiModel() {
    translate([13+5, holeYOffset + 2, 13]) {
        cube([85, 60, 40]);
        
        // USB 
        translate([-20,0,1]) {
            cube([22,15, 18]);
        }
        
        // Second USB
        translate([-20,20,1]) {
            cube([22,15, 18]);
        }
        
        // Power connector
        translate([85,36,12]) {
            cube([15,12, 10]);
        }
    }
}

module baseLayer() {
    difference() {
        union() {
            // Base layer for holes.
            cube([width, height, 1.5]);
            
            translate([5 + 10, 0, -0]) {
                cube([width - 15 - 10, height, depth]);
            }
        }
        union() {
            // Drill the holess..
            // 5mm in, and 25.58mm down (from laser) - 3mm thickness acrylic + tollerance
            translate([5, holeYOffset- 3.2, -0.1]) {
                cylinder(d=4, h=2);
                translate([126.2, 0, 0]) {
                    #cylinder(d=4, h=2);
                }
                
                translate([126.2, 65.65, 0]) {
                    #cylinder(d=4, h=2);
                }
                
                translate([0, 65.65, 0]) {
                    #cylinder(d=4, h=2);
                }
            }
            
            // Cut out main Pi Body
            translate([5 + 12, -0.01, -0.1]) {
                cube([width - 17 - 11.5, height-1.5, depth-2]);
            }
            
            // Pi Offset (Y=0 = 27mm, X=13+5)
            // Cut out for the USB connectors
            translate([5 + 9 - 0.01, 26, 15]) {
                cube([4, 36, 20]);
            }
            
            // Cutout for the power cable.
            translate([width - 15, height +4, 0]) {
                rotate([90,0,0]) {
                    #cylinder(d=6, h=20);
                }
            }
            
            // Hole for temperature sensor.
            translate([50, 50, depth -10]) {
            
                #cylinder(d=5, h=20);
            }
                
        }
    }
}

baseLayer();
%PiModel();