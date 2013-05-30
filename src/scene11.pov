camera {
    location <0, 2, -5>
    look_at <0, 1.5, 0>
    focal_point <0, 2, 0>
    blur_samples 500
    aperture 0.50
}

// Light source on the left side of the scene
light_source {
    <-6, 6, 1>
    color rgb <1, 1, 1>
    fade_distance 5 
    fade_power 2
    area_light <3, 0, 0>, <0, 3, 0>, 12, 12 
    circular
    orient
}

// Light source behind the scene
light_source {
    <5, 2, 6>
    color rgb <0.6, 0.6, 0.6>
    fade_distance 5 
    fade_power 2
    area_light <3, 0, 0>, <0, 3, 0>, 12, 12 
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

// Tiled floor
plane
{
    y, 0
    pigment {
        checker
        pigment {
            granite
            color_map {
                [0 color rgb <1.0, 1.0, 1.0>]
                [1 color rgb <0.9, 0.9, 0.9>]
            }
        }
        pigment {
            bozo
            color_map {
                [0 color rgb <0.9, 0.9, 0.9>]
                [1 color rgb <0.7, 0.7, 0.7>]
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
    scale 3
}

#declare ball = 
sphere {
    <0, 1.0, 0>, 1.0

    finish {
        specular 0.9
        roughness 0.005
        reflection 0.25
        ambient 0.25
    }
}

// White ball at the origin
object {
    ball 
    pigment {
        color rgb <1, 1, 1>
    }
}

// Blue ball on the left side
object {
    ball 
    pigment {
        color rgb <0.17, 0.38, 0.87>
    }
    scale 0.5
    translate <-1.2, 0, -1.1>
}

// Small green ball on the left side
object {
    ball 
    pigment {
        color rgb <0, 1, 0>
    }
    translate <-2.5, 0, 1.3>
}

// Purple ball on the left side
object {
    ball 
    pigment {
        color rgb <0.56, 0.21, 0.94>
    }
    scale 1.6
    translate <-2, 0, 6>
}

// Yellow ball on the right side
object {
    ball 
    pigment {
        color rgb <1.00, 0.61, 0.14>
    }
    scale 0.6
    translate <1.35, 0, -1.2>
}

// Big red ball on the right side
object {
    ball 
    pigment {
        color rgb <1, 0, 0>
    }
    scale 2
    translate <3.5, 0, 4>
}

