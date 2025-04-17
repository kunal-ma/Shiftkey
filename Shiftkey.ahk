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
#!Enter::ExitApp

; ----------------------------------
