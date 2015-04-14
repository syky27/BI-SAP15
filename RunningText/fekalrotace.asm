; definice pro nas typ procesoru 169
.include "m169def.inc"
; podprogramy pro praci s displejem
.org 0x1000
.include "print.inc"

.cseg		; nasledujici umistit do pameti programu (implicitni)
.org	0	; zaciname od adresy 0 (implicitni)
	
	
jmp	start   ; skoc na start:
	
.org	0x100
retez:	.db	"SYKY --------NEMA RAD BI-SAP",0	; retezec zakonceny nulou, který se bude vypisovat a posouvat
	


start:

 ; Inicializace zasobniku
	ldi r16, 0xFF
	out SPL, r16
	ldi r16, 0x04
	out SPH, r16
    ; Inicializace displeje
	call init_disp

	ldi	r30, low(2*retez)	; dolni bajt bajtove adresy retezce (registr R30 = dolni bajt 16ti bitoveho registru Z)
	ldi	r31, high(2*retez)	; horni bajt bajtove adresy retezce (registr R31 = horni bajt 16ti bitoveho registru Z)

					; vysvetlivky:
					;   1) "retez" je navesti (adresa). Pri prekladu se chova jako konstanta - jeji
					;      hodnotou je adresa do pameti programu. Ma 16 bitu.
					;   2) "low" je pseudoinstrukce, ktera z 16ti bitove konstanty vybere nizsi byte,
					;      "high"  je pseudoinstrukce, ktera z 16ti bitove konstanty vybere vyssi byte
					;   3) registr Z se sklada z registru R31:R30


lpm	r16, Z+			; nahraj 1. bajt (znak) z retezce do r16, posun pozici v retezci
ldi r26, 0          ; nahraj do registru r26 0 pro porovnání konce retezce	


; nekonecná smicka

while:

zacatek:

		RCALL	zpozdi	; zavola "zpozdi"	
		RJMP	zacatek ; skoci na "zacatek"


		zpozdi:												
		INC		R27          ; inkrementuje R2
		LDI		R28,255    ; naplni R19 cislem 125
		CP		R27,R28       ; je-li R2 mensi nez 125 >>
		BRLO	        pryc          ; >> jde pryc

                CLR		R27

		INC		R29
		LDI		R28,255	
		CP		R29,R28
		BRLO	        pryc	     ; pozdrzi 1x50, celkem tedy 50x
	   CLR		R29


cp r16, r26          ; porovnání registru r16 a r26, pokud se rovnají, nastavení Z na první bit retezce
brne equal1
ldi	r30, low(2*retez)	; dolni bajt bajtove adresy retezce (registr R30 = dolni bajt 16ti bitoveho registru Z)
ldi	r31, high(2*retez)	; horni bajt bajtove adresy retezce (registr R31 = horni bajt 16ti bitoveho registru Z)
call show_char 
equal1:nop

                       ; nacteni prvnich 6 znaku do registru a jejich presouvání
mov r24, r23
mov r23, r22
mov r22, r21
mov r21, r20
mov r20, r19
mov r19, r16

                       ; výpis retezcu, pokud jsou prázdné, nevypisuj nic

mov r16, r24
ldi r17, 2
call show_char

mov r16, r23
ldi r17, 3
call show_char


mov r16, r22
ldi r17, 4
call show_char


mov r16, r21
ldi r17, 5
call show_char


mov r16, r20
ldi r17, 6
call show_char


mov r16, r19
ldi r17, 7
call show_char

lpm 	r16, Z+			; nahraj dalsi bajt (znak) z retezce do r16, posun pozici v retezci	



pryc: NOP
RET



rjmp while              ; nekonecny cyklus	
end:	jmp	end
