RButton::
    KeyWait, RButton
    KeyWait, RButton, D T0.1
    if ErrorLevel
        Send {RButton}
    else{
        Keywait, RButton
        Send ^v							;paste
    }
Return
RButton & LButton:: Send ^c				;copy
RButton & MButton:: Send #v				;clipboard
RButton & WheelUp:: ShiftAltTab		;switch task
RButton & WheelDown:: AltTab				;switch task

MButton::
    KeyWait, MButton
    KeyWait, MButton, D T0.1
    if ErrorLevel
        Send {MButton}
    else{
        Keywait, MButton
        Send ^f                   			;search in page
    }
Return
MButton & RButton:: Send {XButton1}			;backward
MButton & LButton:: Send {XButton2}			;forward
MButton & WheelUp:: Send ^+{Tab}			;switch to previous tab
MButton & WheelDown:: Send ^{Tab}				;switch to next tab
