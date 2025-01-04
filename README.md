# Ultimaker 2 Extended + 3d printer

## Setup
Ultimaker 2 Extended + connected to Octopi hardware with USB cable, Cura used to slice 3d models. A few notes when using this setup where models are sliced with Cura and uploaded to Octopi.
1. Make sure G-code flavor is Marlin
2. Start.gcode used here ensures bed and extruder temperatures are met before continuing with print

## Configuration
Cura profile selected: Ultimaker 2 Extended+
Printer Settings:
```
  x (width)            - 223.0 mm 

  y (depth)            - 223.0 mm 

  z (height)           - 305.0 mm 

  Origin at center     - unchecked  

  Heated bed           - checked 

  Heated build volume  - unchecked 

  G-code flavor        - **Marlin**

  Start G-code         - start.gcode in this repository

  End G-code           - end.gcode in this repository

  Extruder 1           - none used
```
