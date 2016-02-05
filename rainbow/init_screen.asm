init_screen:
  jsr $e544 ; clear screen system subroutine
  ldx #$00  ; set X to zero (black color code)
  stx $d021 ; set background color
  stx $d020 ; set border color
  rts
