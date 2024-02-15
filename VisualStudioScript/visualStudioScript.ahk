#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ;only one instance of this script may run at a time!
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm
Menu, Tray, Icon, shell32.dll, 283

::prnt::
Send, std::cout << "" << std::endl;
return

; log writers works with macros in Visual Studio, otherwise they are not working
F13::
::arglog::
Send, LOG_HIGH_INFO(QString("{asc 0037}1").arg());{Left}{Left}{Left}
return

F14::
::loghigh::
Send, LOG_HIGH_INFO(QString(""));{Left}{Left}{Left}{Left}
return

F19::
::loglow::
Send, LOG_LOW_INFO(QString(""));{Left}{Left}{Left}{Left}
return

F20::
::logcrit::
Send, LOG_CRITICAL(QString(""));{Left}{Left}{Left}{Left}
return

F21::
::alcopy::
Send, ^{Home}
Send, // Copyright 2021 Alicona Imaging GmbH {ENTER}{ENTER}
return

::foreach::
Send, for ( : ){Left}{Left}{Left}{Left}
return

F15::
::shptr::
Send, std::shared_ptr<
return

F16::
::makesh::
Send, std::make_shared<
return

F17::
::unptr::
Send, std::unique_ptr<
return

F18::
::makeun::
Send, std::make_unique<
return

^F2::
^F13::
::dyncast::
Send, std::dynamic_pointer_cast<
return

::stvec::
Send, std::vector<
return

::pwrshell::
Run, powershell, C:\
return

F23::
Run, notepad++.exe
return

F24::
Run, Code
return

F22::
Send, {del}<{end}{Backspace}>
return

; Review template for bitbucket. 
^F12::
::bbtmp::
Send ^a {Del}
Send {Text} | (NOT)OK :white_check_mark: |  | Notes :blue_book: |`n
| :----- | :-----: | :----- |`n
| | :one: GENERAL | |`n
| OK | Scope well defined and clear | - |`n
| OK | Concept approved by architect and UX team | - |`n
| OK | Functionality fulfilled | - |`n
| OK | Performance of the implementation | - |`n
| OK | Responsiveness of the application | - |`n
| OK | Language correct | - |`n
| OK | Unit test | - |`n
| OK | Potential impact on production department considered? | - |`n
| | :two: CODE QUALITY | |`n
| OK | Code read- and understandable | - |`n
| OK | No code duplication | - |`n
| OK | Correct use of const/static | - |`n
| OK | Exception handling | - |`n
| OK | IO classes considered | - |`n
| OK | Settings version number incremented after format change | - |`n
| OK | GUI and logic separated | - |`n
| OK | Reasonable log writer | - |`n
return
