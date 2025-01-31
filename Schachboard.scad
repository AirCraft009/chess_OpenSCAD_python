module checkerboard(x_max, y_max, flip) {
    for (i = [0:1:y_max]) {
        for (x = [0:1:x_max]) {
            translate([10 * x, 10 * i, 0]) {
                if ((x + i) % 2 == 0) {
                    color(flip ? "black" : "white") cube(10);
                } else {
                    color(flip ? "white" : "black") cube(10);
                }
            }
        }
    }
}

// Call the function with initial state
checkerboard(7, 7, true);
