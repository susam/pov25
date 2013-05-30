global_settings {
    assumed_gamma 1.0
    noise_generator 1
}

// Camera
camera {
    location <0, 10, -3>
    look_at <0, 11, 0>
    angle 90
}

// Sunlight
light_source {
    <2000, 2000, -2000>
    color rgb <1, 1, 1>
}

// Blue sky
plane {
    y, 10000
    hollow
      
    pigment {
        color rgb <0.05, 0.25, 0.6>
    }
    finish {
        ambient 1
        diffuse 0
    }
}

// Clouds
plane{
    y, 1
    hollow
    pigment {
        bozo
        turbulence 0.65
        omega 0.7
        lambda 2.5 
        octaves 10 
        color_map {
            [0.0 color rgb <0.7, 0.7, 0.7>]
            [0.1 color rgb <1, 1, 1>]
            [0.5 color rgbt <1, 1, 1, 1>]
            [1.0 color rgbt <1, 1, 1, 1>]
        }
    }
    finish {
        ambient 1
        diffuse 0
    }
    scale 1000
}  


// Fog
fog {
    distance 300000
    color rgb <1, 1, 1>
}

// Field
plane {
    y, 0
    pigment {
        color rgb <0.28, 0.52, 0.00>
    }
    normal {
        bumps 0.75
        scale 0.02
    }
}
