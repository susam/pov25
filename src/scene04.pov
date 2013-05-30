camera {
    location <3, 2, -8>
    look_at <2, 1, 0>
}

light_source {
    <5, 9, -5>
    color rgb <0.7, 0.7, 0.7>
}

light_source {
    <5, 9, 0>
    color rgb <0.6, 0.6, 0.6>
}

// Front wall
box {
    <0, 0, 0> <10, 10, 1>
    pigment {
        bozo
        turbulence 1
        color_map {
            [0.7 color rgb <1.0, 0.71, 0.76>]
            [0.9 color rgb <1.0, 0.61, 0.66>]
        }
    }

    finish {
        phong 0.5
        reflection 0.1
    }
}

// Left wall
box {
    <0, 10, 0> <-1, 0, -10>
    pigment {
        bozo
        turbulence 1
        color_map {
            [0.7 color rgb <1.0, 0.71, 0.76>]
            [0.9 color rgb <1.0, 0.61, 0.66>]
        }
    }

    finish {
        phong 0.5
        reflection 0.1
    }
}

// Right wall
box {
    <10, 10, -10> <11, 0, 0>
    pigment {
        bozo
        turbulence 1
        color_map {
            [0.7 color rgb <1.0, 0.71, 0.76>]
            [0.9 color rgb <1.0, 0.61, 0.66>]
        }
    }

    finish {
        phong 0.5
        reflection 0.1
    }
}

// Back wall
box {
    <10, 10, -10> <-1, 0, -10>
    pigment {
        bozo
        turbulence 1
        color_map {
            [0.7 color rgb <1.0, 0.71, 0.76>]
            [0.9 color rgb <1.0, 0.61, 0.66>]
        }
    }

    finish {
        phong 0.5
        reflection 0.1
    }
}

// Back wall door
box {
    <7.5, 0, -10> <9.0, 4, -9.9>
    pigment {
        wood
        color_map {
            [0.7 color rgb <0.94, 0.74, 0.34>]
            [0.9 color rgb <0.89, 0.69, 0.29>]
        }
        translate <1.2, 0.5, 0>
    }

    finish {
        phong 0.2
    }
}

// Door knob
sphere {
    <7.7, 2, -9.85>, 0.1
    pigment {
        color rgb <0.99, 0.82, 0.09>
    }

    finish {
        phong 0.8
        reflection 0.8
    }
}

// Floor
box {
    <0, 0, 0> <10, -1, -10>
    pigment {
        checker
        color rgb <1.0, 0.5, 0.6>
        color rgb <1.0, 0.7, 0.8>
    }
}

// Ceiling
box {
    <0, 10, 0> <10, 15, -10>
    pigment {
        color rgb <1.0, 1.0, 1.0>
    }
}

// Wooden block
box {
    <1.2, 0, -2.6> <2.2, 1, -3.6>
    pigment {
        wood
        color_map {
            [0.2 color rgb <0.94, 0.74, 0.34>]
            [0.3 color rgb <0.89, 0.69, 0.29>]
            [0.6 color rgb <0.39, 0.23, 0.06>]
            [0.9 color rgb <0.72, 0.32, 0.12>]
        }
        translate <1.2, 0.5, 0>
    }

    finish {
        phong 0.2
    }
}

// Crystal ball
sphere {
    <1.7, 1.5, -3.1>, 0.5
    pigment {
        color rgbf <1, 1, 1, 0.9>
    }
    finish {
        reflection 0.1
        refraction 1.0
        ior 1.5
        phong 1.0
    }
}

// Mirror frame
box {
    <1, 0.2, 0> <4.5, 4.2, -0.1>
    pigment {
        wood
        color_map {
            [0.2 color rgb <0.94, 0.74, 0.34>]
            [0.3 color rgb <0.89, 0.69, 0.29>]
            [0.6 color rgb <0.39, 0.23, 0.06>]
            [0.9 color rgb <0.72, 0.32, 0.12>]
        }
        translate <1.2, 0.5, 0>
    }

    finish {
        phong 0.2
    }
}

// Mirror
box {
    <1.1, 0.21, -0.1> <4.4, 4.1, -0.2>

    pigment {
        color rgb <1.0, 1.0, 1.0>
    }

    finish {
        reflection 1.0
        ambient 0
        diffuse 0
    }
}

// Blue ball
sphere {
    <4.2, 0.6, -2>, 0.6
    pigment {
        color rgb <0.42, 0.50, 0.99>
    }

    finish {
        phong 0.2
        reflection 0.05
    }
}

// Green ball
sphere {
    <3.2, 0.3, -4>, 0.3
    pigment {
        color rgb <0.10, 0.82, 0.40>
    }

    finish {
        phong 0.2
        reflection 0.05
    }
}
