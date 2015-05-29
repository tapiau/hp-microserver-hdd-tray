$fn=40;

use <latch.scad>;

module srubki()
{
    translate([-1,0,5.8-2.15])
        rotate([0,90,0])
            cylinder(r=2.1,h=111);

    translate([0,0,5.8-2.15])
    {
        rotate([0,90,0])
            cylinder(r=4,h=1.7);

        translate([108.9-2.5,0,0])
            rotate([0,90,0])
                cylinder(r=4,h=2.5);
    }

}

module srubki2()
{
    translate([0,37.38+2.15,0])
    {
        srubki();

        translate([0,101.8,0])
        {
            srubki();
        }
    }
}

module zabki()
{
    translate([106.7,172-9.4,3.6])
    {
        len=10;
        
        cube([2.2,len,3]);
        
        translate([0,0,2.42+2.36])
            cube([2.2,len,3]);
        
        translate([0,0,2.42+2.36*2+1.92])
            cube([2.2,len,3]);
    }
}

module skosy()
{
    translate([0,130,27])
        rotate([-15,0,0])
            cube([110.9,50,10]);

    translate([0,132,-18])
        rotate([15,0,0])
            cube([110.9,50,10]);

}

module podpora()
{
    cylinder(r1=3,r2=0.5,h=6);
}

module podpory()
{
    translate([0,171,0])
    {
        for(n=[10:10:100])
        {
            translate([n,0,0])
                podpora();
        }
    }
    
    translate([5,168,0])
    cube([100,6,1]);
}

//srubki2();
//zabki();
//skosy();


module ramka()
{
    difference()
    {
        cube([108.4,172,18]);

        translate([3,0,-1])
            cube([102,170,20]);

        translate([3,10,-4])
            cube([102,170,10]);

        cube([109,2.1,20]);

        srubki2();

        zabki();

        skosy();
    }
    podpory();
}

module przod()
{
    translate([0,18,0])
        cube([109,2.1,20]);
    
    color("blue")
        translate([96.2,8.2,-3.2])
            cylinder(r=2.2,h=26.5);
    
    translate([94,8.2,0])
        cube([4.8,10,20]);

    for(i = [0 : 10.8 : 109])
    {
        translate([i+0.5,19,-3.2])
            cylinder(h=3.2,r1=2,r2=1);
    }
    translate([0,17,-3.2])
        cube([109,4,1]);


    for(i = [0 : 10 : 50])
    {
        translate([i+32,3,-3.2])
            cylinder(h=7.2,r1=2,r2=1);
    }
        translate([35,11,-3.2])
            cylinder(h=7.2,r1=2,r2=1);

    translate([32,0,-3.2])
        cube([50,12,1]);

}

przod();

translate([108,0,23.2])
    rotate([0,90,90])
        latch();

translate([0,0,-2.2])
{
    translate([0,5,0])
    {
        translate([102,0,0])
            cylinder(r=0.5,h=24);

        translate([99,0,0])
            cylinder(r=0.5,h=24);
    }
    translate([0,8,0])
    {
        translate([100,0,0])
            cylinder(r=0.5,h=24);

        translate([105,0,0])
            cylinder(r=0.5,h=24);

        translate([110,0,0])
            cylinder(r=0.5,h=24);
    }
    translate([0,12,0])
    {
        translate([89,0,0])
            cylinder(r=0.5,h=24);

        translate([96,0,0])
            cylinder(r=0.5,h=24);

        translate([100,0,0])
            cylinder(r=0.5,h=24);

        translate([105,0,0])
            cylinder(r=0.5,h=24);

        translate([110,0,0])
            cylinder(r=0.5,h=24);
    }
    translate([0,15,0])
    {
        translate([90,0,0])
            cylinder(r=0.5,h=24);

        translate([96,0,0])
            cylinder(r=0.5,h=24);

        translate([101,0,0])
            cylinder(r=0.5,h=24);

    }
}

translate([99,4,4])
{
    difference()
    {
        cube([11.5,12,1]);
        
        translate([5,0,0])
            cube([8,3,1]);

        translate([3,9,0])
            cube([18,3,1]);
    }
}

translate([99,4,9])
{
    difference()
    {
        cube([11.5,12,1]);
        
        translate([5,0,0])
            cube([8,3,1]);

        translate([3,9,0])
            cube([18,3,1]);
    }
}

translate([99,4,15])
{
    difference()
    {
        cube([11.5,12,1]);
        
        translate([5,0,0])
            cube([8,3,1]);

        translate([3,9,0])
            cube([18,3,1]);
    }
}

translate([89.5,12,1])
    rotate([0,0,70])
        cube([3,1,18]);

