cycle_colors:
  ldx #$00
  ldy $D993

cycle:
  lda $D993+1,x
  sta $D993,x

  inx
  cpx #39
  bne cycle
  sty $D993+$24

  rts
