#include "textures.inc"

camera {
    location <2.3, 5, -4>
    look_at <2, 2, 1>
}

// Light source on the left side of the scene
light_source {
    <-6, 10, 2>
    color rgb <1, 1, 1>
}

// Tiled floor
#declare white_floor =
plane {
    y, 0
    pigment {
        rgb <1.0, 1.0, 1.0>
    }
    finish {
        specular 0.2
        roughness 0.1
        reflection 0.2
    }
}

// Lattice dimensions
#declare dim = 5;
#declare node_radius = 0.15;
#declare edge_radius = 0.05;

// Nodes
#declare nodes =
union {
    #declare x_i = 0;
    #while (x_i < dim)
        #declare y_i = 0;
        #while (y_i < dim)
            #declare z_i = 0;
            #while (z_i < dim)
                sphere {
                    <x_i, y_i, z_i>, node_radius
                }
                #declare z_i = z_i + 1;
            #end
            #declare y_i = y_i + 1;
        #end
        #declare x_i = x_i + 1;
    #end
}

// Horizontal edges along x axis
#declare x_edges =
union {
    #declare x_i = 0;
    #while (x_i < dim - 1)
        #declare y_i = 0;
        #while (y_i < dim)
            #declare z_i = 0;
            #while (z_i < dim)
                cylinder {
                    <x_i, y_i, z_i>,
                    <x_i + 1, y_i, z_i>,
                    edge_radius
                }
                #declare z_i = z_i + 1;
            #end
            #declare y_i = y_i + 1;
        #end
        #declare x_i = x_i + 1;
    #end
}

// Vertical edges along y axis
#declare y_edges =
union {
    #declare x_i = 0;
    #while (x_i < dim)
        #declare y_i = 0;
        #while (y_i < dim - 1)
            #declare z_i = 0;
            #while (z_i < dim)
                cylinder {
                    <x_i, y_i, z_i>,
                    <x_i, y_i + 1, z_i>,
                    edge_radius
                }
                #declare z_i = z_i + 1;
            #end
            #declare y_i = y_i + 1;
        #end
        #declare x_i = x_i + 1;
    #end
}

// Horizontal edges along z axis
#declare z_edges =
union {
    #declare x_i = 0;
    #while (x_i < dim)
        #declare y_i = 0;
        #while (y_i < dim)
            #declare z_i = 0;
            #while (z_i < dim - 1)
                cylinder {
                    <x_i, y_i, z_i>,
                    <x_i, y_i, z_i + 1>,
                    edge_radius
                }
                #declare z_i = z_i + 1;
            #end
            #declare y_i = y_i + 1;
        #end
        #declare x_i = x_i + 1;
    #end
}

// Floor
object {
    white_floor
}

// Lattice
merge {
    object {
        nodes
    }
    object {
        x_edges
    }
    object {
        y_edges
    }
    object {
        z_edges
    }
    pigment {
        color rgbf <1, 1, 1, 0.9>
    }
    finish {
        ambient 0.6
        reflection 0.1
        phong 0.9
    }
    interior {
        refraction 1.0
        ior 1.5
    }
    translate <0, node_radius / 2, 0>
}
