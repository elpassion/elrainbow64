hook_irq:
  ldy #$7f    ; $7f = %01111111
  sty $dc0d   ; Turn off CIAs Timer interrupts ($7f = %01111111)
  sty $dd0d   ; Turn off CIAs Timer interrupts ($7f = %01111111)
  lda $dc0d   ; by reading $dc0d and $dd0d we cancel all CIA-IRQs in queue/unprocessed
  lda $dd0d   ; by reading $dc0d and $dd0d we cancel all CIA-IRQs in queue/unprocessed

  lda #$01    ; Set Interrupt Request Mask...
  sta $d01a   ; ...we want IRQ by Rasterbeam (%00000001)

  lda $d011   ; Bit#0 of $d011 indicates if we have passed line 255 on the screen
  and #$7f    ; it is basically the 9th Bit for $d012
  sta $d011   ; we need to make sure it is set to zero for our intro.

  lda #<irq   ; point IRQ Vector to our custom irq routine
  ldx #>irq
  sta $314    ; store in $314/$315
  stx $315

  lda #$00    ; trigger first interrupt at row zero
  sta $d012

  cli         ; clear interrupt disable flag
  jmp *
