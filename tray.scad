$fn=40;


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
    translate([0,38.38+2.15,0])
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
        cube([2.2,9.4,3]);
        
        translate([0,0,2.42+2.36])
            cube([2.2,9.4,3]);
        
        translate([0,0,2.42+2.36*2+1.92])
            cube([2.2,9.4,3]);
    }
}

//srubki2();
//zabki();

difference()
{
    cube([108.9,172,18.25]);

    translate([3,0,-1])
        cube([102,170,20]);

    srubki2();

    translate([0,130,27])
        rotate([-15,0,0])
            cube([110.9,50,10]);


    translate([0,130,-20])
        rotate([15,0,0])
            cube([110.9,50,10]);


    zabki();

}
