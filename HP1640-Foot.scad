
// HP 1640A Read Feet.
include <roundedcube.scad>

module feet () {
    union () {
        difference () {
            roundedcube ([21,21,12], false, 0.7, "zmax");
            translate ([10.5, 10.5, -0.5]) cylinder (h=13, r=1.8, $fn=100);
        
        }
        difference () {
            union () {
                translate ([4, 4, 12]) roundedcube ([13,13,28], false, 0.7, "zmax");
                translate ([1, 1, 38]) roundedcube ([19,19,2], false, 0.7, "all");
            }
            translate ([10.5, 10.5, 3.7]) cylinder (h=36.5, r=4.5, $fn=100);
        }
    }
}


feet();
