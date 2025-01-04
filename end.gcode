M104 S0 ;extruder heater off
M140 S0 ;heated bed heater off (if you have it)
G91 ;relative positioning
G1 E-1 F300  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+0.5 E-5 X-20 Y-20 F9000 ;move Z up a bit and retract filament even more
G28 X0 Y0 ;move X/Y to min endstops, so the head is out of the way
M84 ;steppers off
G90 ;absolute positioning
;Version _2.6 of the firmware can abort the print too early if the file ends
;too soon. However if the file hasn't ended yet because there are comments at
;the end of the file, it won't abort yet. Therefore we have to put at least 512
;bytes at the end of the g-code so that the file is not yet finished by the
;time that the motion planner gets flushed. With firmware version _3.3 this
;should be fixed, so this comment wouldn't be necessary any more. Now we have
;to pad this text to make precisely 512 bytes.
