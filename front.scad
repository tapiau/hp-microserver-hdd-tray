$fn=40;

use <latch.scad>;

module front()
{
    translate([0,18,0])
        cube([109,2.1,20]);
    
//    color("blue")
        translate([96.2,8.2,-3.2])
            cylinder(r=2.2,h=26.5);
    
    translate([94,8.2,0])
        cube([4.8,10,20]);
}

front();

//translate([108,0,23.2])
//    rotate([0,90,90])
//        latch();
//latch_internal_support();

