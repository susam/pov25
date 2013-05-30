camera {
    location <-100, 50, -250>
    look_at <0, 0, 0>
}

light_source {
    <-200, 0, 0>
    color rgb <1, 1, 1> * 2
}

// Saturn
union {
    // Gas giant
    sphere {
        <0, 0, 0>, 58.232
        pigment{
            image_map {
                gif "map/saturnmap.gif"
                map_type 1
            }
        }
    }

    // D ring
    disc {
        <0, 0, 0>, y, 74.510, 66.9
        pigment {
            color rgbf <0.1, 0.1, 0.1, 0.6>
        }
        finish {
            ambient 0
            diffuse 0.4
        }
    }

    // C ring
    disc {
        <0, 0, 0>, y, 92.0, 74.658
        pigment {
            color rgbf <1.0, 0.9, 0.8, 0.7>
        }
        finish {
            ambient 0
            diffuse 0.4
        }
    }

    // Inner B ring
    disc {
        <0, 0, 0>, y, 98.39, 92.0
        pigment {
            color rgbf <1.0, 0.9, 0.8, 0.1>
        }
        finish {
            ambient 0
            diffuse 0.4
        }
    }

    // Outer B ring
    disc {
        <0, 0, 0>, y, 117.58, 98.39
        pigment {
            color rgbf <1.0, 0.9, 0.8, 0.1>
        }
        finish {
            ambient 0
            diffuse 0.4
        }
    }

    // Inner A ring (between Cassini division and Encke gap)
    disc {
        <0, 0, 0>, y, 133.5, 122.17
        pigment {
            color rgbf <0.7, 0.6, 0.5, 0.05>
        }
        finish {
            ambient 0
            diffuse 0.4
        }
    }

    // Outer A ring (between Encke gap and Roche division)
    disc {
        <0, 0, 0>, y, 136.75, 133.8
        pigment {
            color rgbf <0.7, 0.6, 0.5, 0.05>
        }
        finish {
            ambient 0
            diffuse 0.4
        }
    }

    // F ring
    disc {
        <0, 0, 0>, y, 140.48, 140.18
        pigment {
            color rgbf <0.7, 0.6, 0.5, 0.05>
        }
        finish {
            ambient 0
            diffuse 0.4
        }
    }

    rotate <0, 0, 26.73>
}
