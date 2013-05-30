camera {
    location <0, 10, -25>
    look_at <0, 3, 0>
}

light_source {
    <7, 12, -7>
    color rgb <1, 1, 1> * 1.75
    area_light <3, 0, 0>, <0, 3, 0>, 15, 15
    fade_distance 8
    fade_power 2
    circular
    orient
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
        reflection 0.3
    }
}

// Earth
sphere {
    <0, 0, 0>, 5
    pigment{
        image_map {
            gif "map/earthmap.gif"
            map_type 1
        }
    }
    rotate <-18, -10, 0>
    translate <0, 5, 0>
}
