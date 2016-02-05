text !scr "  hackathon 2016  @  el passion  S c64  "

init_text:
  ldx #$00          ; init X-Register with $00

loop_text:
  lda text,x      ; read characters from line1 table of text...
  sta $0590,x      ; ...and store in screen ram near the center

  inx
  cpx #40          ; finished when all 40 cols of a line are processed
  bne loop_text    ; loop if we are not done yet
  rts
