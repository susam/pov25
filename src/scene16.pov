camera {
    location <220, 90, -420>
    look_at <195, 60, 0>
}

light_source {
    <200, 100, -450>
    color rgb <1, 1, 1>
}

light_source {
    <200, 500, 0>
    color rgb <1, 1, 1>
    shadowless
}

// Floor
plane {
    y, 0
    pigment {
        color rgb <1, 1, 1>
    }
    finish {
        ambient 0
        diffuse 0.1
        specular 1.0
        roughness 0.001
        reflection 0.2
    }
}

// Jupiter
sphere {
    <0, 0, 0>, 69.911
    pigment{
        image_map {
            gif "map/jupitermap.gif"
            map_type 1
        }
    }
    rotate <0, 200, 0>
    translate <0, 69.911, 0>
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

    rotate <-7, 0, 15>
    translate <200, 58.32, 0>
}

// Uranus
sphere {
    <0, 0, 0>, 25.362
    pigment{
        image_map {
            gif "map/uranusmap.gif"
            map_type 1
        }
    }
    translate <305, 25.362, 0>
}

// Neptune
sphere {
    <0, 0, 0>, 24.622
    pigment{
        image_map {
            gif "map/neptunemap.gif"
            map_type 1
        }
    }
    translate <367, 24.622, 0>
}

// Earth
sphere {
    <0, 0, 0>, 6.371
    pigment{
        image_map {
            gif "map/earthmap.gif"
            map_type 1
        }
    }
    translate <405, 6.371, 0>
}

// Venus
sphere {
    <0, 0, 0>, 6.051
    pigment{
        image_map {
            gif "map/venusmap.gif"
            map_type 1
        }
    }
    translate <425, 6.051, 0>
}

// Mars
sphere {
    <0, 0, 0>, 3.390
    pigment{
        image_map {
            gif "map/marsmap.gif"
            map_type 1
        }
    }
    translate <442, 3.390, 0>
}

// Mercury
sphere {
    <0, 0, 0>, 2.4397
    pigment{
        image_map {
            gif "map/mercurymap.gif"
            map_type 1
        }
    }
    translate <454, 2.4397, 0>
}

