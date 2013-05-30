#include "colors.inc"
#include "textures.inc"

// Camera
camera {
    location <4, 4, -7>
    look_at <1, 0, 0>
}

// Sunlight
light_source {
    <1000, 1000, -1000>
    color White
}

// Sky
sphere {
    <0, 0, 0>, 1
    hollow
    pigment {
        gradient <0, 1, 0>
        color_map {
            [0.0 color White]
            [0.5 color SkyBlue]
            [1.0 color NavyBlue]
        }
    }
    finish {
        ambient 1
        diffuse 0
    }
    scale 10000
}

// Outermost surface
#declare canoe_ellipsoid =
sphere {
    <0, 0, 0>, 1
    scale <3, 1.5, 1>
    translate<0, 0.5, 0>
}

// Each seat of the canoe
#declare canoe_seat =
box {
    <-0.2, 0, -1>, <0.2, 0.05, 1>
    pigment {
        wood
        color_map {
            [0.4 rgb <1.0, 0.8, 0.6>]
            [0.6 rgb <1.0, 0.9, 0.7>]
        }
        turbulence 0.5
        scale <0.5, 0.5, 5>
        rotate y * 20
    }
    finish {
        ambient 0.3 
    }
}

#declare canoe_hull_pigment =
pigment {
    gradient x
    color_map {
            [0.2 rgb <1.0, 1.0, 1.0>]
            [0.4 rgb <0.97, 0.97, 0.97>]
            [0.6 rgb <0.94, 0.94, 0.94>]
            [0.8 rgb <0.97, 0.97, 0.97>]
    }
    scale 2
    turbulence 0.5
}

// Hull of the canoe
#declare canoe_hull =
difference {
    // Outermost surface defined by the ellipsoid
    object {
        canoe_ellipsoid
    }
    // Make the ellipsoid hollow
    object {
        canoe_ellipsoid
        scale <0.98, 0.95, 0.94>
    }
    // Remove the top surface of the ellipsoid to make a hull
    sphere {
        <0, 0, 0>, 1
        scale <2.5, 1, 20>
        rotate <0, 0, 0>
        translate <0, 1.3, 0>
    }
    pigment {
        canoe_hull_pigment
        translate <1, 0, 0>
    }
    finish {
        phong 1
        ambient 0.3 
    }
}

// A set of three seats in the canoe
#declare canoe_seats =
intersection {
    object {
        canoe_ellipsoid
        pigment {
            color rgb <0.94, 0.94, 0.94>
        }
    }
    union {
        object {
            canoe_seat
            translate <0, 0.15, 0>
        }
        object {
            canoe_seat
            translate <-1.9, 0.40, 0>
        }
        object {
            canoe_seat
            translate <1.9, 0.40, 0>
        }
    }
}

// Complete canoe
#declare canoe =
union {
    object {
        canoe_hull
    }
    object {
        canoe_seats
    }
}

// Water
difference {
    plane {
        <0, 1, 0>, 0
    }
    object {
        canoe_ellipsoid
        translate <0, 0, 1>
    }
    normal {
        crackle
        turbulence 1
    }
    finish {
        diffuse 0.3
        reflection 0.6
    }
}

// Place the canoe on water
object {
    canoe
    translate <0, 0, 1>
}

