MACHINE
    CTX
SETS
    PRESSURES = {
        PRESSURE_A, 
        PRESSURE_B, 
        PRESSURE_OTHER
    };
    OBJECTIVES = {
        OBJ_OPEN_DOOR_A,
        OBJ_OPEN_DOOR_B,
        OBJ_NONE
        };
    ACTIONS = {
        NONE, 
        TRANSLATE_OPEN_DOOR_A, 
        TRANSLATE_OPEN_DOOR_B, 
        TRANSLATE_CLOSE_DOOR_A, 
        TRANSLATE_CLOSE_DOOR_B, 
        ADAPT_PRESSURE_L_TO_A, 
        ADAPT_PRESSURE_L_TO_B
    };
    AUTHENTICATED = {
        AUTHENTICATED_A, // successful authentication on card reader A
        AUTHENTICATED_L, // successful authentication on card reader L
        AUTHENTICATED_B, // successful authentication on card reader B
        AUTHENTICATED_NONE  // no active authentication 
    }
END
