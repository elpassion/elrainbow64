colors:
  !byte 05, 05, 05
  !byte 13, 13, 13
  !byte 07, 07, 07
  !byte 13, 13, 13
  !byte 05, 05, 05
  !byte 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01, 01

set_colors:
  ldx #$00          ; init X-Register with $00

loop_colors:
  lda colors,x
  sta $D993,x

  inx
  cpx #40          ; finished when all 40 cols of a line are processed
  bne loop_colors    ; loop if we are not done yet
  rts
