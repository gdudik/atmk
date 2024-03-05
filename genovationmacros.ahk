#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, On
settitlematchmode, 2
coordmode, mouse, window

^!+F:: ;control-alt-shift-f
SetTitleMatchMode, 2 ;matches any part of window title
WinActivate, FinishLynx ;focuses the finishlynx window
return

^!+H:: ;ctrl-alt-shift-f
SetTitleMatchMode, 2
WinActivate, MEET MANAGER ;focuses the meet manager window
return

^!+r:: ;ctrl-alt-shift-r
SetTitleMatchMode, 1 ;exact match mode
ControlClick, SSCommandWndClass8, Run the Meet ;clicks the button labeled "re-score" in run the meet
return

!F12:: ;alt-F12
SetTitleMatchMode, 1
WinActivate, Run the Meet ;activate run the meet screen
Send ^t ;ctrl+t for break running ties
sleep 1000 ;wait 1 sec
Send {esc} ;esc from possible running ties dialog box--changes get saved even if you press esc
sleep 100 ;wait 100ms
send ^j ;ctrl+J open jd screen
sleep 500
send !a ;alt+a for auto-break ties
sleep 1000
Send !o ;alt+o for ok
Sleep 1000
Send ^!+r ;ctrl+alt+shift+r for rescore
