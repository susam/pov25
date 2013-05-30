camera {
    location <0,0,0>
    look_at <0,0,10>
}

// Yellow ball
sphere {
    <-6, 0, 20>, 5
    pigment {
        color rgb <0.99, 0.83, 0.40> 
    }
}

// Blue ball
sphere {
    <0.2, 0, 10>, 2
    pigment {
        color rgb <0.42, 0.50, 0.99>
    }
}

// Orange ball
sphere {
    <4, 1, 10>, 1
    pigment {
        color rgb <0.82, 0.40, 0.10>
    }
}

// Red box
box {
    <-2, -2, 8>, <-1, -1, 6>
    pigment {
        color rgb <0.90, 0.00, 0.06>
    }
}

// Green box
box {
    <1, 1, 8>, <2, 2, 6>
    pigment {
        color rgb <0.09, 0.76, 0.16>
    }
}


// Pale box
box {
    <8, -5, 30>, <12, -1, 35>
    pigment {
        color rgb <0.70, 0.50, 0.60>
    }
}

// Top right corner light source (behind the camera). This casts the
// shadow of the green box on the blue ball and that of the blue ball on
// the yellow one.
light_source {
    <5, 5, -10>
    color rgb <1, 1, 1>
}

// Light source at the left side of the scene. This light source is also
// behind the camera. This casts the smaller shadow of the red box on
// the blue ball, that of the green box on the orange ball and that of
// the blue ball on the pale pink box.
light_source {
    <-5, 0, -10>
    color rgb <0.4, 0.4, 0.4>
}

// Light source at the bottom right corner of the scene. This light
// source is present slightly in front of the camera. This casts the
// longer shadow of the red box on the blue ball.
light_source {
    <-5, -5, 2>
    color rgb <0.4, 0.4, 0.4>
}
