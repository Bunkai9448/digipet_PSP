.psp
.create "ID00033" , 0x0

; header

    .ascii "TXTD"    ; signature
    .word 0x01    ; version
    .word 0x1D    ; string count
    .word 0x00    ; unknown, PADDING?

	; String blocks offsets
    .word 0x84, 0x0109, 0x017C, 0x01A9, 0x01E2, 0x022F    
    .word 0x0244, 0x026B, 0x0270, 0x027B, 0x0286, 0x0291
    .word 0x02B0, 0x02C3, 0x02FC, 0x030D, 0x031E, 0x032B   
    .word 0x033C, 0x0348, 0x0352, 0x0361, 0x0376, 0x0388
    .word 0x0396, 0x03A1, 0x03CF, 0x0404, 0x041A
	
; string data
	.loadtable "Font_Esp.tbl"


    block001_str1:
    .string "No se detecta tarjeta." ; 記録メディアを検出することができませんでした。
    .align 4

	.byte 0x0A ; Control code for separating different strings

    block001_str2:
    .string "Se requieren %dKB de espacio en memoria para este juego." ; このゲームのデータをセーブするには空き容量が%dKB以上の記録メディアが必要です。
    .align 4

	.org 0x0109 ; goes to next offset

    block002_str1:
    .string "No hay suficiente espacio en memoria." ; 記録メディアの空き容量が不足しています。
    .align 4

	.byte 0x0A ; Control code for separating different strings
	
    block002_str2:
    .string "Para guardar se necesitan aun %dKB." ; このゲームのデータをセーブするには空き容量があと%dKB以上必要です。
    .align 4	
	
	.org 0x017C ; goes to next offset	
	
    block003_str1:
    .string "¿Quieres borrar archivos y hacer espacio?" ; 記録メディアから不要なデータを削除しますか？
    .align 4	

	.org 0x01A9 ; goes to next offset

    block004_str1:
    .string "Se ha cancelado el borrado."; データの削除をキャンセルしました。
    .align 4

	.byte 0x0A ; Control code for separating different strings
	
    block004_str2:
    .string "Guardando."; セーブに移行します。
    .align 4	

	.org 0x01E2 ; goes to next offset

    block005_str1:
    .string "El borrado de memoria se ha detenido." ;  データの削除が中断されました。 
    .align 4

	.byte 0x0A ; Control code for separating different strings
	
    block005_str2:
    .string "¿Quieres borrar datos no deseados?" ;  記録メディアから不要なデータを削除しますか？
    .align 4	
	
	.org 0x022F ; goes to next offset
	
    block006_str1:
    .string "Guardando." ; セーブに移行します。
    .align 4	

	.org 0x0244 ; goes to next offset

    block007_str1:
    .string "Tiempo de juego: %2dh %2dmin %2ds." ; プレイ時間 %2d時間%2d分%2d秒
    .align 4

	.org 0x026B ; goes to next offset

    block008_str1:
    .string "OK"; ＯＫ 
    .align 4

	.org 0x0270 ; goes to next offset
	
    block009_str1:
    .string "Cancelar" ; キャンセル 
    .align 4	

	.org 0x027B ; goes to next offset

    block010_str1:
    .string "Empezar" ; はじめから 
    .align 4

	.org 0x0286 ; goes to next offset

    block011_str1:
    .string "Continuar" ; つづきから
    .align 4

	.org 0x0291 ; goes to next offset
	
    block012_str1:
    .string "Digivice Ver. Portable." ; デジヴァイスVer.Portable
    .align 4

	.org 0x02B0 ; goes to next offset

    block013_str1:
    .string "Datos guardados." ; セーブデータ
    .align 4

	.org 0x02C3 ; goes to next offset

    block014_str1:
    .string "Digivice Ver. Portable: Datos guardos." ; デジヴァイスVer.Portableのセーブデータです。 
    .align 4

	.org 0x02FC ; goes to next offset
	
    block015_str1:
    .string "Ed. Greymon" ; グレイモンカラー 
    .align 4	

	.org 0x030D ; goes to next offset

    block016_str1:
    .string "  Ed. Garurumon" ; ガルルモンカラー
    .align 4

	.org 0x031E ; goes to next offset

    block017_str1:
    .string "Ed. Anime" ; アニメカラー 
    .align 4

	.org 0x032B ; goes to next offset
	
    block018_str1:
    .string "Ed. Tailmon" ; テイルモンカラー
    .align 4	

	.org 0x033C ; goes to next offset
	
    block019_str1:
    .string "Ed. Normal" ; ノーマルカラー 
    .align 4				

	.org 0x0348 ; goes to next offset

    block020_str1:
    .string "Guardar" ; セーブ 
    .align 4

	.org 0x0352 ; goes to next offset

    block021_str1:
    .string "Cambiar ed." ; カラーチェンジ 
    .align 4

	.org 0x0361 ; goes to next offset
	
    block022_str1:
    .string "Batalla por wifi: ON" ; 通信バトル設定：有効
    .align 4

	.org 0x0376 ; goes to next offset

    block023_str1:
    .string "¿Guardar?" ; セーブしますか？
    .align 4

	.org 0x0388 ; goes to next offset

    block024_str1:
    .string "¡Guardando!" ; セーブ中！
    .align 4

	.org 0x0396 ; goes to next offset
	
    block025_str1:
    .string "Guardado." ; セーブ完了 
    .align 4	

	.org 0x03A1 ; goes to next offset

    block026_str1:
    .string "Se ha cancelado el guardado." ; セーブが中断されました。
    .align 4

	.byte 0x0A ; Control code for separating different strings

    block026_str2:
    .string "¿Reintentar?" ; リトライしますか？
    .align 4

	.org 0x03CF ; goes to next offset

    block027_str1:
    .string "Batalla vs PNJ: OFF" ; ＮＰＣ対戦設定：無効
    .align 4

	.byte 0x0A ; Control code for separating different strings

    block027_str2:
    .string "¿Activar batalla vs PNJ?" ; ＮＰＣ対戦を有効にしますか？
    .align 4

	.org 0x0404 ; goes to next offset
	
    block028_str1:
    .string "Batalla por wifi: OFF" ; 通信バトル設定：無効 
    .align 4	

	.byte 0x0A ; Control code for separating different strings

    block028_str2:
    .string "Batalla vs PNJ: ON" ; ＮＰＣ対戦設定：有効
    .align 4

	.org 0x041A ; goes to next offset

    block029_str1:
    .string "¿Desactivar batalla vs PNJ?" ; ＮＰＣ対戦を無効にしますか？
    .align 4
	
.close