MACHINE
    SENSORS
SEES 
    CTX
CONCRETE_VARIABLES
    pressure_sensor_l, 
    contact_sensor_a, 
    contact_sensor_b
INVARIANT
    pressure_sensor_l : PRESSURES &
    contact_sensor_a : BOOL & // TRUE means door closed
    contact_sensor_b : BOOL  // TRUE means door closed
    
INITIALISATION
    pressure_sensor_l :: PRESSURES ||
    contact_sensor_a :: BOOL ||
    contact_sensor_b :: BOOL
OPERATIONS
    update_sensors_states =
    BEGIN
        pressure_sensor_l, 
        contact_sensor_a, 
        contact_sensor_b: (
            pressure_sensor_l : PRESSURES &
            contact_sensor_a : BOOL & 
            contact_sensor_b : BOOL &    
            (not(pressure_sensor_l = PRESSURE_A) => contact_sensor_a = TRUE) &
            (not(pressure_sensor_l = PRESSURE_B) => contact_sensor_b = TRUE)
        ) 
    END    
END
