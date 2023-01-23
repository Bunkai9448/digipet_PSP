.psp
.open "000f5e90_000f5f50_00012768_.dat" , 0x0

; Being a boot file is filled with code launching and other stuff
; I am going to try and work only with the text block here, 
; leaving everything else untouched. Text starts at: 0x0240
	.skip 0x0240
	
; string data

    block001_str1:
    .ascii "Comandos" ; コマンド
    .align 4

	.org 0x024C ; goes to next offset

    block002_str1:
    .ascii "Caminados" ; 歩数表示
    .align 4


	.org 0x0258 ; goes to next offset

    block003_str1:
    .ascii "Andar" ; 歩く
    .align 4

	.org 0x0260 ; goes to next offset

    block004_str1:
    .ascii "Menu" ; メニュー
    .align 4

	.org 0x026C ; goes to next offset

    block005_str1:
    .ascii "Confirmar" ; けってい
    .align 4

	.org 0x0278 ; goes to next offset
	
    block006_str1:
    .ascii "Volver" ; もどる
    .align 4	

	.org 0x0280 ; goes to next offset
	
    block007_str1:
    .ascii "Elegir" ; えらぶ
    .align 4	

	.org 0x0288 ; goes to next offset
	
    block008_str1:
    .ascii "Repetir" ; なおす キャンセル たたかう おうえん OK
    .align 4
	
	.org 0x0290 ; goes to next offset
	
    block009_str1:
    .ascii "Cancelar" ; キャンセル たたかう おうえん OK
    .align 4

	.org 0x029C ; goes to next offset
	
    block010_str1:
    .ascii "Luchar" ; たたかう おうえん OK
    .align 4
	
	.org 0x02A8 ; goes to next offset
	
    block011_str1:
    .ascii "Animar" ; おうえん
    .align 4
	
	.org 0x02B4 ; goes to next offset
	
    block012_str1:
    .ascii "OK" ; OK
    .align 4

	.org 0x02B8 ; goes to next offset
	
    block013_str1:
    .ascii "Buscar" ; さがす
    .align 4

	.org 0x02C0 ; goes to next offset
	
    block014_str1:
    .ascii "CATCH!" ; ＣＡＴＣＨ！ 
    .align 4
	
	.org 0x02D0 ; goes to next offset
	
    block015_str1:
    .ascii "Anda para investigar el area." ; 歩くことでエリアを探索することができます 
    .align 4	

	.org 0x02FC ; goes to next offset
	
    block016_str1:
    .ascii "Elige la ed. del digivice." ; 本体の色を選んでください
    .align 4	

	.org 0x0318 ; goes to next offset
	
    block017_str1:
    .ascii "Elige tu primer digimon." ; 最初のパートナーデジモンを選んでください
    .align 4

	.org 0x0344 ; goes to next offset
	
    block018_str1:
    .ascii "Introduce la hora al digivice." ; デジヴァイスの時間をセットしてください
    .align 4
	
	.org 0x036C ; goes to next offset
	
    block019_str1:
    .ascii "Hora en el digivice." ; デジヴァイスの時間です
    .align 4

	.org 0x0384 ; goes to next offset
	
    block020_str1:
    .ascii "Cambia los ajustes de sonido" ; SEの設定を切り替えることができます
    .align 4

	.org 0x03A8 ; goes to next offset
	
    block021_str1:
    .ascii "Comprueba el estado de tus digimon" ; パートナーデジモンの状態を見ることができます
    .align 4
	
	.org 0x03D8 ; goes to next offset
	
    block022_str1:
    .ascii "Elige el digimon" ; デジモンを選んでください
    .align 4	
	
	.org 0x03F4 ; goes to next offset
	
    block023_str1:
    .ascii "Comprueba el DP (Digi-Power)" ; DP（デジモンパワー）を確認することができます
    .align 4	

	.org 0x0424 ; goes to next offset
	
    block024_str1:
    .ascii "El DP es necesario para la Digi-Evo" ; DPは進化するときに必要なエネルギーです 
    .align 4

	.org 0x044C ; goes to next offset
	
    block025_str1:
    .ascii "Número de victorias del digimon" ; デジモンの勝利数を見ることができます 
    .align 4

	.org 0x0474 ; goes to next offset
	
    block026_str1:
    .ascii "El medidor aumenta el nivel de Digi-Evo" ; メーターが溜まると進化段階がアップします
    .align 4

	.org 0x04A0 ; goes to next offset
	
    block027_str1:
    .ascii "HP" ; HP（体力）を確認することができます
    .align 4

	.org 0x04C4 ; goes to next offset
	
    block028_str1:
    .ascii "La victoria se decide por puntos de vida." ; デジモンの生命力でバトルの勝敗を決める要素になります
    .align 4

	.org 0x04FC ; goes to next offset
	
    block029_str1:
    .ascii "Comprueba el ataque del digimon" ; ATTACK（攻撃力）を確認することができます
    .align 4

	.org 0x0528 ; goes to next offset
	
    block30_str1:
    .ascii "Puntos por ataque efectivo" ; 攻撃成功時に与えられるポイントです
    .align 4

	.org 0x054C ; goes to next offset
	
    block031_str1:
    .ascii "Comprueba el area de busqueda" ; 探索中のエリアを確認することができます
    .align 4	
	
	.org 0x0574 ; goes to next offset
	
    block032_str1:
    .ascii "" ; 点滅しているエリアが現在攻略中のエリアです
    .align 4
    
.close
