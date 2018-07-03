union(){

difference(){
	cube([95, 185, 1.6]);
	translate([4, 4, -1]) cylinder(r=1.6, h=3, $fn=50);
	translate([91, 4, -1]) cylinder(r=1.6, h=3, $fn=50);
	translate([4, 90, -1]) cylinder(r=1.6, h=3, $fn=50);
	translate([91, 91, -1]) cylinder(r=1.6, h=3, $fn=50);
	translate([4, 181, -1]) cylinder(r=1.6, h=3, $fn=50);
	translate([91, 181, -1]) cylinder(r=1.6, h=3, $fn=50);
	translate([9.5, 129.5, -1]) cylinder(r=1.6, h=3, $fn=50);
	translate([9.5, 173.5, -1]) cylinder(r=1.6, h=3, $fn=50);
	translate([85.6, 129.5, -1]) cylinder(r=1.6, h=3, $fn=50);
	translate([85.6, 173.5, -1]) cylinder(r=1.6, h=3, $fn=50);
}

translate([89.25, 133.8, 1.6]) cube([2.5, 2.5*14, 11]);

translate([8.25, 146.5, 1.6]) cube([2.5, 2.5*4, 11]);

difference(){
	translate([6.5, 126.5, 12.6]) cube([86, 50, 1.6]);
	translate([9.5, 129.5, 11]) cylinder(r=1.6, h=5, $fn=50);
	translate([9.5, 173.5, 11]) cylinder(r=1.6, h=5, $fn=50);
	translate([85.6, 129.5, 11]) cylinder(r=1.6, h=5, $fn=50);
	translate([85.6, 173.5, 11]) cylinder(r=1.6, h=5, $fn=50);
}

translate([89.25, 133.8, 14.2]) for(a = [0:13]){
	translate([1.25, 1.25+a*2.5, 0]) cylinder(h=1.4, r1=0.8, r2=0, $fn=20);
}

translate([8.25, 146.5, 14.2]) for(a = [0:3]){
	translate([1.25, 1.25+a*2.5, 0]) cylinder(h=1.4, r1=0.8, r2=0, $fn=20);
}

translate([12.9, 126.5, 12.6]) cube([69.20, 50, 5]);

translate([12.85, 177, 1.6]) union(){ 
	cube([16.7, 7.5, 9]);
	translate([4.1, 7.5, 3]) cube([8, 7.1, 4]);
}

translate([38.55, 177, 1.6]) union(){ 
	cube([16.7, 7.5, 9]);
	translate([4.1, 7.5, 3]) cube([8, 7.1, 4]);
}

translate([60.75, 177.75, 1.6]) union(){
	translate([2.125, 0, 5]) rotate([-90, 0, 0]) cylinder(r=1.5, h=15, $fn=20);
	cube([4.25, 3, 5]);
}

translate([69, 175.85, 0]) translate([4.95, 9.2, 3.6]) rotate([90, 0, 180])  import("AB2_USB_MINI_SMD.stl");

translate([19.05, 16.6, 0]) for(a = [0:3]){
	for(b = [0:5]){
		translate([a*19.05, b*19.05, 12.4]) union(){
			translate([0, 0, 7]) import("switch_mx.stl");
			import("key.stl");
		}
	}
}

translate([15, 6, -8]) cube([65, 121, 8]);


translate([47.2, 159, -1.2]) union(){
	cube([5, 5, 1.2]);
	translate([2.5, 2.5, -0.3]) cylinder(r=1, h=0.3, $fn=20);
}
}