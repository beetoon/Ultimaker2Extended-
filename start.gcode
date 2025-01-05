; Start G-code for Ultimaker 2 Extended+ with OctoPi and Marlin 
; G-code flavor
G21 ; metric values
G90 ; absolute positioning
M82 ; set extruder to absolute mode
M107 ; start with fan off

; Start heating
M140 S{material_bed_temperature_layer_0} ; Start heating the bed
M104 S{material_print_temperature_layer_0} ; Start heating the nozzle
M190 S{material_bed_temperature_layer_0} ; Wait for the bed to reach the target temperature
M109 S{material_print_temperature_layer_0} ; Wait for the nozzle to reach the target temperature

; Verify bed temperature
M117 Verifying bed temperature... ; Display message
M105 ; Request temperatures
G4 S2 ; Wait 2 seconds to allow temperature stabilization

; Proceed with homing
G28 Z0 ;move Z to bottom endstops
G28 X0 Y0 ;move X/Y to endstops

; Verify bed temperature
M117 Verifying bed temperature... ; Display message
M105 ; Request temperatures
G4 S2 ; Wait 2 seconds to allow temperature stabilization

; Position and prime
G1 X15 Y0 F4000 ;move X/Y to front of printer
G1 Z15.0 F9000 ; Lift the nozzle
G92 E0 ; Reset the extruder
G1 F200 E30 ; Prime the nozzle
G92 E0 ; Reset the extruder again
G1 Y50 F9000 ; Restore normal speed

M117 Printing... ; Display "Printing" on the printer's LCD
