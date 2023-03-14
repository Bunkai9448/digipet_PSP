; psp elfs are always loaded to 8804000
;so when you write your armips file, you open the elf with that in mind

.psp
.open "EBOOT.BIN", 0x08803F40 ; as such it excludes header

; Uncommonly, this elf basically treats everything inside the header as start relative not ram absolute
; hence we need to substract the base to each function define address to use the right one.
sceImposeSetLanguageMode     equ 0x088F96E4 - 0x08804000
sceUtilityMsgDialogInitStart equ 0x088F9724 - 0x08804000
sceUtilitySavedataInitStart  equ 0x088F972C - 0x08804000

; ----- patch Impose language
.org 0x0883DA60
    addiu a0, zero, 0x03 ; set your language id (0x03 for spanish)
    jal sceImposeSetLanguageMode
    addiu a1, zero, 0x00 ; set button to confirm/cancel (O to confirm = 0x0 , O to cancel = 0x1)


; ----- If we need space to put extra code, we can use the betatest building strings block
.org 0x08803F40 + 0x00102370

.close
