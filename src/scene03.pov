// Camera is placed 10 units behind the origin
camera {
    location <0, 0, -10>
    look_at <0, 0, 0>
}

// Light source is placed 10 units behind the origin
light_source {
    <0, 0, -10> 
    color rgb <1, 1, 1>
}

// Light source shining from top left corner of the scene
light_source {
    <-10, 5, 0> 
    color rgb <1, 1, 1>
}

// Rubber torus
torus {
    4, 1.5 
    pigment {
        gradient <0, 1, 0>
        turbulence 1
        color_map {
            [0.0 color rgb <0.99, 0.50, 0.42>]
            [0.5 color rgb <0.89, 0.40, 0.32>]
            [0.9 color rgb <0.79, 0.30, 0.22>]
        }
    }
    rotate <-40, 0, 0>
    translate <0, 1, 0>
    finish {
        phong 0.2
    }
}

// Marble sphere
sphere {
    <0, 0, 0>, 2
    pigment {
        marble
        turbulence 1
        color_map {
            [0.0 color rgb <0.90, 0.90, 0.90>]
            [0.5 color rgb <0.80, 0.80, 0.80>]
            [0.9 color rgb <0.70, 0.70, 0.70>]
        }
    }
    finish {
        phong 0.4
        reflection 0.1
    }
    translate <0, 1, 0>
}
