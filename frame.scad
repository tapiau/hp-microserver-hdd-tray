module srubki(width)
{
    translate([-1,0,5.8-2.15])
        rotate([0,90,0])
            cylinder(r=2.1,h=width+4);

    translate([0,0,5.8-2.15])
    {
        rotate([0,90,0])
            cylinder(r=4,h=1.7);

        translate([width-2,0,0])
            rotate([0,90,0])
                cylinder(r=4,h=2.5);
    }

}

module srubki2(width)
{
    translate([0,37.38+2.15,0])
    {
        srubki(width);

        translate([0,101.8,0])
        {
            srubki(width);
        }
    }
}

module zabki(width)
{
    translate([width-1.7,172-9.4,3.6])
    {
        len=10;
        
        cube([2.2,len,3]);
        
        translate([0,0,2.42+2.36])
            cube([2.2,len,3]);
        
        translate([0,0,2.42+2.36*2+1.92])
            cube([2.2,len,3]);
    }
}

module skosy(width)
{
    translate([0,130,27])
        rotate([-15,0,0])
            cube([width+2,50,10]);

    translate([0,132,-18])
        rotate([15,0,0])
            cube([width+2,50,10]);

}

module podpora()
{
    cylinder(r1=3,r2=0.5,h=6);
}

module frame_support()
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

module frame(width)
{
    translate([0,-3,0])
    difference()
    {
        translate([0,23,0])
            cube([width,149,18]);

        translate([3,0,-1])
            cube([width-6.4,170,20]);

        translate([3,10,-4])
            cube([width-6.4,170,10]);

        cube([width+.2,2.1,20]);

        srubki2(width);

        zabki(width);

        skosy(width);
    }
    
//    frame_support();
}

frame(108.4);

//srubki2();
//zabki();
//skosy();
//frame();

