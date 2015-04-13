$fn=40;

module b1()
{
    difference()
    {
        union()
        {
            difference()
            {
                cube([3,16.74,16.45]);
                
                translate([0,11.74,11.45])
                    cube([3,20,16.45]);
                
                translate([0,-8,20])
                    rotate([-45,0,0])
                        cube([3,10,10]);
            }
            
            translate([0,11.74,11.45])
                rotate([0,90,0])
                    cylinder(r=5,h=3);
            
            
            color("yellow")
                translate([0,-9,5.5])
                    difference()
                    {
                        cube([3,9,7.36]);
                        
                        translate([0,-6,-2])
                        rotate([-45,0,0])
                        cube([3,9,7.36]);


                        translate([0,0,6])
                        rotate([15,0,0])
                        cube([3,9,7.36]);
                    }
        }
        
    }
    
}   

module l1()
{
    translate([(26.5-12)/2,11.2,0])
    {
        color("green")
        difference()
        {
            union()
            {
                difference()
                {
                    cube([12,67,9]);
                    translate([0,0,9])
                        rotate([-5,0,0])
                            cube([12,67,9]);
                }
                
                
                translate([0,60.5,0])
                    rotate([10,0,0])
                        cube([12,7,20]);
            }
            
            
            translate([0,67.5,-3])
                rotate([10,0,0])
                    cube([12,4,25]);
            translate([0,64,0])
                cube([12,3.5,1.8]);
        }
    }
}

difference()
{
    union()
    {
        color("red")
            cube([26.5,21.2,3.6]);

        l1();
        
        translate([0,4.46,0])
        {
            b1();
            translate([26.5-3,0,0])
                b1();
        }
    }
    translate([0,11.74,8.3])
        rotate([0,90,0])
            cylinder(r=2.55,h=26.5);
}
