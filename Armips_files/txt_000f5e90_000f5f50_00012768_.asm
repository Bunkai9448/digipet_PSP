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
    .ascii "Repetir" ; なおす
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
    .ascii "Numero de victorias del digimon" ; デジモンの勝利数を見ることができます 
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
    .ascii "Estas en el area que parpadea" ; 点滅しているエリアが現在攻略中のエリアです
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
    .ascii "Recibiste Victoria segura, proxima batalla es victoria segura" ; Ｐ－ドラッグを手に入れた！次のバトルで敵を確実に倒せます
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
    .ascii "Motimon Digi-Evo Tentomon" ; モチモン進化―――！テントモン！！ 
    .align 4

	.org 0xCB8 ; goes to next offset
	
    block085_str1:
    .ascii "Pukamon Digi-Evo Gomamon" ; プカモン進化―――！ゴマモン！！
    .align 4

	.org 0xCDC ; goes to next offset
	
    block086_str1:
    .ascii "Tanemon Digi-Evo Palmon" ; タネモン進化―――！パルモン！！
    .align 4

	.org 0xD00 ; goes to next offset
	
    block087_str1:
    .ascii "Tokomon Digi-Evo Patamon" ; トコモン進化―――！パタモン！！
    .align 4

	.org 0xD24 ; goes to next offset
	
    block088_str1:
    .ascii "Nyaromon Digi-Evo Protmon" ; ニャロモン進化―――！プロットモン！！
    .align 4

	.org 0xD4C ; goes to next offset
	
    block089_str1:
    .ascii "Agumon Digi-Evo Greymon" ; アグモン進化―――！グレイモン！！ 
    .align 4

	.org 0xD70 ; goes to next offset
	
    block090_str1:
    .ascii "Greymon Digi-Evo MetalGreymon" ; グレイモン進化―――！メタルグレイモン！！
    .align 4

	.org 0xD9C ; goes to next offset
	
    block091_str1:
    .ascii "MetalGreymon Digi-Evo WarGreymon" ; メタルグレイモン進化―――！ウォーグレイモン！！
    .align 4

	.org 0xDD0 ; goes to next offset
	
    block092_str1:
    .ascii "WarGreymon & MetalGarurumon Digi-Evo Omegamon" ; ウォーグレイモンとメタルガルルモン合体進化―――！オメガモン！！
    .align 4

	.org 0xE14 ; goes to next offset
	
    block093_str1:
    .ascii "Gabumon Digi-Evo Garurumon" ; ガブモン進化―――！ガルルモン！！
    .align 4

	.org 0xE38 ; goes to next offset
	
    block094_str1:
    .ascii "Garurumon Digi-Evo " ; ガルルモン進化―――！ワーガルルモン！！     
    .align 4

	.org 0xE64 ; goes to next offset
	
    block095_str1:
    .ascii "WereGarurumon Digi-Evo MetalGarurumon" ; ワーガルルモン進化―――！メタルガルルモン！！
    .align 4

	.org 0xE94 ; goes to next offset
	
    block096_str1:
    .ascii "MetalGarurumon & WarGreymon Digi-Evo Omegamon" ; メタルガルルモンとウォーグレイモン合体進化―――！オメガモン！！
    .align 4

	.org 0xED8 ; goes to next offset
	
    block097_str1:
    .ascii "Piyomon Digi-Evo Birdramon" ; ピヨモン進化―――！バードラモン！！
    .align 4

	.org 0xF00 ; goes to next offset
	
    block098_str1:
    .ascii "Birdramon Digi-Evo Garudamon" ; バードラモン進化―――！ガルダモン！！
    .align 4

	.org 0xF28 ; goes to next offset
	
    block099_str1:
    .ascii "Garudamon Digi-Evo Hououmon" ; ガルダモン進化―――！ホウオウモン！！  
    .align 4

	.org 0xF50 ; goes to next offset
	
    block100_str1:
    .ascii "Tentomon Digi-Evo Kabuterimon" ; テントモン進化―――！カブテリモン！！
    .align 4

	.org 0xF78 ; goes to next offset
	
    block101_str1:
    .ascii "Kabuterimon Digi-Evo AtlurKabuterimon" ; カブテリモン進化―――！アトラーカブテリモン！！
    .align 4

	.org 0xFAC ; goes to next offset
	
    block102_str1:
    .ascii "AtlurKabuterimon Digi-Evo HeraclesKabuterimon" ; アトラーカブテリモン進化―――！ヘラクルカブテリモン！！
    .align 4

	.org 0xFE8 ; goes to next offset
	
    block103_str1:
    .ascii "Gomamon Digi-Evo Ikkakumon" ; ゴマモン進化―――！イッカクモン！！
    .align 4

	.org 0x1010 ; goes to next offset
	
    block104_str1:
    .ascii "Ikkakumon Digi-Evo Zudomon" ; イッカクモン進化―――！ズドモン！！
    .align 4

	.org 0x1038 ; goes to next offset
	
    block105_str1:
    .ascii "Zudomon Digi-Evo Vikemon" ; ズドモン進化―――！ヴァイクモン！！
    .align 4

	.org 0x1060 ; goes to next offset
	
    block106_str1:
    .ascii "Palmon Digi-Evo Togemon" ; パルモン進化―――！トゲモン！！
    .align 4

	.org 0x1084 ; goes to next offset
	
    block107_str1:
    .ascii "Togemon Digi-Evo Lilimon" ; トゲモン進化―――！リリモン！！
    .align 4

	.org 0x10A8 ; goes to next offset
	
    block108_str1:
    .ascii "Lilimon Digi-Evo Rosemon" ; リリモン進化―――！ロゼモン！！
    .align 4

	.org 0x10CC ; goes to next offset
	
    block109_str1:
    .ascii "Patamon Digi-Evo Angemon" ; パタモン進化―――！エンジェモン！！
    .align 4

	.org 0x10F4 ; goes to next offset
	
    block110_str1:
    .ascii "Angemon Digi-Evo HolyAngemon" ; エンジェモン進化―――！ホーリーエンジェモン！！
    .align 4

	.org 0x1128 ; goes to next offset
	
    block111_str1:
    .ascii "HolyAngemon Digi-Evo Seraphimon" ; ホーリーエンジェモン進化―――！セラフィモン！！
    .align 4

	.org 0x115C ; goes to next offset
	
    block112_str1:
    .ascii "Plotmon Digi-Evo Tailmon" ; プロットモン進化―――！テイルモン！！    
    .align 4

	.org 0x1184 ; goes to next offset
	
    block113_str1:
    .ascii "Tailmon Digi-Evo Angewomon" ; テイルモン進化―――！エンジェウーモン！！
    .align 4

	.org 0x11B0 ; goes to next offset
	
    block114_str1:
    .ascii "Angewomon Digi-Evo Ophanimon" ; エンジェウーモン進化―――！オファニモン！！
    .align 4

	.org 0x11E0 ; goes to next offset	

    block115_str1:
    .ascii "De 9PM a 8AM no se puede buscar, solo recuperar DP" ; ＰＭ９：００～ＡＭ８：００の間は探索できずＤＰの回復のみ可能です
    .align 4

	.org 0x1224 ; goes to next offset	

    block116_str1:
    .ascii "Elige el digimon a sacar" ; 切り替える仲間デジモンを選んでください
    .align 4

	; In a different text block, SAVE dialogue
		
	.org 0x1388 ; goes to next offset
	
    block117_str1:
    .ascii "Datos nuevos" ; 新規作成データ
    .align 4

	.org 0x1398 ; goes to next offset

    block118_str1:
    .ascii "?Continuar con datos nuevos?" ; 新規に作成します。よろしいですか？    

	.org 0x13BC ; goes to next offset
	
    block119_str1:
    .ascii "?Sobrescribir los anteriores?" ; データを上書きします。よろしいですか？
    .align 4

	.org 0x13EC ; goes to next offset
	
    block120_str1:
    .ascii "No hay suficiente espacio en memoria, se necesitan %s mas" ; 空き容量が不足しています。セーブするには空き容量があと %s以上必要です。
    .align 4

	.org 0x1438 ; goes to next offset
	
    block121_str1:
    .ascii "Guardado completado" ; セーブが完了しました。
    .align 4

	.org 0x1450 ; goes to next offset
	
    block122_str1:
    .ascii "Proceso interrumpido" ; 処理が中断されました。
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
    .ascii "Agumon" ; アグモン
    .align 4

	.org 0x15BC ; goes to next offset
	
    block128_str1:
    .ascii "Piyomon" ; ピヨモン  
    .align 4

	.org 0x15C8 ; goes to next offset
	
    block129_str1:
    .ascii "Gabumon" ; ガブモン
    .align 4

	.org 0x15D4 ; goes to next offset
	
    block130_str1:
    .ascii "Tentomon" ; テントモン
    .align 4

	.org 0x15E0 ; goes to next offset
	
    block131_str1:
    .ascii "Gomamon" ; ゴマモン
    .align 4

	.org 0x15EC ; goes to next offset
	
    block132_str1:
    .ascii "Palmon" ; パルモン
    .align 4

	.org 0x15F8 ; goes to next offset
	
    block133_str1:
    .ascii "Patamon" ; パタモン
    .align 4

	.org 0x1604 ; goes to next offset
	
    block134_str1:
    .ascii "Plotmon" ; プロットモン
    .align 4

	.org 0x1614 ; goes to next offset
	
    block135_str1:
    .ascii "Greymon" ; グレイモン
    .align 4

	.org 0x1620 ; goes to next offset
	
    block136_str1:
    .ascii "Garurumon" ; ガルルモン
    .align 4

	.org 0x162C ; goes to next offset
	
    block137_str1:
    .ascii "Birdramon" ; バードラモン
    .align 4

	.org 0x163C ; goes to next offset
	
    block138_str1:
    .ascii "Togemon" ; トゲモン
    .align 4

	.org 0x1648 ; goes to next offset
	
    block139_str1:
    .ascii "Kabuterimon" ; カブテリモン
    .align 4

	.org 0x1658 ; goes to next offset
	
    block140_str1:
    .ascii "Ikkakumon" ; イッカクモン
    .align 4

	.org 0x1668 ; goes to next offset
	
    block141_str1:
    .ascii "Angemon" ; エンジェモン
    .align 4

	.org 0x1678 ; goes to next offset
	
    block142_str1:
    .ascii "Tailmon" ; テイルモン
    .align 4

	.org 0x1684 ; goes to next offset
	
    block143_str1:
    .ascii "MetalGreymon" ; メタルグレイモン
    .align 4

	.org 0x1698 ; goes to next offset
	
    block144_str1:
    .ascii "WereGarurumon" ; ワーガルルモン
    .align 4

	.org 0x16A8 ; goes to next offset
	
    block145_str1:
    .ascii "Parrotmon" ; パロットモン
    .align 4

	.org 0x16B8 ; goes to next offset
	
    block146_str1:
    .ascii "Hada floral" ; 花の妖精
    .align 4

	.org 0x16C4 ; goes to next offset
	
    block147_str1:
    .ascii "AtlurKabuterimon" ; アトラーカブテリモン
    .align 4

	.org 0x16DC ; goes to next offset
	
    block148_str1:
    .ascii "Zudomon" ; ズドモン
    .align 4

	.org 0x16E8 ; goes to next offset
	
    block149_str1:
    .ascii "HolyAngemon" ; ホーリーエンジェモン
    .align 4

	.org 0x1700 ; goes to next offset
	
    block150_str1:
    .ascii "Angewomon" ; エンジェウーモン
    .align 4

	.org 0x1714 ; goes to next offset
	
    block151_str1:
    .ascii "WarGreymon" ; ウォーグレイモン
    .align 4

	.org 0x1728 ; goes to next offset
	
    block152_str1:
    .ascii "MetalGarurumon" ; メタルガルルモン
    .align 4

	.org 0x173C ; goes to next offset
	
    block153_str1:
    .ascii "Hououmon" ; ホウオウモン
    .align 4

	.org 0x174C ; goes to next offset
	
    block154_str1:
    .ascii "Rosemon" ; ロゼモン
    .align 4

	.org 0x1758 ; goes to next offset
	
    block155_str1:
    .ascii "HeraclesKabuterimon" ; ヘラクルカブテリモン
    .align 4

	.org 0x1770 ; goes to next offset
	
    block156_str1:
    .ascii "Vikemon" ; ヴァイクモン
    .align 4

	.org 0x1780 ; goes to next offset
	
    block157_str1:
    .ascii "Seraphimon" ; セラフィモン
    .align 4

	.org 0x1790 ; goes to next offset
	
    block158_str1:
    .ascii "Ophanimon" ; オファニモン
    .align 4

	.org 0x17A0 ; goes to next offset
	
    block159_str1:
    .ascii "Omegamon(Agumon)" ; オメガモン（アグモン）
    .align 4

	.org 0x17B8 ; goes to next offset
	
    block160_str1:
    .ascii "Omegamon(Gabumon)" ; オメガモン(ガブモン）
    .align 4

	.org 0x17D0 ; goes to next offset
	
    block161_str1:
    .ascii "Veedramon" ; ブイドラモン
    .align 4

	.org 0x17E0 ; goes to next offset
	
    block162_str1:
    .ascii "Kuwagamon" ; クワガーモン   
    .align 4

	.org 0x17F0 ; goes to next offset
	
    block163_str1:
    .ascii "Devimon" ; デビモン
    .align 4

	.org 0x17FC ; goes to next offset
	
    block164_str1:
    .ascii "Etemon" ; エテモン
    .align 4

	.org 0x1808 ; goes to next offset
	
    block165_str1:
    .ascii "MetalTyranomon" ; メタルティラノモン
    .align 4

	.org 0x181C ; goes to next offset
	
    block166_str1:
    .ascii "MetalSeadramon" ; メタルシードラモン
    .align 4

	.org 0x1830 ; goes to next offset
	
    block167_str1:
    .ascii "Megadramon" ; メガドラモン
    .align 4

	.org 0x1840 ; goes to next offset
	
    block168_str1:
    .ascii "Mugendramon" ; ムゲンドラモン
    .align 4

	.org 0x1850 ; goes to next offset
	
    block169_str1:
    .ascii "Apocalymon" ; アポカリモン
    .align 4

	.org 0x1860 ; goes to next offset
	
    block170_str1:
    .ascii "Kunemon" ; クネモン
    .align 4

	.org 0x186C ; goes to next offset
	
    block171_str1:
    .ascii "Gizamon" ; ギザモン
    .align 4

	.org 0x1878 ; goes to next offset
	
    block172_str1:
    .ascii "Gazimon" ; ガジモン
    .align 4

	.org 0x1884 ; goes to next offset
	
    block173_str1:
    .ascii "Bakemon" ; バケモン
    .align 4

	.org 0x1890 ; goes to next offset
	
    block174_str1:
    .ascii "Ogremon" ; オーガモン 
    .align 4

	.org 0x189C ; goes to next offset
	
    block175_str1:
    .ascii "Sukamon" ; スカモン
    .align 4

	.org 0x18A8 ; goes to next offset
	
    block176_str1:
    .ascii "Shellmon" ; シェルモン
    .align 4

	.org 0x18B4 ; goes to next offset
	
    block177_str1:
    .ascii "DarkTyranomon" ; ダークティラノモン
    .align 4

	.org 0x18C8 ; goes to next offset
	
    block178_str1:
    .ascii "Gekomon" ; ゲコモン
    .align 4

	.org 0x18D4 ; goes to next offset
	
    block179_str1:
    .ascii "Airdramon" ; エアドラモン
    .align 4

	.org 0x18E4 ; goes to next offset
	
    block180_str1:
    .ascii "Agumon (Tag)" ; アグモン（ドッペル）
    .align 4

	.org 0x18FC ; goes to next offset
	
    block181_str1:
    .ascii "Piyomon (Tag)" ; ピヨモン（ドッペル）
    .align 4

	.org 0x1914 ; goes to next offset
	
    block182_str1:
    .ascii "Gabumon (Tag)" ; ガブモン（ドッペル）
    .align 4

	.org 0x192C ; goes to next offset
	
    block183_str1:
    .ascii "Tentomon (Tag)" ; テントモン（ドッペル）
    .align 4

	.org 0x1944 ; goes to next offset
	
    block184_str1:
    .ascii "Gomamon (Tag)" ; ゴマモン（ドッペル）
    .align 4

	.org 0x195C ; goes to next offset
	
    block185_str1:
    .ascii "Palmon (Tag)" ; パルモン（ドッペル）
    .align 4

	.org 0x1974 ; goes to next offset
	
    block186_str1:
    .ascii "Patamon (Tag)" ; パタモン（ドッペル）
    .align 4

	.org 0x198C ; goes to next offset
	
    block187_str1:
    .ascii "Plotmon (Tag)" ; プロットモン（ドッペル）
    .align 4

	; In a different text block, more Commands

	.org 0x1D9C ; goes to next offset
	
    block188_str1:
    .ascii "Wait" ; 待機
    .align 4

	.org 0x1DA4 ; goes to next offset
	
    block189_str1:
    .ascii "Stop" ; 停止
    .align 4

	.org 0x1DAC ; goes to next offset
	
    block190_str1:
    .ascii "Walk" ; 歩き
    .align 4

	.org 0x1DB4 ; goes to next offset
	
    block191_str1:
    .ascii "Joy" ; 喜び
    .align 4

	.org 0x1DBC ; goes to next offset
	
    block192_str1:
    .ascii "Attack" ; 攻撃
    .align 4
	
	.org 0x1DC4 ; goes to next offset
	
    block193_str1:
    .ascii "Damage" ; ダメージ
    .align 4	
	
	.org 0x1DD0 ; goes to next offset
	
    block194_str1:
    .ascii "Derrotas" ; バトル敗退
    .align 4	

	.org 0x1DDC ; goes to next offset
	
    block195_str1:
    .ascii "heridas" ; 怪我
    .align 4
	
	.org 0x1DE4 ; goes to next offset
	
    block196_str1:
    .ascii "Evo" ; 進化
    .align 4	

	.org 0x1DEC ; goes to next offset
	
    block197_str1:
    .ascii "HELP" ; HELP
    .align 4

	.org 0x1DF4 ; goes to next offset
	
    block198_str1:
    .ascii "Link-Battle" ; 通信攻撃
    .align 4
	
	.org 0x1E00 ; goes to next offset
	
    block199_str1:
    .ascii "Link-Wins" ; 通信勝利
    .align 4	

	.org 0x1E0C ; goes to next offset
	
    block200_str1:
    .ascii "Wait4opponent" ; 敵バトル待機
    .align 4	

	.org 0x1E1C ; goes to next offset
	
    block201_str1:
    .ascii "Digi-Evo (egg>baby)" ; 進化（幼年期→成長期）
    .align 4	

	.org 0x1E34 ; goes to next offset
	
    block202_str1:
    .ascii "Retro (Evo>baby)" ; 退化（進化→成長期）
    .align 4

	.org 0x1E4C ; goes to next offset
	
    block203_str1:
    .ascii "Dormir" ; 睡眠
    .align 4

	.org 0x1E54 ; goes to next offset
	
    block204_str1:
    .ascii "Comer carne" ; 肉たべる
    .align 4

	.org 0x1E60 ; goes to next offset
	
    block205_str1:
    .ascii "Extra" ; おまけ
    .align 4	

.close
