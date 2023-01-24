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
    .ascii "Estás en el area que parpadea" ; 点滅しているエリアが現在攻略中のエリアです
    .align 4	

	.org 0x5A0 ; goes to next offset
	
    block033_str1:
    .ascii "Cura a los digimon heridos en batalla" ; バトルで負ったケガを治すことができます
    .align 4

	.org 0x5C8 ; goes to next offset
	
    block034_str1:
    .ascii "Batalla contra otro jugador" ; 他のプレイヤーと戦うことができます
    .align 4

	.org 0x5EC ; goes to next offset
	
    block035_str1:
    .ascii "Elige la Digi-Evo para usar" ; 戦う進化段階を選んでください
    .align 4

	.org 0x60C ; goes to next offset
	
    block036_str1:
    .ascii "Conectando... Espera por favor." ; 通信中・・・しばらくお待ちください 通信バトルはオートバトルになります
    .align 4

	.org 0x630 ; goes to next offset
	
    block037_str1:
    .ascii "Iniciando modo automatico." ; 通信バトルはオートバトルになります
    .align 4

	.org 0x654 ; goes to next offset
	
    block038_str1:
    .ascii "Guardar partida" ; セーブすることができます
    .align 4

	.org 0x670 ; goes to next offset
	
    block039_str1:
    .ascii "Cambiar ed. del digivice" ; 本体の色を変えることができます
    .align 4
	
	.org 0x690 ; goes to next offset
	
    block040_str1:
    .ascii "Cambiar ajustes para la conexion" ; 通信バトルの設定を切り替えることができます
    .align 4

	.org 0x6BC ; goes to next offset
	
    block041_str1:
    .ascii "Battle Start!" ; バトルスタート！  
    .align 4	

	.org 0x6D0 ; goes to next offset
	
    block042_str1:
    .ascii "Atacar enemigo" ; 敵を攻撃します
    .align 4

	.org 0x6E0 ; goes to next offset
	
    block043_str1:
    .ascii "Digi-Evo y atacar (coste DP: 3)" ; １段階進化して攻撃します（DP３消費）
    .align 4

	.org 0x708 ; goes to next offset
	
    block044_str1:
    .ascii "Cambiar de digimon y atacar" ; 選択した仲間デジモンに切り替わって攻撃します
    .align 4

	.org 0x738 ; goes to next offset
	
    block045_str1:
    .ascii "Evitar batalla y huir" ; バトルせずに逃げます
    .align 4

	.org 0x750 ; goes to next offset
	
    block046_str1:
    .ascii "!Pulsa ○ y anima a tu digimon!" ; ○ボタン連打してデジモンを応援！   
    .align 4

	.org 0x774 ; goes to next offset
	
    block047_str1:
    .ascii "!Exito!" ; 攻撃成功！
    .align 4

	.org 0x780 ; goes to next offset
	
    block048_str1:
    .ascii "!Fracaso!" ; 攻撃失敗！
    .align 4

	.org 0x78C ; goes to next offset
	
    block049_str1:
    .ascii "Win!" ; 勝利！
    .align 4

	.org 0x794 ; goes to next offset
	
    block050_str1:
    .ascii "Lose..." ; 敗北してしまった・・・
    .align 4
	
	.org 0x7AC ; goes to next offset
	
    block051_str1:
    .ascii "Recibiste carne, +2 DP" ; 肉を手に入れた！DP＋２  
    .align 4	

	.org 0x7C4 ; goes to next offset
	
    block052_str1:
    .ascii "Recibiste proteina, +1 HP" ; プロテインを手に入れた！HP＋１
    .align 4

	.org 0x7E4 ; goes to next offset
	
    block053_str1:
    .ascii "Recibiste p-drug, proxima batalla es victoria segura" ; Ｐ－ドラッグを手に入れた！次のバトルで敵を確実に倒せます
    .align 4

	.org 0x820 ; goes to next offset
	
    block054_str1:
    .ascii "Sirve para tratar heridas" ; 「チリョウ」でケガを治すことができます
    .align 4

	.org 0x848 ; goes to next offset
	
    block055_str1:
    .ascii "No se puede explorar en horas de sueno. Horas de sueno: 9PM ~ 8AM" ; 睡眠中は探索することができません※睡眠時間ＰＭ９：００～ＡＭ８：００ 
    .align 4

	.org 0x890 ; goes to next offset
	
    block056_str1:
    .ascii "Usa la cruceta y pulsa ○ cuando veas 'CATCH!'" ; 方向キーで電波が強くなる場所を探してＣＡＴCH！が出たら○を押そう！
    .align 4

	.org 0x8D4 ; goes to next offset
	
    block057_str1:
    .ascii "Conseguiste a: Agumon" ; アグモンが仲間になった
    .align 4

	.org 0x8EC ; goes to next offset
	
    block058_str1:
    .ascii "Conseguiste a: Piyomon" ; ピヨモンが仲間になった
    .align 4

	.org 0x904 ; goes to next offset

    block059_str1:
    .ascii "Conseguiste a: Gabumon" ; ガブモンが仲間になった 
    .align 4

	.org 0x91C ; goes to next offset
	
    block060_str1:
    .ascii "Conseguiste a: Tentomon" ; テントモンが仲間になった
    .align 4

	.org 0x938 ; goes to next offset
	
    block061_str1:
    .ascii "Conseguiste a: Gomamon" ; ゴマモンが仲間になった
    .align 4

	.org 0x950 ; goes to next offset
	
    block062_str1:
    .ascii "Conseguiste a: Palmon" ; パルモンが仲間になった
    .align 4

	.org 0x968 ; goes to next offset
	
    block063_str1:
    .ascii "Conseguiste a: Patamon" ; パタモンが仲間になった 
	.align 4

	.org 0x980 ; goes to next offset
	
    block064_str1:
    .ascii "Conseguiste a: Protmon" ; プロットモンが仲間になった
    .align 4

	.org 0x99C ; goes to next offset
	
    block065_str1:
    .ascii "Conseguiste a: Veedramon" ; ブイドラモンが仲間になった
    .align 4

	.org 0x9B8 ; goes to next offset
	
    block066_str1:
    .ascii "Ataque doble exitoso, Agumon" ; ドッペルゲンガ―撃破成功！アグモンのＨＰとＡＴＴＣＫ＋１
    .align 4

	.org 0x9F4 ; goes to next offset
	
    block067_str1:
    .ascii "Ataque doble exitoso, Piyomon" ; ドッペルゲンガ―撃破成功！ピヨモンのＨＰとＡＴＴＣＫ＋１
    .align 4

	.org 0xA30 ; goes to next offset
	
    block068_str1:
    .ascii "Ataque doble exitoso, Gabumon" ; ドッペルゲンガ―撃破成功！ガブモンのＨＰとＡＴＴＣＫ＋１
    .align 4

	.org 0xA6C ; goes to next offset
	
    block069_str1:
    .ascii "Ataque doble exitoso, Tentomon" ; ドッペルゲンガ―撃破成功！テントモンのＨＰとＡＴＴＣＫ＋１
    .align 4

	.org 0xAA8 ; goes to next offset
	
    block070_str1:
    .ascii "Ataque doble exitoso, Gomamon" ; ドッペルゲンガ―撃破成功！ゴマモンのＨＰとＡＴＴＣＫ＋１
    .align 4

	.org 0xAE4 ; goes to next offset
	
    block071_str1:
    .ascii "Ataque doble exitoso, Palmon" ; ドッペルゲンガ―撃破成功！パルモンのＨＰとＡＴＴＣＫ＋１  
    .align 4

	.org 0xB20 ; goes to next offset
	
    block072_str1:
    .ascii "Ataque doble exitoso, Patamon" ; ドッペルゲンガ―撃破成功！パタモンのＨＰとＡＴＴＣＫ＋１
    .align 4

	.org 0xB5C ; goes to next offset
	
    block073_str1:
    .ascii "Ataque doble exitoso, Protmon" ; ドッペルゲンガ―撃破成功！プロットモンのＨＰとＡＴＴＣＫ＋１
    .align 4

	.org 0xB9C ; goes to next offset
	
    block074_str1:
    .ascii "Nivel Digi-Evo +1" ; 進化段階がアップした！   
    .align 4

	.org 0xBB4 ; goes to next offset
	
    block075_str1:
    .ascii "Area Clear" ; エリアクリア！
    .align 4

	.org 0xBC4 ; goes to next offset
	
    block076_str1:
    .ascii "Game Clear" ; ゲームクリア！
    .align 4

	.org 0xBD4 ; goes to next offset
	
    block077_str1:
    .ascii "Escapaste" ; 逃走成功！
    .align 4

	.org 0xBE0 ; goes to next offset
	
    block078_str1:
    .ascii "No Escapas" ; 逃走失敗！
    .align 4

	.org 0xBEC ; goes to next offset
	
    block079_str1:
    .ascii "No se encuentra oponente" ; 対戦相手が見つかりませんでした      
    .align 4

	.org 0xC0C ; goes to next offset
	
    block080_str1:
    .ascii "Pulsa ○" ; ○ボタンを押してください
    .align 4

	.org 0xC28 ; goes to next offset
	
    block081_str1:
    .ascii "Koromon Digi-Evo Agumon" ; コロモン進化―――！アグモン！！
    .align 4

	.org 0xC4C ; goes to next offset
	
    block082_str1:
    .ascii "Pyokomon Digi-Evo Piyomon" ; ピョコモン進化―――！ピヨモン！！
    .align 4

	.org 0xC70 ; goes to next offset
	
    block083_str1:
    .ascii "Tsunomon Digi-Evo Gabumon" ; ツノモン進化―――！ガブモン！！
    .align 4

	.org 0xC94 ; goes to next offset
	
    block084_str1:
    .ascii "Motimon Digi-Evo Tentomon" ; モチモン進化―――！テントモン！！  プカモン進化―――！ゴマモン！！    タネモン進化―――！パルモン！！    トコモン進化―――！パタモン！！    ニャロモン進化―――！プロットモン！！  アグモン進化―――！グレイモン！！  グレイモン進化―――！メタルグレイモン！！  メタルグレイモン進化―――！ウォーグレイモン！！    ウォーグレイモンとメタルガルルモン合体進化―――！オメガモン！！    ガブモン進化―――！ガルルモン！！  ガルルモン進化―――！ワーガルルモン！！    ワーガルルモン進化―――！メタルガルルモン！！  メタルガルルモンとウォーグレイモン合体進化―――！オメガモン！！    ピヨモン進化―――！バードラモン！！    バードラモン進化―――！ガルダモン！！  ガルダモン進化―――！ホウオウモン！！  テントモン進化―――！カブテリモン！！  カブテリモン進化―――！アトラーカブテリモン！！    アトラーカブテリモン進化―――！ヘラクルカブテリモン！！    ゴマモン進化―――！イッカクモン！！    イッカクモン進化―――！ズドモン！！    ズドモン進化―――！ヴァイクモン！！    パルモン進化―――！トゲモン！！    トゲモン進化―――！リリモン！！    リリモン進化―――！ロゼモン！！    パタモン進化―――！エンジェモン！！    エンジェモン進化―――！ホーリーエンジェモン！！    ホーリーエンジェモン進化―――！セラフィモン！！    プロットモン進化―――！テイルモン！！  テイルモン進化―――！エンジェウーモン！！  エンジェウーモン進化―――！オファニモン！！    
    .align 4

.close
