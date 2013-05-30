camera {
    location <0.275, 0.15, -0.2>
    look_at <0.3, 0.1, 0>
}

// Light source on the left side of the scene
light_source {
    <-1.5, 1, 0.3>
    color rgb <1, 1, 1>
    fade_distance 2 
    fade_power 2
    area_light <0.7, 0, 0>, <0, 0.7, 0>, 12, 12 
    circular
    orient
}

// Light source on the left side of the scene
light_source {
    <0.6, 1, 2.3>
    color rgb <1, 1, 1>
    fade_distance 2
    fade_power 2
    area_light <0.7, 0, 0>, <0, 0.7, 0>, 12, 12 
    circular
    orient
}

#declare pawn =
union {
    cylinder {
        <0, 0.0, 0>,
        <0, 0.1, 0>,
        0.5
    }
    cylinder {
        <0, 0.1, 0>,
        <0, 0.2, 0>,
        0.45
    }
    cone {
        <0, 0.2, 0>, 0.4,
        <0, 1.0, 0>, 0.0
    }
    sphere{
        <0, 1.0, 0>, 0.3
    }
    finish {
        specular 0.6
    }
    scale 0.08
}

#declare chessboard =
union {
    box {
        <0, 0.01, 0> <0.8, 0.011, 0.8>
        pigment {
            checker
            color rgb<1, 1, 1>
            color rgb<0, 0, 0>
            scale 0.8 * 0.125 
        }
        finish {
            reflection 0.1
            specular 0.5
            roughness 0.001
        }
    }
    box {
        <-0.01, 0, -0.01> <0.81, 0.01, 0.81>
        pigment {
            color rgb <0.7, 0.5, 0.3>
        }
    }
}

union {
    object {
        chessboard
    }

    object {
        pawn
        pigment{
            color rgb <1, 1, 1>
        }
        translate <0.25, 0.011, 0.15>
    }

    object {
        pawn
        pigment{
            color rgb <0, 0, 0>
        }
        translate <0.45, 0.011, 0.25>
    }
}
