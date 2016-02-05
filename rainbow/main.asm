main:
  sei
  jsr init_screen
  jsr init_text
  jsr set_colors
  jsr sid_init
  jsr hook_irq

irq:
  dec $d019        ; acknowledge IRQ / clear register for next interrupt
  jsr sid_play
  jsr cycle_colors
  jmp $ea81        ; return to kernel interrupt routine
