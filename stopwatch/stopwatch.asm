.include "m169def.inc"
.org 0x1000
.include "print.inc"
.org   0x0000
jmp    start
.org 0x000A
jmp    int_T2

;interrupt
int_T2:
		ldi r22, 1
		cpi r28, 0 ;stopnuti
		brne disabled
		sts TCNT2, r21
		call increment_S

disabled:	reti

;setiny
increment_S:
		inc r23
		cpi r23, 100
		ldi r22, 1
		brne increment_S_ok
		call increment_Se

increment_S_ok:	ret

;vteriny
increment_Se:
		ldi r23, 0
		inc r24
		ldi r22, 1
		cpi r24, 60
		brne increment_Se_ok
		call increment_M

increment_Se_ok:ret

;minuty
increment_M:
		ldi r24, 0
		inc r25
		ret

div:
		ldi r26, 0

compare:
		cpi r16, 10
		brlo div_done
		inc r26
		subi r16, 10
		jmp compare

div_done:
		ret

print_S:
		mov r16, r23
		call div
		ldi r17, 7
		add r16, r27
		call show_char
		mov r16, r26
		ldi r17, 6
		add r16, r27
		call show_char
		ret

print_Se:
		mov r16, r24
		call div
		ldi r17, 5
		add r16, r27
		call show_char
		mov r16, r26
		ldi r17, 4
		add r16, r27
		call show_char
		ret

print_M:
		mov r16, r25
		call div
		ldi r17, 3
		add r16, r27
		call show_char
		mov r16, r26
		ldi r17, 2
		add r16, r27
		call show_char
		ret

joystick:
		sbrs r29, 4
		call reset
		sbrs r29, 7
		ldi r28, 1
		sbrs r29, 6
		ldi r28, 0
		ret

reset:
		cli 	;clear
		ldi r16, '0'
		ldi r23, 0
		ldi r24, 0
		ldi r25, 0
		ldi r28, 1

		ldi r17, 2
		call show_char
		ldi r17, 3
		call show_char
		ldi r17, 4
		call show_char
		ldi r17, 5
		call show_char
		ldi r17, 6
		call show_char
		ldi r17, 7
		call show_char
		sei	;povoleni interruptu
		ret

start:
		cli	;clear
		ldi r21, 21
		sts TCNT2, r21
		ldi r16, 0xFF
		out SPL, r16
		ldi r16, 0x04
		out SPH, r16

		call init_disp
		ldi r16, 0x08
		sts ASSR, r16
		ldi r16, 0x01
		sts TIMSK2, r16
		ldi r16, 0x02
		sts TCCR2A, r16
		ldi r21, 215
		ldi r22, 0
		ldi r23, 0
		ldi r24, 0
		ldi r25, 0
		ldi r27, 48
		ldi r28, 0
		ldi r16, 1

		sts LCDDR8, r16
		ldi r16, '0'
		ldi r17, 2
		call show_char
		ldi r17, 3
		call show_char
		ldi r17, 4
		call show_char
		ldi r17, 5
		call show_char
		ldi r17, 6
		call show_char
		ldi r17, 7
		call show_char

		in r30, DDRE
		andi r30, 0b11110011
		in r29, PORTE
		ori r29, 0b00001100
		out DDRE, r30
		out PORTE, r29
		ldi r29, 0b00000000
		sts DIDR1, r29
		in r30, DDRB
		andi r30, 0b00101111
		in r29, PORTB
		ori r29, 0b11010000
		out DDRB, r30
		out PORTB, r29
		ldi r31, 0
		sts TCNT2, r21
		sei;povoleni interruptu


cycle_joy:
		in r29, PINE
		in r30, PINB
		andi r29, 12
		andi r30, 208 
		or r29, r30
		cpse r29, r31

		call joystick
		mov r31, r29

		cpi r22, 1	;kdyz 1 tak vypisuj jinak ne
		brne notchanged

		call print_M
		call print_Se
		call print_S

notchanged:
		ldi r22, 0
		jmp cycle_joy

rjmp PC
