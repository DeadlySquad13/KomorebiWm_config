#SingleInstance Force
#Requires AutoHotkey >=2.0

; Load library
#Include komorebic.lib.ahk

IdentifyBorderOverflowApplication("exe", "GoldenDict.exe")
IdentifyTrayApplication("exe", "flux.exe")
return

; Layout
!+Enter::Promote()
; ; Layouts
!+/::FlipLayout("horizontal")
!/::FlipLayout("vertical")

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

; ; Stack windows
!Left::Stack("left")
!Right::Stack("right")
!Up::Stack("up")
!Down::Stack("down")
!Q::Unstack()
![::CycleStack("previous")
!]::CycleStack("next")

; ; Resize
!,::ResizeAxis("horizontal", "increase")
!+,::ResizeAxis("horizontal", "decrease")
!-::ResizeAxis("vertical", "increase")
!+-::ResizeAxis("vertical", "decrease")

; ; Manipulate windows.
!Enter::ToggleFloat()
; - Mappings don't work.
!+.::Minimize()
!+u::ToggleMonocle()

!+f::Minimize()
!f::ToggleMonocle()
!x::Close()

; ; Window manager options
!+r::Retile()
; !p::TogglePause()

; ; Workspaces
!1::FocusWorkspace(0)
!2::FocusWorkspace(1)
!3::FocusWorkspace(2)
!4::FocusWorkspace(3)
!5::FocusWorkspace(4)
!6::FocusWorkspace(5)

; Move windows across workspaces
!+1::MoveToWorkspace(0)
!+2::MoveToWorkspace(1)
!+3::MoveToWorkspace(2)
!+4::MoveToWorkspace(3)
!+5::MoveToWorkspace(4)
!+6::MoveToWorkspace(5)

; ; Monitors
; 0 - main, 1 - right, 2 - left
!e::FocusMonitor(0)
!i::FocusMonitor(1)
!a::FocusMonitor(2)

; Move windows across monitors
!+e::MoveToMonitor(0)
!+i::MoveToMonitor(1)
!+a::MoveToMonitor(2)
