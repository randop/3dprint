// EasyThreed K9 – Fiber Media Converter Vertical Stand/Holder
// Default sized for ~94-95 × 73-74 × 27 mm converters (e.g. TP-Link MC220L)
// Adjust the three converter_* values to match your device

/* [Converter dimensions] */
converter_length = 95;   // mm – front-to-back (ports usually on the short ends)
converter_width  = 74;   // mm – left-to-right
converter_height = 28;   // mm – thickness

/* [Clearances & walls] */
clearance        = 1.0;  // total play around the converter (0.8–1.2 recommended)
wall             = 2.0;  // wall thickness
base_thick       = 2.5;  // base plate thickness
lip_height       = 8;    // front retention lip
side_height      = 42;   // how high the side walls rise (grip height)
back_height      = 48;   // back plate height (slightly taller for stability)

/* [Base size] */
base_extra_front = 12;   // extra base in front of the cradle
base_extra_side  = 8;    // extra base on left/right for stability
base_extra_back  = 6;

// Calculated internal pocket
inner_w = converter_width  + clearance;
inner_d = converter_height + clearance;   // converter sits on its side (thickness = depth)
inner_l = converter_length + clearance;

// Overall outer size (stays safely under 98 mm)
outer_w = inner_w + 2*wall + 2*base_extra_side;
outer_d = inner_d + wall + base_extra_front + base_extra_back;
outer_h = max(side_height, back_height) + base_thick;

echo("Overall size (W×D×H):", outer_w, "×", outer_d, "×", outer_h);

// ---------- Model ----------
difference() {
    // Solid outer shape
    union() {
        // Base plate
        translate([-outer_w/2, -base_extra_front, 0])
            cube([outer_w, outer_d, base_thick]);

        // Left side wall
        translate([-inner_w/2 - wall, 0, base_thick])
            cube([wall, inner_d + wall, side_height]);

        // Right side wall
        translate([inner_w/2, 0, base_thick])
            cube([wall, inner_d + wall, side_height]);

        // Back wall
        translate([-inner_w/2 - wall, inner_d, base_thick])
            cube([inner_w + 2*wall, wall, back_height]);

        // Front retention lip (low)
        translate([-inner_w/2, -0.1, base_thick])
            cube([inner_w, 2.5, lip_height]);
    }

    // Hollow out the pocket (leave the lip)
    translate([-inner_w/2, 0, base_thick + 0.1])
        cube([inner_w, inner_d + 0.2, side_height + 5]);
}

// Optional: small cable-management notch on the front lip (comment out if not wanted)
// translate([-8, -1, base_thick + 2])
//     cube([16, 4, 6]);