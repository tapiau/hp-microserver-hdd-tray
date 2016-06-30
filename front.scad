$fn=40;

module front(width)
{
    translate([0,18,0])
        cube([width,2.1,20]);

    translate([width-14.4,8.2,0])
        cube([4.4,10,20]);

// axle for latch    
//    color("blue")
//    translate([width-12.2,8.2,-3.2])
//        cylinder(r=2.2,h=26.5);
    

// handle instead of latch
    translate([width-16.6,6,0])
        cube([8.8,4.4,20]);

    translate([width-16.6,8.2,0])
        cylinder(r=2.2,h=20);

    translate([width-7.8,8.2,0])
        cylinder(r=2.2,h=20);

}

//translate([108,0,23.2])
//    rotate([0,90,90])
//        latch();
//latch_internal_support();

front(108.4);
