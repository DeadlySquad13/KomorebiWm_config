#SingleInstance Force
#Requires AutoHotkey >=2.0

; Load library
#Include komorebic.lib.ahk

IdentifyBorderOverflowApplication("exe", "GoldenDict.exe")
IdentifyTrayApplication("exe", "flux.exe")
return

; ; Focus windows
; Left hand.
!s::Focus("left")
!n::Focus("down")
!m::Focus("up")
!t::Focus("right")

; !+[::CycleFocus("previous")
; !+]::CycleFocus("next")
; #if ((GetCurrentLayout() = "67699721" || GetCurrentLayout() = "4039115785") && !WinActive("ahk_exe VirtualBoxVM.exe"))
;     ; Left hand.
;     !s::Focus("left")
;     !n::Focus("down")
;     !m::Focus("up")
;     !t::Focus("right")
;     ; Right hand.
;     !a::Focus("left")
;     !e::Focus("down")
;     !q::Focus("up")
;     !i::Focus("right")

; ; Move windows
!+s::Move("left")
!+n::Move("down")
!+m::Move("up")
!+t::Move("right")
!+Enter::Promote()

; ; Stack windows
!Left::Stack("left")
!Right::Stack("right")
!Up::Stack("up")
!Down::Stack("down")
; !;::Unstack()
; ![::CycleStack("previous")
; !]::CycleStack("next")

; ; Resize
!,::ResizeAxis("horizontal", "increase")
!+,::ResizeAxis("horizontal", "decrease")
!-::ResizeAxis("vertical", "increase")
!+-::ResizeAxis("vertical", "decrease")

; ; Manipulate windows
!f::ToggleFloat()
!+f::ToggleMonocle()

; ; Window manager options
!+r::Retile()
; !p::TogglePause()

; ; Layouts
!+/::FlipLayout("horizontal")
!/::FlipLayout("vertical")

; ; Workspaces
!1::FocusWorkspace(0)
!2::FocusWorkspace(1)
!3::FocusWorkspace(2)

; Move windows across workspaces
!+1::MoveToWorkspace(0)
!+2::MoveToWorkspace(1)
!+3::MoveToWorkspace(2)

; ; Monitors
; 0 - main, 1 - right, 2 - left
!e::FocusMonitor(0)
!i::FocusMonitor(1)
!a::FocusMonitor(2)

; Move windows across monitors
!+e::MoveToMonitor(0)
!+i::MoveToMonitor(1)
!+a::MoveToMonitor(2)
