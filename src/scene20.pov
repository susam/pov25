#include "textures.inc"

camera {
    location <0, 6, -3>
    look_at <0, 0, 1>
}

// Light source on the left side of the scene
light_source {
    <-6, 10, 1>
    color rgb <1, 1, 1>
}

#declare glass =
difference {
    cone {
        <0, 0.0, 0>, 1.0, <0, 3.0, 0>, 1.2
    }
    cone {
        <0, 0.1, 0>, 0.9, <0, 3.1, 0>, 1.1
    }
    pigment {
        color rgbf <1, 1, 1, 0.9>
    }
    finish {
        reflection 0.1
        refraction 1.0
        ior 1.5
        phong 1.0
    }
}

#declare filled_glass=
union {
    object {
        glass
    }
    intersection {
        cone {
            <0, 0.1, 0>, 0.9, <0, 3.1, 0>, 1.1
        }
        plane {
            y, 2.0
        }
        pigment {
            rgbf <1, 1, 1, 0.9>
        }
        finish {
            ambient 0.0
            diffuse 0.15
            reflection {
                0.1
                fresnel on
            }
            specular 0.6
            roughness 0.005
            conserve_energy
        }
        interior {
            ior 1.33
            caustics 0.1
        }
        scale 0.999
    }
}

// Tiled floor
#declare tile_plane =
plane {
    y, 0
    pigment {
        checker
        rgb <1.0, 0.9, 0.8>
        rgb <0.8, 0.7, 0.6>
    }
    finish {
        specular 0.2
        roughness 0.1
        reflection 0.2
    }
    translate <-0.5, 0, -0.5>
    scale 0.5
}

// Floor
object {
    tile_plane
}

// Glass of water
object {
    filled_glass
}

