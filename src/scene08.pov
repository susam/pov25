#include "colors.inc"
#include "textures.inc"

#declare wall =
box {
    <0, 0, 0> <10, 10, 0.2>

    pigment {
        color rgb <1.0, 0.71, 0.76>
    }
}

#declare window_pane =
box {
    <0.05, 0.05, -1> <0.95, 0.95, 2>
}

camera {
    location <3, 3, -9.5>
    look_at <10, 1, 0>
}

// Light source inside the room to lit the room
light_source {
    <8, 8, -5>
    color Gray50
    media_interaction off
}

// Light source outside the room
light_source {
    <100, 100, -5>
    color White
}

// Sky outside the room
background {
    rgb <0.3, 0.6, 0.9>
}

// Bounding box for isotropic scattering
box {
    <5, 0.201, -3> <9.999, 6, -7>
    pigment {
        rgbt 1
    }
    hollow
    interior {
        media {
            scattering {
                1, Gray30
                extinction 0.1
            }
            samples 100, 300
        }
    }
}

// Front wall
object {
    wall
}

// Left wall
object {
    wall
    rotate <0, 90, 0>
}

// Right wall
difference {
    object {
        wall
    } 
    object {
        window_pane
        translate <4, 3, 0>
    }
    object {
        window_pane
        translate <5, 3, 0>
    }
    object {
        window_pane
        translate <4, 4, 0>
    }
    object {
        window_pane
        translate <5, 4, 0>
    }
    rotate <0, 90, 0>
    translate <10, 0, 0>
}

// Back wall
object {
    wall
    translate <0, 0, -10>
}

// Floor
object {
    wall
    rotate <-90, 0, 0>
    pigment {
        checker
        color rgb <1.0, 0.5, 0.6>
        color rgb <1.0, 0.7, 0.8>
    }
}

// Ceiling
object {
    wall
    rotate <-90, 0, 0>
    translate <0, 10, 0>
    pigment {
        color rgb <1.0, 1.0, 1.0>
    }
}
