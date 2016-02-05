!to "rainbow.prg", cbm

!source "rainbow/basic_loader.asm"
!source "rainbow/main.asm"

!source "rainbow/c64_constants.asm"

!source "rainbow/init_screen.asm"
!source "rainbow/init_text.asm"
!source "rainbow/init_sid.asm"
!source "rainbow/set_colors.asm"
!source "rainbow/cycle_colors.asm"
!source "rainbow/hook_irq.asm"

; add sid file

* = music_address           ; address to load the music data
!bin "popcorn.sid",, $7c+2  ; remove header from sid and cut off original loading address
