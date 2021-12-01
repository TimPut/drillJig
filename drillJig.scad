include <threads.scad>;
$fn=100;

module Top(){
difference(){
  union(){
    translate([-25.4/2,-25.4/2,0])cube([25.4,250,25.4]);
    translate([0,0,0])rotate([-90,0,0])cylinder(d=25.4,h=250-25.4/2);
    translate([-(25.4+2)/2,250-25.4,25.4/2])rotate([0,90,0])cylinder(d=8,h=25.4+2);
  };
  union(){
    DremelNose();
    translate([-(25.4+3)/2,250-25.4,25.4/2])rotate([0,90,0])cylinder(d=4,h=25.4+2+2);
    };
  };
};
module Bottom(){
difference(){
  union(){
    translate([-25.4/2-5-1,-25.4/2,57+16])cube([25.4+5+5+1+1,250+.3,25.4]);
    translate([-25.4/2-5-1,170-25.4/2,25.4])cube([25.4+5+5+1+1,60,60]);
    #  translate([-25.4/2-5-1,190.3-25.4/2,25.4+20])cube([25.4+5+5+1+1,60,40]);

    translate([25.4/2+1,250-25.4-26/2,25.4/2])cube([5,26,62]);
    translate([25.4/2+1,250-25.4,25.4/2])rotate([0,90,0])cylinder(d=26+6,h=5);

    translate([-25.4/2-1-5,250-25.4-26/2,25.4/2])cube([5,26,62]);
    translate([-25.4/2-1-5,250-25.4,25.4/2])rotate([0,90,0])cylinder(d=26+6,h=5);
  };
  union(){
    translate([25.4/2+1,250-25.4,25.4/2])rotate([0,90,0])cylinder(d=16,h=5);
    translate([-25.4/2-1-5,250-25.4,25.4/2])rotate([0,90,0])cylinder(d=16,h=5);
    translate([0,0,50])cylinder(d=5.16,h=200);
    #translate([0,0,73])cylinder(d=3/8*25.4,h=10);
    };
};
};
module DremelNose(){
  union(){
    translate([0,0,-0.5*25.4])cylinder(d1=2*25.4,d2=1.5*25.4,h=0.5*25.4);
    translate([0,0,2+9+22.5])cylinder(d=1.6,h=22);
    translate([0,0,2+9])cylinder(d=11.5,h=22.5);
    cylinder(d=0.75*25.4,h=2);
    translate([0,0,2])
      english_thread (diameter=3/4, threads_per_inch=12, length=9/25.4, internal=true,leadin=2);
  };
};


/* Top(); */
Bottom();
