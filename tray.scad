$fn=40;

difference()
{
    cube([108.9,172,18.25]);

    translate([4.1,0,-1])
        cube([101.8,170,20]);

    translate([-1,38.38+2.15,5.8-2.15])
        rotate([0,90,0])
            cylinder(r=2.15,h=111);

    translate([0,38.38+2.15,5.8-2.15])
        rotate([0,90,0])
            cylinder(r=4,h=2.5);

    translate([108.9-2.5,38.38+2.15,5.8-2.15])
        rotate([0,90,0])
            cylinder(r=4,h=2.5);

    translate([0,101.8,0])
    {
        translate([-1,38.38+2.15,5.8-2.15])
            rotate([0,90,0])
                cylinder(r=2.15,h=111);

        translate([0,38.38+2.15,5.8-2.15])
            rotate([0,90,0])
                cylinder(r=4,h=2.5);

        translate([108.9-2.5,38.38+2.15,5.8-2.15])
            rotate([0,90,0])
                cylinder(r=4,h=2.5);
    }

    translate([0,130,27])
        rotate([-15,0,0])
            cube([110.9,50,10]);


    translate([0,130,-20])
        rotate([15,0,0])
            cube([110.9,50,10]);


    translate([106.7,172-9.4,3.6])
    {
        cube([2.2,9.4,2.36]);
        translate([0,0,2.42+2.36])
        cube([2.2,9.4,2.36]);
        
        translate([0,0,2.42+2.36*2+1.92])
        cube([2.2,9.4,2.36]);
    }

}
