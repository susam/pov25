camera {
    location <0, 4, -6>
    look_at <0, 0, 1>
}

// Light source on the left side of the scene
light_source {
    <-6, 6, 1>
    color rgb <1, 1, 1>
    fade_distance 6 
    fade_power 2
    area_light <3, 0, 0>, <0, 3, 0>, 12, 12 
    circular
    orient
}

// Light source from the camera
light_source {
    <0, 4, -7>
    color rgb <0.6, 0.6, 0.6>
    fade_distance 12 
    fade_power 2
    area_light <3, 0, 0>, <0, 3, 0>, 12, 12 
    circular
    orient
}

// Little end of egg
#declare egg_little_end =
intersection {
    sphere {
        <0, 0, 0>, 1
        scale <1, 1.6, 1>
    }
    box {
        <-1, 0, -1>, <1, 1.6, 1>
    }
}

// Big end of egg
#declare egg_big_end =
intersection {
    sphere {
        <0, 0, 0>, 1
    }
    box {
        <-1, -1, -1>, <1, 0, 1>
    }
}

// Complete egg
#declare egg =
union {
    object {
        egg_little_end
    }
    object {
        egg_big_end
    }
    pigment {
        color rgb <1, 1, 1>
    }
    finish {
        specular 0.1
        roughness 0.1
    }
}

// Vertical egg on floor
#declare vertical_egg =
object {
    egg
    translate <0, 1, 0>
}

// Horizontal egg on floor
#declare horizontal_egg =
object {
    egg
    rotate <0, 0, -90>
    translate <0, 1, 0>
}

#declare tile_normal =
normal {
    gradient x, 2
    slope_map {
        [0.0000 <0, 1>]
        [0.0005 <0.1, 0>]
        [0.9995 <0.1, 0>]
        [1.0000 <0, -1>]
    }
}

// Tiled floor
#declare tile_plane =
plane {
    y, 0
    pigment {
        checker
        pigment {
            granite
            color_map {
                [0 color rgb <1.0, 0.9, 0.8>]
                [1 color rgb <0.9, 0.8, 0.7>]
            }
        }
        pigment {
            bozo
            color_map {
                [0 color rgb <0.9, 0.8, 0.7>]
                [1 color rgb <0.8, 0.7, 0.6>]
            }
        }
    }
    normal {
        average normal_map {
            [1 tile_normal]
            [1 tile_normal rotate <0, 90, 0>]
        }
    }
    finish {
        specular 0.9
        roughness 0.1
        reflection 0.2
    }
    scale 5
}

// Floor
object {
    tile_plane
}

// Front egg
object {
    horizontal_egg
    translate <-1, 0, 0>
}

// Front vertical egg
object {
    vertical_egg
    translate <1.6, 0, 0>
}

// Left egg
object {
    horizontal_egg
    rotate <0, 20, 0>
    translate <-4.5, 0, 4>
}

// Left vertical egg
object {
    vertical_egg
    translate <-4, 0, 5>
}


// Back egg
object {
    horizontal_egg
    translate <0, 0, 6>
}

// Right egg
object {
    horizontal_egg
    translate <2, 0, 8>
}

