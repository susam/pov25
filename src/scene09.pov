camera{
    location <0, 1, -2>
    look_at <0, 0, 100>
}

// Sky
plane {
    <0, 1, 0>, 10000
    hollow
    pigment {
        bozo
        turbulence 0.76
        color_map {
            [0.5 rgb <0.4, 0.4, 1>]
            [0.6 rgb <1, 1, 1>]
            [1.0 rgb <0.3, 0.3, 0.3>]
        }
        scale 30000 
    }
    finish {
        ambient rgb <1, 1, 1>
        diffuse 0
    }
}

// Water
plane {
    <0, 1, 0>, 0
    pigment {
        color rgb <0.5, 0.5, 1.0>
    }
    normal {
        bumps 0.1
        scale <1, 0.2, 0.25>
        turbulence 0.6
    }
    finish {
        phong 0.8
        reflection 0.6
    }
}

// Fog at the horizon
fog {
    fog_type 2 // ground fog
    distance 65
    color rgb <0.9, 0.9, 1.0>
    fog_offset 0.1
    fog_alt 2.0
    turbulence 0.1
}
