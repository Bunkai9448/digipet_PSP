.psp
.create "00000021.txt" , 0x0

; header

    .ascii "TXTD"    ; signature
    .word 0x01    ; version
    .word 0x1D    ; string count
    .word 0x00    ; unknown, PADDING?

	; String blocks offsets
    .word 0x84, 0x0109, 0x017C, 0x01A9, 0x01E2, 0x022F    
    .word 0x0244, 0x026B, 0x0270, 0x027B, 0x0286, 0x0291
    .word 0x02B6, 0x02C3, 0x02FC, 0x030D, 0x031E, 0x032B   
    .word 0x033C, 0x034B, 0x0352, 0x0361, 0x0376, 0x038B
    .word 0x0396, 0x03A1, 0x03CE, 0x0405, 0x041A
	
; string data

    block001_str1:
    .ascii "No se detecta tarjeta." ; �L�^���f�B�A�����o���邱�Ƃ��ł��܂���ł����B
    .align 4

	.byte 0x0A ; Control code for separating different strings

    block001_str2:
    .ascii "Se requieren %dKB de espacio en memoria para este juego." ; ���̃Q�[���̃f�[�^���Z�[�u����ɂ͋󂫗e�ʂ�%dKB�ȏ�̋L�^���f�B�A���K�v�ł��B
    .align 4

	.org 0x0109 ; goes to next offset

    block002_str1:
    .ascii "No hay suficiente espacio en memoria" ; �L�^���f�B�A�̋󂫗e�ʂ��s�����Ă��܂��B
    .align 4

	.byte 0x0A ; Control code for separating different strings
	
    block002_str2:
    .ascii "Para guardar se necesitan aun %dKB" ; ���̃Q�[���̃f�[�^���Z�[�u����ɂ͋󂫗e�ʂ�����%dKB�ȏ�K�v�ł��B
    .align 4	
	
	.org 0x017C ; goes to next offset	
	
    block003_str1:
    .ascii "?Quieres borrar archivos para hacer espacio?" ; �L�^���f�B�A����s�v�ȃf�[�^���폜���܂����H
    .align 4	

	.org 0x01A9 ; goes to next offset

    block004_str1:
    .ascii "Se ha cancelado el borrado."; �f�[�^�̍폜���L�����Z�����܂����B
    .align 4

	.byte 0x0A ; Control code for separating different strings
	
    block004_str2:
    .ascii "Guardando."; �Z�[�u�Ɉڍs���܂��B
    .align 4	

	.org 0x01E2 ; goes to next offset

    block005_str1:
    .ascii "El borrado de memoria se ha detenido." ;  �f�[�^�̍폜�����f����܂����B 
    .align 4

	.byte 0x0A ; Control code for separating different strings
	
    block005_str2:
    .ascii "?Quieres borrar archivos no deseados?" ;  �L�^���f�B�A����s�v�ȃf�[�^���폜���܂����H
    .align 4	
	
	.org 0x022F ; goes to next offset
	
    block006_str1:
    .ascii "Guardando." ; �Z�[�u�Ɉڍs���܂��B
    .align 4	

	.org 0x0244 ; goes to next offset

    block007_str1:
    .ascii "Tiempo de juego: %2dHoras%2dMinutos%2dSegundos" ; �v���C���� %2d����%2d��%2d�b
    .align 4

	.org 0x026B ; goes to next offset

    block008_str1:
    .ascii "OK"; �n�j 
    .align 4

	.org 0x0270 ; goes to next offset
	
    block009_str1:
    .ascii "Cancelar" ; �L�����Z�� 
    .align 4	

	.org 0x027B ; goes to next offset

    block010_str1:
    .ascii "Empezar" ; �͂��߂��� 
    .align 4

	.org 0x0286 ; goes to next offset

    block011_str1:
    .ascii "Continuar" ; �Â�����
    .align 4

	.org 0x0291 ; goes to next offset
	
    block012_str1:
    .ascii "Digivice Ver. Portable" ; �f�W���@�C�XVer.Portable
    .align 4

	.org 0x02B6 ; goes to next offset

    block013_str1:
    .ascii "Datos guardados." ; �Z�[�u�f�[�^
    .align 4

	.org 0x02C3 ; goes to next offset

    block014_str1:
    .ascii "Digivice Ver. Portable: Datos guardos" ; �f�W���@�C�XVer.Portable�̃Z�[�u�f�[�^�ł��B 
    .align 4

	.org 0x02FC ; goes to next offset
	
    block015_str1:
    .ascii "Ed. Greymon" ; �O���C�����J���[ 
    .align 4	

	.org 0x030D ; goes to next offset

    block016_str1:
    .ascii "Ed. Garurumon" ; �K���������J���[
    .align 4

	.org 0x031E ; goes to next offset

    block017_str1:
    .ascii "Ed. Anime" ; �A�j���J���[ 
    .align 4

	.org 0x032B ; goes to next offset
	
    block018_str1:
    .ascii "Ed. Tailmon" ; �e�C�������J���[
    .align 4	

	.org 0x033C ; goes to next offset
	
    block019_str1:
    .ascii "Ed. Normal" ; �m�[�}���J���[ 
    .align 4				

	.org 0x034B ; goes to next offset

    block020_str1:
    .ascii "Guardar" ; �Z�[�u 
    .align 4

	.org 0x0352 ; goes to next offset

    block021_str1:
    .ascii "Cambiar ed." ; �J���[�`�F���W 
    .align 4

	.org 0x0361 ; goes to next offset
	
    block022_str1:
    .ascii "Batalla por wifi: ON" ; �ʐM�o�g���ݒ�F�L��
    .align 4

	.org 0x0376 ; goes to next offset

    block023_str1:
    .ascii "?Guardar?" ; �Z�[�u���܂����H
    .align 4

	.org 0x038B ; goes to next offset

    block024_str1:
    .ascii "!Guardando!" ; �Z�[�u���I
    .align 4

	.org 0x0396 ; goes to next offset
	
    block025_str1:
    .ascii "Guardado completo." ; �Z�[�u���� 
    .align 4	

	.org 0x03A1 ; goes to next offset

    block026_str1:
    .ascii "Se ha cancelado el guardado." ; �Z�[�u�����f����܂����B
    .align 4

	.byte 0x0A ; Control code for separating different strings

    block026_str2:
    .ascii "?Reintentar?" ; ���g���C���܂����H
    .align 4

	.org 0x03CE ; goes to next offset

    block027_str1:
    .ascii "Batalla contra NPC: OFF" ; �m�o�b�ΐ�ݒ�F����
    .align 4

	.byte 0x0A ; Control code for separating different strings

    block027_str2:
    .ascii "?Activar batalla contra NPC?" ; �m�o�b�ΐ��L���ɂ��܂����H
    .align 4

	.org 0x0405 ; goes to next offset
	
    block028_str1:
    .ascii "Batalla por wifi: OFF" ; �ʐM�o�g���ݒ�F���� 
    .align 4	

	.byte 0x0A ; Control code for separating different strings

    block028_str2:
    .ascii "Batalla contra NPC: ON" ; �m�o�b�ΐ�ݒ�F�L��
    .align 4

	.org 0x041A ; goes to next offset

    block029_str1:
    .ascii "?Desactivar batalla contra NPC?" ; �m�o�b�ΐ�𖳌��ɂ��܂����H
    .align 4
	
.close