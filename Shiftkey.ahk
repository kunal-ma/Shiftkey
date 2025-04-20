; ----------------------------------
;         File Information         -
; ---------------------------------- 

;@Ahk2Exe-SetMainIcon icon.ico
;@Ahk2Exe-SetVersion 1.0.0
;@Ahk2Exe-SetName Shiftkey
;@Ahk2Exe-SetDescription Shiftkey
;@Ahk2Exe-SetOrigFilename Shiftkey.exe

; ----------------------------------
;          Initialization          -
; ----------------------------------

#Requires AutoHotkey v2.0
#SingleInstance Force
#NoTrayIcon

; User profile directory as a variable
A_UserDir := EnvGet("USERPROFILE")

; ----------------------------------
;    Basic Remapping & Shortcuts   -
; ----------------------------------

; Win + F1 : Play/Pause Media
#F1::Send "{Media_Play_Pause}"
; Win + F2 : Previous Media
#F2::Send "{Media_Prev}"
; Win + F3 : Next Media
#F3::Send "{Media_Next}"

; Alt + ~ : Resize active window to 1300x1200
#`::WinMove 30, 30, 1300, 1200, "A"
; Win + ~ : Resize active window to 1920x1200
!`::WinMove 160, 60, 1920, 1200, "A"

; Alt + N : Open Network Connections
!n::Run 'explorer.exe ms-availablenetworks:'
; Win + T : Open Windows PowerShell
#t::Run 'powershell', A_UserDir
; Win + O : Run ShareX OCR
#o::Run 'C:\Program Files\ShareX\ShareX.exe -ocr'

; Rebinding Screen & Snip button to a custom shortcut
; [Win + Shift + S] -> [Ctrl + Shift + Alt + Win + S]
#+s::Send "^+!#s"

; Win + Alt + Enter : Exit the script
#!Enter::
{
    MsgBox "Exiting now...`nThank you for using Shiftkey :D", "Shiftkey", "Iconi T3"
    ExitApp
}

; ----------------------------------
;         Advanced Functions       -
; ----------------------------------

; Text Shortcuts: Allows you to set and use 10 text shortcuts using the number keys.

; Load phrases from the settings file
Text := Array()
Loop
{
    Text.Push(IniRead("settings.ini", "Text", A_Index, "-1"))
    If Text[A_Index] = -1
        Break
}

; Take single key input from the user and return the key pressed.
KeyWaitAny()
{
    ih := InputHook()
    ih.KeyOpt("{All}", "E")
    ih.Start()
    ih.Wait()
    return ih.EndKey
}

; Usage: [Win + ,] followed by [1 to 0]
#,::
{
    Sleep 200
    Key := KeyWaitAny()
    if (Key = '``')
    {
        while (1)
        {
            Key := KeyWaitAny()
            if isDigit(Key)
                Send Text[Integer(Key)]
            else if (Key = '``')
                break
			else
				Send Key
        }
    }
    else if isDigit(Key)
        Send Text[Integer(Key)]
    else
        MsgBox "Invalid Key Pressed !"
}

; ----------------------------------
