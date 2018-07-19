$fn=40;

module front_handle(width)
{
    translate([-width/2-3,0,0])
    {
        translate([0,6,0])
            cube([width,4.4,20]);

        translate([0,8.2,0])
            cylinder(r=2.2,h=20);

        translate([width,8.2,0])
            cylinder(r=2.2,h=20);
    }
}

module front(width)
{
    translate([0,16,0])
        cube([width,4.1,20]);

    translate([width/2+10,8.2,0])
        cube([4.4,10,20]);

    translate([width/2-10,8.2,0])
        cube([4.4,10,20]);

    translate([width/2+5,0,0])
    {
        front_handle(34);
    }
}

//translate([108,0,23.2])
//    rotate([0,90,90])
//        latch();
//latch_internal_support();

front(108.4);
