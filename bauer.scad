module head(x){
    translate([0, 0, x])sphere(x/3, $fn =100);
}



module body(x,y, z){
        for(i = [0:z:y]){
            cylinder(100/y, x-i, true, $fn = 105);
        } 
}

module body_better(height, width){
    cylinder(height/width, width,true, $fn = 100);
    hull(){
        cylinder(height/10, width/2, true,$fn = 100);
        translate([0,0,height])cylinder(1, height/width/2, true,$fn = 100);
    }
    
}

body_better(10, 5);
head(10);

