cycle_colors:
  ldx #$00
  ldy $D990

cycle:
  lda $D990+1,x
  sta $D990,x

  inx
  cpx #39
  bne cycle
  sty $D990+39

  rts
