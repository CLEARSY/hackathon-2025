MACHINE
    CONTROLLER
SEES
    CTX, SENSORS, ENABLER
CONCRETE_VARIABLES
    current_action, /* action to be performed by the system */
    current_authentication,
    current_objective /* user's objective based on button pushed and card reader */
INVARIANT
    current_action : ACTIONS &
    current_authentication: AUTHENTICATED &
    current_objective : OBJECTIVES 
INITIALISATION
    current_action := NONE ||
    current_authentication := AUTHENTICATED_NONE ||
    current_objective := OBJ_NONE
OPERATIONS
    process_readers = 
    BEGIN
        current_authentication: (
            current_authentication: AUTHENTICATED &
            (not(current_authentication = AUTHENTICATED_NONE) => 
                current_authentication$0 :{AUTHENTICATED_NONE, current_authentication}) 
        )
    END;
    
    control =
    BEGIN        
        current_action, 
        current_objective :(
            current_action: ACTIONS &
            current_objective : OBJECTIVES &
            
            (current_action = TRANSLATE_OPEN_DOOR_A => 
                pressure_sensor_l = PRESSURE_A & contact_sensor_b = TRUE
            )
            /* to complete */
        )
    END
END

