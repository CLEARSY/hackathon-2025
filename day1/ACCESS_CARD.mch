MACHINE
    ACCESS_CARD
ABSTRACT_CONSTANTS
    map,
    idx_odd,
    idx_even
PROPERTIES
    map: 0..9 --> 0..9 &
    map = {
        0 |-> 0, 1 |-> 2, 2 |-> 4, 3 |-> 6, 4 |-> 8,
        5 |-> 1, 6 |-> 3, 7 |-> 5, 8 |-> 7, 9 |-> 9
    } &
    idx_odd <: 0..15 &
    idx_even <: 0..15 &
    idx_odd /\ idx_even = {} &
    idx_odd \/ idx_even = 0..15 &
    idx_odd = {1, 3, 5, 7, 9, 11, 13, 15} & 
    idx_even = {0, 2, 4, 6, 8, 10, 12, 14} 
OPERATIONS
    ok <-- is_valid(tab) =
    PRE
        tab: 0..15 --> 0..9 
    THEN  
        ok := bool((SIGMA(xx).(xx: idx_even | (tab;map)(xx)) 
                + SIGMA(yy).(yy: idx_odd | tab(yy))) mod 10 = 0)
    END  
END
