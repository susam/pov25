camera {
    location <1, 4, -4>
    look_at <0, 0, 0>
}

// Light source on the right side of the scene
light_source {
    <8, 4, -3>
    color rgb <1, 1, 1>
    fade_distance 10 
    fade_power 2
    area_light <2, 0, 0>, <0, 2, 0>, 5, 5 
    circular
    orient
}

// Light source on the left side of the scene
light_source {
    <-8, 3, -1>
    color rgb <1, 0.7, 0.4>
    fade_distance 6
    fade_power 2
    area_light <3, 0, 0>, <0, 3, 0>, 5, 5
    circular
    orient
}

// Light source behind the scene
light_source {
    <3, 4, 8>
    color rgb <0.4, 0.9, 1>
    fade_distance 9 
    fade_power 2
    area_light <3, 0, 0>, <0, 3, 0>, 5, 5
    circular
    orient
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
plane
{
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

#declare glass_finish =
finish {
    phong 0.8
    reflection 0.1
    refraction 1.0
    ior 1.5
}

#declare glass_ball = 
sphere {
    <0, 0.3, 0>, 0.3
    finish {
        glass_finish
    }
}

#declare metal_rod =
cylinder {
    <-1, 0.25, 0>, <1, 0.25, 0>, 0.25
    pigment {
        bozo
        color_map {
            [0.0 rgb <0.7, 0.8, 0.8>]
            [0.6 rgb <0.6, 0.7, 0.8>]
            [0.7 rgb <0.7, 0.4, 0.2>]
            [1.0 rgb <0.1, 0.3, 0.5>]
        }
        turbulence 0.4
        scale 0.2
    }
    normal {
        gradient x, 0.1 
        slope_map {
            [0.0 <1, 0>]
            [0.5 <0, -1>]
            [0.5 <0, 1>]
            [1.0 <1, 0>]
        }
        scale 0.1
    }
    finish {
        specular 0.5
        reflection 0.3
    }
}

// Red ball
object {
    glass_ball
    pigment {
        color rgbf <1, 0.4, 0.2, 0.9>
    }
    translate <0.7, 0, -0.25>
}

// Green ball
object {
    glass_ball
    pigment {
        color rgbf <0.2, 1, 0.4, 0.9>
    }
    translate <-1, 0, -0.75>
}

// Blue ball
object {
    glass_ball
    pigment {
        color rgbf <0.4, 0.6, 1, 0.9>
    }
    translate <1, 0, -1.5>
}

// Yellow ball
object {
    glass_ball
    pigment {
        color rgbf <1.0, 0.8, 0.2, 0.9>
    }
    translate <-0.5, 0, 0.2>
}

// Metal rod nearest to the camera
object {
    metal_rod
    rotate <0, 20, 0>
    translate <0, 0, -2>
}

// Metal rod in the middle 
object {
    metal_rod
    rotate <0, 40, 0>
    translate <2, 0, 1> 
}

// Metal rod farthest from the camera
object {
    metal_rod
    rotate <0, -60, 0>
    translate <-2, 0, 2> 
}
