global_settings {
    max_trace_level 20 
}

camera {
    location <0.5, 0.289, 6>
    look_at <0.5, 0.289, 10>
}

light_source {
    <0.5, 0.289, 6>
    color rgb <1, 1, 1>
}

#declare mirror =
plane {
    y, 0
    pigment {
        color rgb <1.0, 1.0, 1.0>
    }
    finish {
        reflection 1.0
        ambient 0.01
        diffuse 0
    }
    clipped_by {
        box {
            <0, -0.1, 0>, <1, 0.1, 10>
        }
    }
    bounded_by {
        clipped_by
    }
}

#declare kaliedoscope =
union {
    object {
        mirror
    }
    object {
        mirror
        rotate <0, 0, 60>
    }
    object {
        mirror
        rotate <0, 0, 120>
        translate <1, 0, 0>
    }
}

object {
    kaliedoscope
}

#declare colored_disc =
object {
    cylinder {
        <0, 0, 0>, <0, 0, -0.01>, 0.05
    }
    finish {
        ambient 0.7
        reflection 0.2
        phong 0.2
    }
}

// Green disc
object {
    colored_disc
    pigment {
        bozo
        color_map {
            [0.4 color rgbf <0.35, 0.74, 0.19, 0.5>]
            [0.6 color rgbf <1.00, 1.00, 1.00, 0.5>]
        }
        scale 0.01
    }
    translate <0.1, 0.0577, 10>
}

// Pink disc
object {
    colored_disc
    pigment {
        bozo
        turbulence 0.1
        color_map {
            [0.4 color rgbf <0.96, 0.40, 0.67, 0.5>]
            [0.6 color rgbf <1.00, 1.00, 1.00, 0.5>]
        }
        scale 0.011
    }
    translate <0.5, 0.7505, 10>
}

// Purple disc
object {
    colored_disc
    pigment {
        bozo
        turbulence 0.11
        color_map {
            [0.4 color rgbf <0.62, 0.48, 1.00, 0.5>]
            [0.6 color rgbf <1.00, 1.00, 1.00, 0.5>]
        }
        scale 0.012
    }
    translate <0.9, 0.0577, 10>
}

// Orange disc at the centre
object {
    colored_disc
    pigment {
        bozo
        turbulence 0.09
        color_map {
            [0.4 color rgbf <0.97, 0.50, 0.09, 0.5>]
            [0.6 color rgbf <1.00, 1.00, 1.00, 0.5>]
        }
        scale 0.009
    }
    translate <0.5, 0.289, 10>
}

#declare pearl =
object {
    sphere {
        <0, 0, -0.05>, 0.05
    }
    finish {
        ambient 0.7
        reflection 0.2
        phong 1.0
    }
    scale <2, 0.5, 1>
}

// Blue pearl
object {
    pearl
    pigment {
        bozo
        color_map {
            [0.4 color rgbf <0.57, 0.78, 0.78, 0.5>]
            [0.6 color rgbf <0.23, 0.61, 0.61, 0.5>]
        }
        scale 0.01
    }
    translate <0.5, 0.433, 10>
}

// Red pearl
object {
    pearl
    pigment {
        bozo
        color_map {
            [0.4 color rgbf <0.97, 0.36, 0.35, 0.5>]
            [0.6 color rgbf <1, 0, 0, 0.5>]
        }
        scale 0.01
    }
    rotate <0, 0, -60>
    translate <0.375, 0.216, 10>
}

// Yellow pearl
object {
    pearl
    pigment {
        bozo
        color_map {
            [0.4 color rgbf <0.99, 0.82, 0.09, 0.5>]
            [0.6 color rgbf <0.83, 0.63, 0.09, 0.5>]
        }
        scale 0.01
    }
    rotate <0, 0, 60>
    translate <0.625, 0.216, 10>
}

#declare pyramid =
prism {
    conic_sweep
    linear_spline
    0, 0.75,
    4,
    <-0.5, -0.289>, <0, 0.433>, <0.5, -0.289>, <-0.5, -0.289>
    finish {
        ambient 0.7
        reflection 0.2
        phong 1.0
    }
    rotate <90, 0, 0>
    translate <0, 0, -0.289>
    scale 0.1
}

// Blue pyramid
object {
    pyramid
    pigment {
        color rgbf <0.3, 0.4, 0.9, 0.5>
    }
    translate <0.250, 0.144, 10>
}

// Red pyramid
object {
    pyramid
    pigment {
        color rgbf <0.9, 0.3, 0.4, 0.5>
    }
    translate <0.750, 0.144, 10>
}

// Green pyramid
object {
    pyramid
    pigment {
        color rgbf <0.4, 0.9, 0.3, 0.5>
    }
    translate <0.500, 0.577, 10>
}

#declare ball =
sphere {
    <0, 0, -0.02>, 0.02
    finish {
        ambient 0.7
        reflection 0.2
        phong 1.0
    }
}

// Greenish ball
object {
    ball
    pigment {
        color rgbf <0.8, 0.9, 0.3, 0.6>
    }
    translate <0.193, 0.230, 10>
}

// Yellowish ball
object {
    ball
    pigment {
        color rgbf <0.7, 0.6, 0.3, 0.6>
    }
    translate <0.705, 0.052, 10>
}

// Bluish ball
object {
    ball
    pigment {
        color rgbf <0.3, 0.2, 0.9, 0.6>
    }
    translate <0.603, 0.584, 10>
}

object {
    ball
    // Red ball
    pigment {
        color rgbf <0.6, 0, 0.1, 0.6>
    }
    translate <0.295, 0.052, 10>
}

// Greenish ball
object {
    ball
    pigment {
        color rgbf <0.21, 0.78, 0.06, 0.6>
    }
    translate <0.807, 0.230, 10>
}

// Yellowish ball 
object {
    ball
    pigment {
        color rgbf <0.68, 0.76, 0.36, 0.6>
    }
    translate <0.397, 0.584, 10>
}
