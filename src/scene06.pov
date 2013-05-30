// Camera is placed 10 units behind the origin
camera {
    location <0, 12, -15>
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

// Water with ripples
plane {
    y, 0
    texture {
        pigment {
            color rgb <0.09, 0.65, 0.91>
        }
        normal {
            ripples 0.5
            turbulence 0.25
            scale 1.5
        }
    }
    finish {
        phong 0.5
        reflection 0.4
    }
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
    translate <0, 1.2, 0>
    finish {
        phong 0.2
    }
}
