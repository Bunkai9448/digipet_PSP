.psp
.open "000f5e90_000f5f50_00012768_.dat" , 0x0

; Being a boot file is filled with code launching and other stuff
; I am going to try and work only with the text block here, 
; leaving everything else untouched. Text starts at: 0x0240
	.skip 0x0240
	
; string data

    block001_str1:
    .ascii "Comandos" ; �R�}���h
    .align 4

	.org 0x024C ; goes to next offset

    block002_str1:
    .ascii "Caminados" ; �����\��
    .align 4


	.org 0x0258 ; goes to next offset

    block003_str1:
    .ascii "Andar" ; ����
    .align 4

	.org 0x0260 ; goes to next offset

    block004_str1:
    .ascii "Menu" ; ���j���[
    .align 4

	.org 0x026C ; goes to next offset

    block005_str1:
    .ascii "Confirmar" ; �����Ă�
    .align 4

	.org 0x0278 ; goes to next offset
	
    block006_str1:
    .ascii "Volver" ; ���ǂ�
    .align 4	

	.org 0x0280 ; goes to next offset
	
    block007_str1:
    .ascii "Elegir" ; �����
    .align 4	

	.org 0x0288 ; goes to next offset
	
    block008_str1:
    .ascii "Repetir" ; �Ȃ��� �L�����Z�� �������� �������� OK
    .align 4
	
.close