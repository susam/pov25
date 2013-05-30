camera {
    location <2, 5, -4>
    look_at <0, 0, 0>
}

// Light source on the right side of the scene
light_source {
    <8, 4, -3>
    color rgb <1, 1, 1>
    fade_distance 8 
    fade_power 2
    area_light <2, 0, 0>, <0, 2, 0>, 5, 5
    circular
    orient
}

// Light source on the left side of the scene
light_source {
    <-8, 3, -1>
    color rgb <1, 0.7, 0.4>
    fade_distance 8
    fade_power 2
    area_light <3, 0, 0>, <0, 3, 0>, 5, 5
    circular
    orient
}

// Light source behind the scene
light_source {
    <0, 4, 8>
    color rgb <0.4, 0.9, 1>
    fade_distance 8 
    fade_power 2
    area_light <3, 0, 0>, <0, 3, 0>, 5, 5
    circular
    orient
}


#declare die_body =
intersection {
    box {
        <-1, -1, -1>, <1, 1, 1>
    }
    superellipsoid {
        <0.7, 0.7>
        scale 1.26
    }
}

#declare dot =
sphere {
    <0, 0, -1.21>, 0.275
}

#declare one =
object {
    dot
}

#declare two =
union {
    sphere {
        dot
        translate <0.5, 0.5, 0>
    }
    object {
        dot
        translate <-0.5, -0.5, 0>
    }
}

#declare two_flipped =
union {
    object {
        dot
        translate <-0.5, 0.5, 0>
    }
    sphere {
        dot
        translate <0.5, -0.5, 0>
    }
}

#declare three =
union {
    object {
        one
    }
    object {
        two
    }
}

#declare four =
union {
    object {
        two
    }
    object {
        two_flipped
    }
}

#declare five =
union {
    object {
        one
    }
    object {
        four
    }
}

#declare six =
union {
    object {
        four
    }
    object {
        dot
        translate <-0.5, 0, 0>
    }
    object {
        dot
        translate <0.5, 0, 0>
    }
}

#declare die = difference {
    object {
        die_body
    }
    // Arrangement of dots:
    //
    // +---+
    // | 3 |
    // +---+---+---+---+
    // | 6 | 5 | 1 | 2 |
    // +---+---+---+---+
    // | 4 |
    // +---+
    union {
        object {
            one
            rotate 180 * x
        }
        object {
            two
            rotate 90 * y
        }
        object {
            three
            rotate 90 * x
        }
        object {
            four
            rotate -90 * x
        }
        object {
            five
            rotate -90 * y
        }
        object {
            six
        }
        pigment {
            color rgb <1, 1, 1>
        }
        finish {
            ambient 0.4
       }
    }
    scale 0.5
    bounded_by {
        box {
            <-0.6, -0.6, -0.6>, <0.6, 0.6, 0.6>
        }
    }
}

#declare plank_normal =
normal {
    gradient x, 2 
    slope_map {
        [0.0 <0, 1>]
        [0.1 <1, 0>]
        [0.9 <1, 0>]
        [1.0 <0, -1>]
    }
    scale 2
};

#declare wood_normal =
normal {
    wood
    turbulence 0.5
    scale <0.5, 0.5, 5>
}

// Wooden plank
#declare plank =
plane {
    y, 0
    pigment {
        wood
        color_map {
            [0.4 rgb <0.9, 0.7, 0.4>]
            [0.6 rgb <1.0, 0.8, 0.6>]
        }
        turbulence 0.5
        scale <1, 1, 10>*.5
        rotate y*20
    }
    normal {
        average
        normal_map {
            [1 plank_normal]
            [1 wood_normal]
        }
        rotate <0, 15, 0>
    }
    finish {
        specular 0.5
        reflection 0.2
    }
}

object {
    plank
}

#declare glass_finish =
finish {
    phong 0.2
    specular 0.5
    ambient 0.5
}

// Red die
object {
    die
    pigment {
        color rgbft <1, 0, 0, 0.4, 0.3>
    }
    interior {
        ior 1.5
    }
    finish {
        glass_finish
    }
    rotate -70 * y
    translate <0.5, 0.5, 0>
}

// Blue die
object {
    die
    pigment {
        color rgbft <0, 0, 1, 0.35, 0.25>
    }
    interior {
        ior 1.5
    }
    finish {
        glass_finish
    }
    rotate 90 * z
    rotate 200 * y
    translate <-1, 0.5, 2.5>
}

// Green die
object {
    die
    pigment {
        color rgbft <0, 0.5, 0, 0.35, 0.25>
    }
    interior {
        ior 1.5
    }
    finish {
        glass_finish
    }
    rotate 180 * z
    translate <-2, 0.5, -0.5> 
}
