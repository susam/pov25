camera {
    //location <15.0, 3, -3>
    location <3, 0.5, -3>
    look_at <4, 1, 0>
}

background {
    rgb <0.8, 0.8, 0.6>
}

light_source {
    <6, 4, -4>
    color rgb <1, 1, 1>
    area_light <2, 0, 0>, <0, 2, 0>, 8, 8
    circular
    orient
}

light_source {
    <2.5, 4.8, -0.2>
    color rgb <1, 1, 0>
    fade_distance 5 
    fade_power 2
    area_light <1, 0, 0>, <0, 1, 0>, 4, 4
    circular
    orient
}

#declare tile_normal =
normal {
    gradient x, 2
    slope_map {
        [0.000 <0, 1>]
        [0.005 <0.1, 0>]
        [0.995 <0.1, 0>]
        [1.000 <0, -1>]
    }
}

#declare room_exterior =
box {
    <-0.2, -0.2, 0.2>, <5.2, 5.2, -5.2>
    pigment {
        color rgb <1, 1, 1>
    }
}

#declare room_interior =
box {
    <0, 0, 0>, <5, 5, -5>
    pigment {
        checker
        color rgb <1.0, 0.5, 0.6>
        color rgb <1.0, 0.7, 0.8>
    }
    normal {
        average normal_map {
            [1 tile_normal]
            [1 tile_normal rotate <0, 90, 0>]
            [1 tile_normal rotate <0, 0, 90>]
        }
    }
    finish {
        specular 0.9
        roughness 0.01
        reflection 0.2
        ambient 0.3
    }
}

#declare window =
box {
    <4.9, 4, -2> <5.3, 2, -4>
}

#declare room =
difference {
    object {
        room_exterior
    }
    object {
        room_interior
    }
    object {
        window
    }
}

#declare glass_finish =
finish {
    reflection 0.1
    refraction 1.0
    ior 1.5
    phong 1.0
}

#declare water_glass =
difference {
    cylinder {
        <0, 0, 0>, <0, 1, 0>, 0.3
    }
    cylinder {
        <0, 0.04, 0>, <0, 1.1, 0>, 0.27
    }
    pigment {
        color rgbf <1, 1, 1, 0.8>
    }
    finish {
        glass_finish
    }
}

#declare wine_glass =
difference {
    merge {
        cylinder {
            <0, 1.2, 0>, <0, 0.9, 0>, 0.3
        }
        sphere {
            <0, 0.9, 0>, 0.3
        }
        cylinder {
            <0, 0.6, 0>, <0, 0.1, 0>, 0.03
        }
        cone {
            <0, 0.1, 0>, 0.03,
            <0, 0.0, 0>, 0.3
        }
    }
    union {
        cylinder {
            <0, 1.3, 0>, <0, 0.9, 0>, 0.27
        }
        sphere {
            <0, 0.9, 0>, 0.27
        }
    }
    pigment {
        color rgbf <1, 1, 1, 0.8>
    }
    finish {
        glass_finish
    }
}

object {
    room
}

object {
    water_glass
    translate <3, 0, -0.75>
}

object {
    wine_glass
    translate <3.95, 0, -1>
}
