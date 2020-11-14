// PRUSA iteration3
// Extruder-body
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


use <extruder-main.scad>

module ext_body(){   
    difference(){
       extruder_body();
       extruder_mount_holes();
    }    
}

//BLTOUCH style probe bracket
translate([-25,17,0]) 
{
    difference() {
    union(){
        //translate([15.5,0,10]) cube([13,2,2]);
        
        difference() {
            
            //Main plate to hold BLTOUCH
            translate([-3,0,0]) cube([32,2.5,12]);

            translate([29,-0.1,7]) rotate([0,-45,0]) cube([10,3,10]);
            
            //3 holes for screws and stuff
            translate([18.5,4,7]) rotate([90,0,0]) cylinder(d=3.4,h=10, $fn=20, center=true);
            translate([0.5,4,7]) rotate([90,0,0]) cylinder(d=3.4, h=10, $fn=20, center=true);
            translate([19.5/2,4,7]) rotate([90,0,0]) cylinder(d=6, h=10, $fn=20, center=true);
            
            
        }
        
        intersection() {
        translate([-15,-15,-1]) cube([40,15,20]);
        translate([20,12,0]) cylinder(h=1.4, d=50, center=false);
        }
    }
    
    
//        translate([-15,2.5,-1]) cube([40,40,20]);
    }
    
}

extruder_body();
//ext_body();     
