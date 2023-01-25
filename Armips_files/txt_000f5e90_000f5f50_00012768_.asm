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
    .ascii "Repetir" ; �Ȃ���
    .align 4
	
	.org 0x0290 ; goes to next offset
	
    block009_str1:
    .ascii "Cancelar" ; �L�����Z�� �������� �������� OK
    .align 4

	.org 0x029C ; goes to next offset
	
    block010_str1:
    .ascii "Luchar" ; �������� �������� OK
    .align 4
	
	.org 0x02A8 ; goes to next offset
	
    block011_str1:
    .ascii "Animar" ; ��������
    .align 4
	
	.org 0x02B4 ; goes to next offset
	
    block012_str1:
    .ascii "OK" ; OK
    .align 4

	.org 0x02B8 ; goes to next offset
	
    block013_str1:
    .ascii "Buscar" ; ������
    .align 4

	.org 0x02C0 ; goes to next offset
	
    block014_str1:
    .ascii "CATCH!" ; �b�`�s�b�g�I 
    .align 4
	
	.org 0x02D0 ; goes to next offset
	
    block015_str1:
    .ascii "Anda para investigar el area." ; �������ƂŃG���A��T�����邱�Ƃ��ł��܂� 
    .align 4	

	.org 0x02FC ; goes to next offset
	
    block016_str1:
    .ascii "Elige la ed. del digivice." ; �{�̂̐F��I��ł�������
    .align 4	

	.org 0x0318 ; goes to next offset
	
    block017_str1:
    .ascii "Elige tu primer digimon." ; �ŏ��̃p�[�g�i�[�f�W������I��ł�������
    .align 4

	.org 0x0344 ; goes to next offset
	
    block018_str1:
    .ascii "Introduce la hora al digivice." ; �f�W���@�C�X�̎��Ԃ��Z�b�g���Ă�������
    .align 4
	
	.org 0x036C ; goes to next offset
	
    block019_str1:
    .ascii "Hora en el digivice." ; �f�W���@�C�X�̎��Ԃł�
    .align 4

	.org 0x0384 ; goes to next offset
	
    block020_str1:
    .ascii "Cambia los ajustes de sonido" ; SE�̐ݒ��؂�ւ��邱�Ƃ��ł��܂�
    .align 4

	.org 0x03A8 ; goes to next offset
	
    block021_str1:
    .ascii "Comprueba el estado de tus digimon" ; �p�[�g�i�[�f�W�����̏�Ԃ����邱�Ƃ��ł��܂�
    .align 4
	
	.org 0x03D8 ; goes to next offset
	
    block022_str1:
    .ascii "Elige el digimon" ; �f�W������I��ł�������
    .align 4	
	
	.org 0x03F4 ; goes to next offset
	
    block023_str1:
    .ascii "Comprueba el DP (Digi-Power)" ; DP�i�f�W�����p���[�j���m�F���邱�Ƃ��ł��܂�
    .align 4	

	.org 0x0424 ; goes to next offset
	
    block024_str1:
    .ascii "El DP es necesario para la Digi-Evo" ; DP�͐i������Ƃ��ɕK�v�ȃG�l���M�[�ł� 
    .align 4

	.org 0x044C ; goes to next offset
	
    block025_str1:
    .ascii "Numero de victorias del digimon" ; �f�W�����̏����������邱�Ƃ��ł��܂� 
    .align 4

	.org 0x0474 ; goes to next offset
	
    block026_str1:
    .ascii "El medidor aumenta el nivel de Digi-Evo" ; ���[�^�[�����܂�Ɛi���i�K���A�b�v���܂�
    .align 4

	.org 0x04A0 ; goes to next offset
	
    block027_str1:
    .ascii "HP" ; HP�i�̗́j���m�F���邱�Ƃ��ł��܂�
    .align 4

	.org 0x04C4 ; goes to next offset
	
    block028_str1:
    .ascii "La victoria se decide por puntos de vida." ; �f�W�����̐����͂Ńo�g���̏��s�����߂�v�f�ɂȂ�܂�
    .align 4

	.org 0x04FC ; goes to next offset
	
    block029_str1:
    .ascii "Comprueba el ataque del digimon" ; ATTACK�i�U���́j���m�F���邱�Ƃ��ł��܂�
    .align 4

	.org 0x0528 ; goes to next offset
	
    block30_str1:
    .ascii "Puntos por ataque efectivo" ; �U���������ɗ^������|�C���g�ł� 
    .align 4

	.org 0x054C ; goes to next offset
	
    block031_str1:
    .ascii "Comprueba el area de busqueda" ; �T�����̃G���A���m�F���邱�Ƃ��ł��܂�
    .align 4	
	
	.org 0x0574 ; goes to next offset
	
    block032_str1:
    .ascii "Estas en el area que parpadea" ; �_�ł��Ă���G���A�����ݍU�����̃G���A�ł�
    .align 4	

	.org 0x5A0 ; goes to next offset
	
    block033_str1:
    .ascii "Cura a los digimon heridos en batalla" ; �o�g���ŕ������P�K���������Ƃ��ł��܂�
    .align 4

	.org 0x5C8 ; goes to next offset
	
    block034_str1:
    .ascii "Batalla contra otro jugador" ; ���̃v���C���[�Ɛ키���Ƃ��ł��܂�
    .align 4

	.org 0x5EC ; goes to next offset
	
    block035_str1:
    .ascii "Elige la Digi-Evo para usar" ; �키�i���i�K��I��ł�������
    .align 4

	.org 0x60C ; goes to next offset
	
    block036_str1:
    .ascii "Conectando... Espera por favor." ; �ʐM���E�E�E���΂炭���҂��������� �ʐM�o�g���̓I�[�g�o�g���ɂȂ�܂�
    .align 4

	.org 0x630 ; goes to next offset
	
    block037_str1:
    .ascii "Iniciando modo automatico." ; �ʐM�o�g���̓I�[�g�o�g���ɂȂ�܂�
    .align 4

	.org 0x654 ; goes to next offset
	
    block038_str1:
    .ascii "Guardar partida" ; �Z�[�u���邱�Ƃ��ł��܂�  
    .align 4

	.org 0x670 ; goes to next offset
	
    block039_str1:
    .ascii "Cambiar ed. del digivice" ; �{�̂̐F��ς��邱�Ƃ��ł��܂�
    .align 4
	
	.org 0x690 ; goes to next offset
	
    block040_str1:
    .ascii "Cambiar ajustes para la conexion" ; �ʐM�o�g���̐ݒ��؂�ւ��邱�Ƃ��ł��܂�
    .align 4

	.org 0x6BC ; goes to next offset
	
    block041_str1:
    .ascii "Battle Start!" ; �o�g���X�^�[�g�I  
    .align 4	

	.org 0x6D0 ; goes to next offset
	
    block042_str1:
    .ascii "Atacar enemigo" ; �G���U�����܂�
    .align 4

	.org 0x6E0 ; goes to next offset
	
    block043_str1:
    .ascii "Digi-Evo y atacar (coste DP: 3)" ; �P�i�K�i�����čU�����܂��iDP�R����j
    .align 4

	.org 0x708 ; goes to next offset
	
    block044_str1:
    .ascii "Cambiar de digimon y atacar" ; �I���������ԃf�W�����ɐ؂�ւ���čU�����܂�
    .align 4

	.org 0x738 ; goes to next offset
	
    block045_str1:
    .ascii "Evitar batalla y huir" ; �o�g�������ɓ����܂�
    .align 4

	.org 0x750 ; goes to next offset
	
    block046_str1:
    .ascii "!Pulsa �� y anima a tu digimon!" ; ���{�^���A�ł��ăf�W�����������I   
    .align 4

	.org 0x774 ; goes to next offset
	
    block047_str1:
    .ascii "!Exito!" ; �U�������I
    .align 4

	.org 0x780 ; goes to next offset
	
    block048_str1:
    .ascii "!Fracaso!" ; �U�����s�I
    .align 4

	.org 0x78C ; goes to next offset
	
    block049_str1:
    .ascii "Win!" ; �����I
    .align 4

	.org 0x794 ; goes to next offset
	
    block050_str1:
    .ascii "Lose..." ; �s�k���Ă��܂����E�E�E
    .align 4
	
	.org 0x7AC ; goes to next offset
	
    block051_str1:
    .ascii "Recibiste carne, +2 DP" ; ������ɓ��ꂽ�IDP�{�Q  
    .align 4	

	.org 0x7C4 ; goes to next offset
	
    block052_str1:
    .ascii "Recibiste proteina, +1 HP" ; �v���e�C������ɓ��ꂽ�IHP�{�P
    .align 4

	.org 0x7E4 ; goes to next offset
	
    block053_str1:
    .ascii "Recibiste p-drug, proxima batalla es victoria segura" ; �o�|�h���b�O����ɓ��ꂽ�I���̃o�g���œG���m���ɓ|���܂�
    .align 4

	.org 0x820 ; goes to next offset
	
    block054_str1:
    .ascii "Sirve para tratar heridas" ; �u�`�����E�v�ŃP�K���������Ƃ��ł��܂�
    .align 4

	.org 0x848 ; goes to next offset
	
    block055_str1:
    .ascii "No se puede explorar en horas de sueno. Horas de sueno: 9PM ~ 8AM" ; �������͒T�����邱�Ƃ��ł��܂��񁦐������Ԃo�l�X�F�O�O�`�`�l�W�F�O�O 
    .align 4

	.org 0x890 ; goes to next offset
	
    block056_str1:
    .ascii "Usa la cruceta y pulsa �� cuando veas 'CATCH!'" ; �����L�[�œd�g�������Ȃ�ꏊ��T���Ăb�`�sCH�I���o���灛���������I
    .align 4

	.org 0x8D4 ; goes to next offset
	
    block057_str1:
    .ascii "Conseguiste a: Agumon" ; �A�O���������ԂɂȂ���
    .align 4

	.org 0x8EC ; goes to next offset
	
    block058_str1:
    .ascii "Conseguiste a: Piyomon" ; �s�����������ԂɂȂ���
    .align 4

	.org 0x904 ; goes to next offset

    block059_str1:
    .ascii "Conseguiste a: Gabumon" ; �K�u���������ԂɂȂ��� 
    .align 4

	.org 0x91C ; goes to next offset
	
    block060_str1:
    .ascii "Conseguiste a: Tentomon" ; �e���g���������ԂɂȂ���
    .align 4

	.org 0x938 ; goes to next offset
	
    block061_str1:
    .ascii "Conseguiste a: Gomamon" ; �S�}���������ԂɂȂ���
    .align 4

	.org 0x950 ; goes to next offset
	
    block062_str1:
    .ascii "Conseguiste a: Palmon" ; �p�����������ԂɂȂ���
    .align 4

	.org 0x968 ; goes to next offset
	
    block063_str1:
    .ascii "Conseguiste a: Patamon" ; �p�^���������ԂɂȂ��� 
	.align 4

	.org 0x980 ; goes to next offset
	
    block064_str1:
    .ascii "Conseguiste a: Protmon" ; �v���b�g���������ԂɂȂ���
    .align 4

	.org 0x99C ; goes to next offset
	
    block065_str1:
    .ascii "Conseguiste a: Veedramon" ; �u�C�h�����������ԂɂȂ���
    .align 4

	.org 0x9B8 ; goes to next offset
	
    block066_str1:
    .ascii "Ataque doble exitoso, Agumon" ; �h�b�y���Q���K�\���j�����I�A�O�����̂g�o�Ƃ`�s�s�b�j�{�P
    .align 4

	.org 0x9F4 ; goes to next offset
	
    block067_str1:
    .ascii "Ataque doble exitoso, Piyomon" ; �h�b�y���Q���K�\���j�����I�s�������̂g�o�Ƃ`�s�s�b�j�{�P
    .align 4

	.org 0xA30 ; goes to next offset
	
    block068_str1:
    .ascii "Ataque doble exitoso, Gabumon" ; �h�b�y���Q���K�\���j�����I�K�u�����̂g�o�Ƃ`�s�s�b�j�{�P
    .align 4

	.org 0xA6C ; goes to next offset
	
    block069_str1:
    .ascii "Ataque doble exitoso, Tentomon" ; �h�b�y���Q���K�\���j�����I�e���g�����̂g�o�Ƃ`�s�s�b�j�{�P
    .align 4

	.org 0xAA8 ; goes to next offset
	
    block070_str1:
    .ascii "Ataque doble exitoso, Gomamon" ; �h�b�y���Q���K�\���j�����I�S�}�����̂g�o�Ƃ`�s�s�b�j�{�P
    .align 4

	.org 0xAE4 ; goes to next offset
	
    block071_str1:
    .ascii "Ataque doble exitoso, Palmon" ; �h�b�y���Q���K�\���j�����I�p�������̂g�o�Ƃ`�s�s�b�j�{�P  
    .align 4

	.org 0xB20 ; goes to next offset
	
    block072_str1:
    .ascii "Ataque doble exitoso, Patamon" ; �h�b�y���Q���K�\���j�����I�p�^�����̂g�o�Ƃ`�s�s�b�j�{�P
    .align 4

	.org 0xB5C ; goes to next offset
	
    block073_str1:
    .ascii "Ataque doble exitoso, Protmon" ; �h�b�y���Q���K�\���j�����I�v���b�g�����̂g�o�Ƃ`�s�s�b�j�{�P
    .align 4

	.org 0xB9C ; goes to next offset
	
    block074_str1:
    .ascii "Nivel Digi-Evo +1" ; �i���i�K���A�b�v�����I   
    .align 4

	.org 0xBB4 ; goes to next offset
	
    block075_str1:
    .ascii "Area Clear" ; �G���A�N���A�I
    .align 4

	.org 0xBC4 ; goes to next offset
	
    block076_str1:
    .ascii "Game Clear" ; �Q�[���N���A�I
    .align 4

	.org 0xBD4 ; goes to next offset
	
    block077_str1:
    .ascii "Escapaste" ; ���������I
    .align 4

	.org 0xBE0 ; goes to next offset
	
    block078_str1:
    .ascii "No Escapas" ; �������s�I
    .align 4

	.org 0xBEC ; goes to next offset
	
    block079_str1:
    .ascii "No se encuentra oponente" ; �ΐ푊�肪������܂���ł���      
    .align 4

	.org 0xC0C ; goes to next offset
	
    block080_str1:
    .ascii "Pulsa ��" ; ���{�^���������Ă�������
    .align 4

	.org 0xC28 ; goes to next offset
	
    block081_str1:
    .ascii "Koromon Digi-Evo Agumon" ; �R�������i���\�\�\�I�A�O�����I�I
    .align 4

	.org 0xC4C ; goes to next offset
	
    block082_str1:
    .ascii "Pyokomon Digi-Evo Piyomon" ; �s���R�����i���\�\�\�I�s�������I�I
    .align 4

	.org 0xC70 ; goes to next offset
	
    block083_str1:
    .ascii "Tsunomon Digi-Evo Gabumon" ; �c�m�����i���\�\�\�I�K�u�����I�I
    .align 4

	.org 0xC94 ; goes to next offset
	
    block084_str1:
    .ascii "Motimon Digi-Evo Tentomon" ; ���`�����i���\�\�\�I�e���g�����I�I 
    .align 4

	.org 0xCB8 ; goes to next offset
	
    block085_str1:
    .ascii "Pukamon Digi-Evo Gomamon" ; �v�J�����i���\�\�\�I�S�}�����I�I
    .align 4

	.org 0xCDC ; goes to next offset
	
    block086_str1:
    .ascii "Tanemon Digi-Evo Palmon" ; �^�l�����i���\�\�\�I�p�������I�I
    .align 4

	.org 0xD00 ; goes to next offset
	
    block087_str1:
    .ascii "Tokomon Digi-Evo Patamon" ; �g�R�����i���\�\�\�I�p�^�����I�I
    .align 4

	.org 0xD24 ; goes to next offset
	
    block088_str1:
    .ascii "Nyaromon Digi-Evo Protmon" ; �j���������i���\�\�\�I�v���b�g�����I�I
    .align 4

	.org 0xD4C ; goes to next offset
	
    block089_str1:
    .ascii "Agumon Digi-Evo Greymon" ; �A�O�����i���\�\�\�I�O���C�����I�I 
    .align 4

	.org 0xD70 ; goes to next offset
	
    block090_str1:
    .ascii "Greymon Digi-Evo MetalGreymon" ; �O���C�����i���\�\�\�I���^���O���C�����I�I
    .align 4

	.org 0xD9C ; goes to next offset
	
    block091_str1:
    .ascii "MetalGreymon Digi-Evo WarGreymon" ; ���^���O���C�����i���\�\�\�I�E�H�[�O���C�����I�I
    .align 4

	.org 0xDD0 ; goes to next offset
	
    block092_str1:
    .ascii "WarGreymon & MetalGarurumon Digi-Evo Omegamon" ; �E�H�[�O���C�����ƃ��^���K�����������̐i���\�\�\�I�I���K�����I�I
    .align 4

	.org 0xE14 ; goes to next offset
	
    block093_str1:
    .ascii "Gabumon Digi-Evo Garurumon" ; �K�u�����i���\�\�\�I�K���������I�I
    .align 4

	.org 0xE38 ; goes to next offset
	
    block094_str1:
    .ascii "Garurumon Digi-Evo " ; �K���������i���\�\�\�I���[�K���������I�I     
    .align 4

	.org 0xE64 ; goes to next offset
	
    block095_str1:
    .ascii "WereGarurumon Digi-Evo MetalGarurumon" ; ���[�K���������i���\�\�\�I���^���K���������I�I
    .align 4

	.org 0xE94 ; goes to next offset
	
    block096_str1:
    .ascii "MetalGarurumon & WarGreymon Digi-Evo Omegamon" ; ���^���K���������ƃE�H�[�O���C�������̐i���\�\�\�I�I���K�����I�I
    .align 4

	.org 0xED8 ; goes to next offset
	
    block097_str1:
    .ascii "Piyomon Digi-Evo Birdramon" ; �s�������i���\�\�\�I�o�[�h�������I�I
    .align 4

	.org 0xF00 ; goes to next offset
	
    block098_str1:
    .ascii "Birdramon Digi-Evo Garudamon" ; �o�[�h�������i���\�\�\�I�K���_�����I�I
    .align 4

	.org 0xF28 ; goes to next offset
	
    block099_str1:
    .ascii "Garudamon Digi-Evo Hououmon" ; �K���_�����i���\�\�\�I�z�E�I�E�����I�I  
    .align 4

	.org 0xF50 ; goes to next offset
	
    block100_str1:
    .ascii "Tentomon Digi-Evo Kabuterimon" ; �e���g�����i���\�\�\�I�J�u�e�������I�I
    .align 4

	.org 0xF78 ; goes to next offset
	
    block101_str1:
    .ascii "Kabuterimon Digi-Evo AtlurKabuterimon" ; �J�u�e�������i���\�\�\�I�A�g���[�J�u�e�������I�I
    .align 4

	.org 0xFAC ; goes to next offset
	
    block102_str1:
    .ascii "AtlurKabuterimon Digi-Evo HeraclesKabuterimon" ; �A�g���[�J�u�e�������i���\�\�\�I�w���N���J�u�e�������I�I
    .align 4

	.org 0xFE8 ; goes to next offset
	
    block103_str1:
    .ascii "Gomamon Digi-Evo Ikkakumon" ; �S�}�����i���\�\�\�I�C�b�J�N�����I�I
    .align 4

	.org 0x1010 ; goes to next offset
	
    block104_str1:
    .ascii "Ikkakumon Digi-Evo Zudomon" ; �C�b�J�N�����i���\�\�\�I�Y�h�����I�I
    .align 4

	.org 0x1038 ; goes to next offset
	
    block105_str1:
    .ascii "Zudomon Digi-Evo Vikemon" ; �Y�h�����i���\�\�\�I���@�C�N�����I�I
    .align 4

	.org 0x1060 ; goes to next offset
	
    block106_str1:
    .ascii "Palmon Digi-Evo Togemon" ; �p�������i���\�\�\�I�g�Q�����I�I
    .align 4

	.org 0x1084 ; goes to next offset
	
    block107_str1:
    .ascii "Togemon Digi-Evo Lilimon" ; �g�Q�����i���\�\�\�I���������I�I
    .align 4

	.org 0x10A8 ; goes to next offset
	
    block108_str1:
    .ascii "Lilimon Digi-Evo Rosemon" ; ���������i���\�\�\�I���[�����I�I
    .align 4

	.org 0x10CC ; goes to next offset
	
    block109_str1:
    .ascii "Patamon Digi-Evo Angemon" ; �p�^�����i���\�\�\�I�G���W�F�����I�I
    .align 4

	.org 0x10F4 ; goes to next offset
	
    block110_str1:
    .ascii "Angemon Digi-Evo HolyAngemon" ; �G���W�F�����i���\�\�\�I�z�[���[�G���W�F�����I�I
    .align 4

	.org 0x1128 ; goes to next offset
	
    block111_str1:
    .ascii "HolyAngemon Digi-Evo Seraphimon" ; �z�[���[�G���W�F�����i���\�\�\�I�Z���t�B�����I�I
    .align 4

	.org 0x115C ; goes to next offset
	
    block112_str1:
    .ascii "Plotmon Digi-Evo Tailmon" ; �v���b�g�����i���\�\�\�I�e�C�������I�I    
    .align 4

	.org 0x1184 ; goes to next offset
	
    block113_str1:
    .ascii "Tailmon Digi-Evo Angewomon" ; �e�C�������i���\�\�\�I�G���W�F�E�[�����I�I
    .align 4

	.org 0x11B0 ; goes to next offset
	
    block114_str1:
    .ascii "Angewomon Digi-Evo Ophanimon" ; �G���W�F�E�[�����i���\�\�\�I�I�t�@�j�����I�I
    .align 4

	.org 0x11E0 ; goes to next offset	

    block115_str1:
    .ascii "De 9PM a 8AM no se puede buscar, solo recuperar DP" ; �o�l�X�F�O�O�`�`�l�W�F�O�O�̊Ԃ͒T���ł����c�o�̉񕜂̂݉\�ł�
    .align 4

	.org 0x1224 ; goes to next offset	

    block116_str1:
    .ascii "Elige el digimon a sacar" ; �؂�ւ��钇�ԃf�W������I��ł�������
    .align 4

	; In a different text block, SAVE dialogue
		
	.org 0x1388 ; goes to next offset
	
    block117_str1:
    .ascii "Datos nuevos" ; �V�K�쐬�f�[�^
    .align 4

	.org 0x1398 ; goes to next offset

    block118_str1:
    .ascii "?Continuar con datos nuevos?" ; �V�K�ɍ쐬���܂��B��낵���ł����H    

	.org 0x13BC ; goes to next offset
	
    block119_str1:
    .ascii "?Sobrescribir los anteriores?" ; �f�[�^���㏑�����܂��B��낵���ł����H
    .align 4

	.org 0x13EC ; goes to next offset
	
    block120_str1:
    .ascii "No hay suficiente espacio en memoria, se necesitan %s mas" ; �󂫗e�ʂ��s�����Ă��܂��B�Z�[�u����ɂ͋󂫗e�ʂ����� %s�ȏ�K�v�ł��B
    .align 4

	.org 0x1438 ; goes to next offset
	
    block121_str1:
    .ascii "Guardado completado" ; �Z�[�u���������܂����B
    .align 4

	.org 0x1450 ; goes to next offset
	
    block122_str1:
    .ascii "Proceso interrumpido" ; ���������f����܂����B
    .align 4

	; In a different text block

	.org 0x1590 ; goes to next offset, the item & digimon list in text is writen here
	
    block123_str1:
    .ascii "NONE" ; NONE
    .align 4

	.org 0x1598 ; goes to next offset
	
    block124_str1:
    .ascii "CARNE" ; NIKU  
    .align 4

	.org 0x15A0 ; goes to next offset
	
    block125_str1:
    .ascii "PROTEIN" ; PROTEIN
    .align 4

	.org 0x15A8 ; goes to next offset
	
    block126_str1:
    .ascii "P_DRAG" ; P_DRAG
    .align 4

	.org 0x15B0 ; goes to next offset
	
    block127_str1:
    .ascii "Agumon" ; �A�O����
    .align 4

	.org 0x15BC ; goes to next offset
	
    block128_str1:
    .ascii "Piyomon" ; �s������  
    .align 4

	.org 0x15C8 ; goes to next offset
	
    block129_str1:
    .ascii "Gabumon" ; �K�u����
    .align 4

	.org 0x15D4 ; goes to next offset
	
    block130_str1:
    .ascii "Tentomon" ; �e���g����
    .align 4

	.org 0x15E0 ; goes to next offset
	
    block131_str1:
    .ascii "Gomamon" ; �S�}����
    .align 4

	.org 0x15EC ; goes to next offset
	
    block132_str1:
    .ascii "Palmon" ; �p������
    .align 4

	.org 0x15F8 ; goes to next offset
	
    block133_str1:
    .ascii "Patamon" ; �p�^����
    .align 4

	.org 0x1604 ; goes to next offset
	
    block134_str1:
    .ascii "Plotmon" ; �v���b�g����
    .align 4

	.org 0x1614 ; goes to next offset
	
    block135_str1:
    .ascii "Greymon" ; �O���C����
    .align 4

	.org 0x1620 ; goes to next offset
	
    block136_str1:
    .ascii "Garurumon" ; �K��������
    .align 4

	.org 0x162C ; goes to next offset
	
    block137_str1:
    .ascii "Birdramon" ; �o�[�h������
    .align 4

	.org 0x163C ; goes to next offset
	
    block138_str1:
    .ascii "Togemon" ; �g�Q����
    .align 4

	.org 0x1648 ; goes to next offset
	
    block139_str1:
    .ascii "Kabuterimon" ; �J�u�e������
    .align 4

	.org 0x1658 ; goes to next offset
	
    block140_str1:
    .ascii "Ikkakumon" ; �C�b�J�N����
    .align 4

	.org 0x1668 ; goes to next offset
	
    block141_str1:
    .ascii "Angemon" ; �G���W�F����
    .align 4

	.org 0x1678 ; goes to next offset
	
    block142_str1:
    .ascii "Tailmon" ; �e�C������
    .align 4

	.org 0x1684 ; goes to next offset
	
    block143_str1:
    .ascii "MetalGreymon" ; ���^���O���C����
    .align 4

	.org 0x1698 ; goes to next offset
	
    block144_str1:
    .ascii "WereGarurumon" ; ���[�K��������
    .align 4

	.org 0x16A8 ; goes to next offset
	
    block145_str1:
    .ascii "Parrotmon" ; �p���b�g����
    .align 4

	.org 0x16B8 ; goes to next offset
	
    block146_str1:
    .ascii "Hada floral" ; �Ԃ̗d��
    .align 4

	.org 0x16C4 ; goes to next offset
	
    block147_str1:
    .ascii "AtlurKabuterimon" ; �A�g���[�J�u�e������
    .align 4

	.org 0x16DC ; goes to next offset
	
    block148_str1:
    .ascii "Zudomon" ; �Y�h����
    .align 4

	.org 0x16E8 ; goes to next offset
	
    block149_str1:
    .ascii "HolyAngemon" ; �z�[���[�G���W�F����
    .align 4

	.org 0x1700 ; goes to next offset
	
    block150_str1:
    .ascii "Angewomon" ; �G���W�F�E�[����
    .align 4

	.org 0x1714 ; goes to next offset
	
    block151_str1:
    .ascii "WarGreymon" ; �E�H�[�O���C����
    .align 4

	.org 0x1728 ; goes to next offset
	
    block152_str1:
    .ascii "MetalGarurumon" ; ���^���K��������
    .align 4

	.org 0x173C ; goes to next offset
	
    block153_str1:
    .ascii "Hououmon" ; �z�E�I�E����
    .align 4

	.org 0x174C ; goes to next offset
	
    block154_str1:
    .ascii "Rosemon" ; ���[����
    .align 4

	.org 0x1758 ; goes to next offset
	
    block155_str1:
    .ascii "HeraclesKabuterimon" ; �w���N���J�u�e������
    .align 4

	.org 0x1770 ; goes to next offset
	
    block156_str1:
    .ascii "Vikemon" ; ���@�C�N����
    .align 4

	.org 0x1780 ; goes to next offset
	
    block157_str1:
    .ascii "Seraphimon" ; �Z���t�B����
    .align 4

	.org 0x1790 ; goes to next offset
	
    block158_str1:
    .ascii "Ophanimon" ; �I�t�@�j����
    .align 4

	.org 0x17A0 ; goes to next offset
	
    block159_str1:
    .ascii "Omegamon(Agumon)" ; �I���K�����i�A�O�����j
    .align 4

	.org 0x17B8 ; goes to next offset
	
    block160_str1:
    .ascii "Omegamon(Gabumon)" ; �I���K����(�K�u�����j
    .align 4

	.org 0x17D0 ; goes to next offset
	
    block161_str1:
    .ascii "Veedramon" ; �u�C�h������
    .align 4

	.org 0x17E0 ; goes to next offset
	
    block162_str1:
    .ascii "Kuwagamon" ; �N���K�[����   
    .align 4

	.org 0x17F0 ; goes to next offset
	
    block163_str1:
    .ascii "Devimon" ; �f�r����
    .align 4

	.org 0x17FC ; goes to next offset
	
    block164_str1:
    .ascii "Etemon" ; �G�e����
    .align 4

	.org 0x1808 ; goes to next offset
	
    block165_str1:
    .ascii "MetalTyranomon" ; ���^���e�B���m����
    .align 4

	.org 0x181C ; goes to next offset
	
    block166_str1:
    .ascii "MetalSeadramon" ; ���^���V�[�h������
    .align 4

	.org 0x1830 ; goes to next offset
	
    block167_str1:
    .ascii "Megadramon" ; ���K�h������
    .align 4

	.org 0x1840 ; goes to next offset
	
    block168_str1:
    .ascii "Mugendramon" ; ���Q���h������
    .align 4

	.org 0x1850 ; goes to next offset
	
    block169_str1:
    .ascii "Apocalymon" ; �A�|�J������
    .align 4

	.org 0x1860 ; goes to next offset
	
    block170_str1:
    .ascii "Kunemon" ; �N�l����
    .align 4

	.org 0x186C ; goes to next offset
	
    block171_str1:
    .ascii "Gizamon" ; �M�U����
    .align 4

	.org 0x1878 ; goes to next offset
	
    block172_str1:
    .ascii "Gazimon" ; �K�W����
    .align 4

	.org 0x1884 ; goes to next offset
	
    block173_str1:
    .ascii "Bakemon" ; �o�P����
    .align 4

	.org 0x1890 ; goes to next offset
	
    block174_str1:
    .ascii "Ogremon" ; �I�[�K���� 
    .align 4

	.org 0x189C ; goes to next offset
	
    block175_str1:
    .ascii "Sukamon" ; �X�J����
    .align 4

	.org 0x18A8 ; goes to next offset
	
    block176_str1:
    .ascii "Shellmon" ; �V�F������
    .align 4

	.org 0x18B4 ; goes to next offset
	
    block177_str1:
    .ascii "DarkTyranomon" ; �_�[�N�e�B���m����
    .align 4

	.org 0x18C8 ; goes to next offset
	
    block178_str1:
    .ascii "Gekomon" ; �Q�R����
    .align 4

	.org 0x18D4 ; goes to next offset
	
    block179_str1:
    .ascii "Airdramon" ; �G�A�h������
    .align 4

	.org 0x18E4 ; goes to next offset
	
    block180_str1:
    .ascii "Agumon (Tag)" ; �A�O�����i�h�b�y���j
    .align 4

	.org 0x18FC ; goes to next offset
	
    block181_str1:
    .ascii "Piyomon (Tag)" ; �s�������i�h�b�y���j
    .align 4

	.org 0x1914 ; goes to next offset
	
    block182_str1:
    .ascii "Gabumon (Tag)" ; �K�u�����i�h�b�y���j
    .align 4

	.org 0x192C ; goes to next offset
	
    block183_str1:
    .ascii "Tentomon (Tag)" ; �e���g�����i�h�b�y���j
    .align 4

	.org 0x1944 ; goes to next offset
	
    block184_str1:
    .ascii "Gomamon (Tag)" ; �S�}�����i�h�b�y���j
    .align 4

	.org 0x195C ; goes to next offset
	
    block185_str1:
    .ascii "Palmon (Tag)" ; �p�������i�h�b�y���j
    .align 4

	.org 0x1974 ; goes to next offset
	
    block186_str1:
    .ascii "Patamon (Tag)" ; �p�^�����i�h�b�y���j
    .align 4

	.org 0x198C ; goes to next offset
	
    block187_str1:
    .ascii "Plotmon (Tag)" ; �v���b�g�����i�h�b�y���j
    .align 4

	; In a different text block, more Commands

	.org 0x1D9C ; goes to next offset
	
    block188_str1:
    .ascii "Wait" ; �ҋ@
    .align 4

	.org 0x1DA4 ; goes to next offset
	
    block189_str1:
    .ascii "Stop" ; ��~
    .align 4

	.org 0x1DAC ; goes to next offset
	
    block190_str1:
    .ascii "Walk" ; ����
    .align 4

	.org 0x1DB4 ; goes to next offset
	
    block191_str1:
    .ascii "Joy" ; ���
    .align 4

	.org 0x1DBC ; goes to next offset
	
    block192_str1:
    .ascii "Attack" ; �U��
    .align 4
	
	.org 0x1DC4 ; goes to next offset
	
    block193_str1:
    .ascii "Damage" ; �_���[�W
    .align 4	
	
	.org 0x1DD0 ; goes to next offset
	
    block194_str1:
    .ascii "Derrotas" ; �o�g���s��
    .align 4	

	.org 0x1DDC ; goes to next offset
	
    block195_str1:
    .ascii "heridas" ; ����
    .align 4
	
	.org 0x1DE4 ; goes to next offset
	
    block196_str1:
    .ascii "Evo" ; �i��
    .align 4	

	.org 0x1DEC ; goes to next offset
	
    block197_str1:
    .ascii "HELP" ; HELP
    .align 4

	.org 0x1DF4 ; goes to next offset
	
    block198_str1:
    .ascii "Link-Battle" ; �ʐM�U��
    .align 4
	
	.org 0x1E00 ; goes to next offset
	
    block199_str1:
    .ascii "Link-Wins" ; �ʐM����
    .align 4	

	.org 0x1E0C ; goes to next offset
	
    block200_str1:
    .ascii "Wait4opponent" ; �G�o�g���ҋ@
    .align 4	

	.org 0x1E1C ; goes to next offset
	
    block201_str1:
    .ascii "Digi-Evo (egg>baby)" ; �i���i�c�N�����������j
    .align 4	

	.org 0x1E34 ; goes to next offset
	
    block202_str1:
    .ascii "Retro (Evo>baby)" ; �މ��i�i�����������j
    .align 4

	.org 0x1E4C ; goes to next offset
	
    block203_str1:
    .ascii "Dormir" ; ����
    .align 4

	.org 0x1E54 ; goes to next offset
	
    block204_str1:
    .ascii "Comer carne" ; �����ׂ�
    .align 4

	.org 0x1E60 ; goes to next offset
	
    block205_str1:
    .ascii "Extra" ; ���܂�
    .align 4	

.close