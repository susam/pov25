camera {
    location <0, 0, -200>
    look_at <0, 0, 0>
}

light_source {
    <200, 0, -100>
    color rgb <1, 1, 1> * 2
}

sphere {
    <0, 0, 0>, 58.232
    pigment{
        image_map {
            jpeg "map/moonmap.jpg"
            map_type 1
        }
    }
    rotate <0, -90, 0>
}
