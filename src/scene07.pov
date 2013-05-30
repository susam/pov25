#include "colors.inc"
#include "textures.inc"

camera {
    location <3, 0.7, -4>
    look_at <1.5, 0.7, 0>
}

// Two light sources almost at the same position
light_source {
    <5, 9, -2>
    color Gray60 
}

light_source {
    <5, 9, -2.1>
    color Gray60 
}

// Front wall
box {
    <0, 0, 0> <10, 10, 1>
    pigment {
        color rgb <1.0, 0.71, 0.76>
    }

    finish {
        phong 0.1
    }
}

// Left wall
box {
    <0, 10, 0> <-1, 0, -10>
    pigment {
        color rgb <1.0, 0.71, 0.76>
    }

    finish {
        phong 0.1
    }
}

// Right wall
box {
    <10, 10, -10> <11, 0, 0>
    pigment {
        color rgb <1.0, 0.71, 0.76>
    }

    finish {
        phong 0.1
    }
}

// Back wall
box {
    <10, 10, -10> <-1, 0, -10>
    pigment {
        color rgb <1.0, 0.71, 0.76>
    }

    finish {
        phong 0.1
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

    finish {
        phong 0.4
        reflection 0.2
    }
}

// Ceiling
box {
    <0, 10, 0> <10, 15, -10>
    pigment {
        color rgb <1.0, 1.0, 1.0>
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
    <1.1, 0.3, -0.1> <4.4, 4.1, -0.11>

    pigment {
        color rgb <1.0, 1.0, 1.0>
    }

    finish {
        reflection 1.0
        ambient 0
        diffuse 0
    }
}

// Pine wood block
box {
    <1.2, 0, -1.2> <1.7, 0.5, -1.7>
    texture {
        Pine_Wood
    }
}

// Ruby glass ball
sphere {
    <1.45, 0.8, -1.45>, 0.3
    texture {
        Ruby_Glass
    }
}

// White marble ball
sphere {
    <1.5, 0.22, -2.4>, 0.22
    texture {
        White_Marble
    }
}

// Agate
sphere {
    <2.0, 0.12, -2.4>, 0.12
    texture {
        Brown_Agate
    }
}

// Blue Agate
sphere {
    <2.4, 0.15, -2.6>, 0.15
    texture {
        Blue_Agate
    }
}

// Granite ball
sphere {
    <2.1, 0.2, -1>, 0.2
    texture {
        Pink_Granite 
    }
}

// Aluminium ball
sphere {
    <2.7, 0.25, -2.1>, 0.25
    texture {
        Aluminum
    }
}

// Red marble ball
sphere {
    <3.2, 0.3, -1.5>, 0.3
    texture {
        Red_Marble
    }
}
