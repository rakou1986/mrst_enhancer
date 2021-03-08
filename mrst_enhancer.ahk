; ----------------------------------------------------------------
; | mrst_enhancer.ahk |
; ---------------------
; AndApp版メルストをもう少し便利にするために,
; autohotkey.exeでホットキーを追加するための、ホットキー記述ファイル.
;
; Released under the:
; ----
; MIT License
; 
; Copyright (c) 2017 @mrst_dummy
; Copyright (c) 2019 @rakousan (Fork)
; 
; Permission is hereby granted, free of charge, to any person obtaining a copy
; of this software and associated documentation files (the "Software"), to deal
; in the Software without restriction, including without limitation the rights
; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
; copies of the Software, and to permit persons to whom the Software is
; furnished to do so, subject to the following conditions:
; 
; The above copyright notice and this permission notice shall be included in all
; copies or substantial portions of the Software.
; 
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
; SOFTWARE.
; ----
;
; 編集時の注意:
;   ; によるコメント末尾が . といったascii文字でなければ,
;   改行コードが見落とされて正しく動作しないことがある.
;
; 追加されるホットキー:
;   0: autohotkey.exeを終了.
;   2: このファイルのリロード（編集用）.
;   5: 倍速OFF.
;   6: 倍速ON.
;   asdfg: Push to 刻み（押して後退、離して前進）.
;   Space: 癒力ボタン、救援ボタン.
;   z: 救援グループセレクタ下げ.
;   x: 救援グループセレクタ上げ.
;   c: 救援長押し.
;   u: シード5発動（hが動作しなかったのでuへ移動した）.
;   v: 刻み5.
; ----------------------------------------------------------------

#UseHook
#InstallKeybdHook

#IfWinActive ahk_exe mercstoria.exe
CoordMode, Mouse, Client

; autohotkey.exeを終了.
@::
  ExitApp

; このファイルのリロード（編集用）.
0::
  Reload
  return

; 倍速OFF.
5::
  Click 1120, 470
  return

; 倍速ON.
6::
  Click 1120, 470
  Sleep 70
  Click 1120, 470
  return

7::
  Click 1120, 470
  Sleep 70
  Click 1120, 470
  return

; Push to 刻み.
;~a up::
;  Sleep, 20
;  Send, a
;  return
;~s up::
;  Sleep, 100
;  Send, s
;  return
;~d up::
;  Sleep, 100
;  Send, d
;  return
;~f up::
;  Sleep, 100
;  Send, f
;  return
;~g up::
;  Sleep, 100
;  Send, g
;  return

; 癒力ボタン.
Space::
  Click 1050, 600
  return

; 救援グループセレクタ下げ.
z::
  Sleep 50
  MouseClickDrag, LEFT, 1150, 580, 1150, 650
  return

; 救援グループセレクタ上げ.
x::
  Sleep 50
  MouseClickDrag, LEFT, 1150, 650, 1150, 580
  return

; シード5発動.
u::
  Send y
  Sleep 300
  ;Send qwert
  Send qwert
  Sleep 300
  Send y
  return

i::
  Send y
  Sleep 300
  ;Send qwert
  Send qwert
  sleep 6200
  Send qwert
  sleep 6200
  Send qwert
  sleep 6200
  Send qwert
  sleep 6200
  Send qwert
  Sleep 300
  Send y
  return
; 刻み5.
v::
  Send asdfg
  Sleep 35
  Send asdfg
  return

; レイド協力.
1::
  click 160, 80 ; stop button.
  return
2::
  click 900, 570 ; Tettai button.
  return
3::
  click 800, 520 ; yes button.
  return
4::
  click 620, 520 ; ok button.
  return
j::
  click 1100, 670 ; open log
  return
k::
  Click 1050, 200 ; Kyouryoku above
  return
l::
  Click 1050, 410 ; Kyouryoku below
  return
n::
  click 200, 250 ; normal
  return
m::
  click 570, 320 ; very hard
  return
,::
  click 850, 550 ; Quest start
  return
.::
  click 400, 540 ; syutugeki button
  return

; 救援長押し.
;c::
;  Click 1050, 600, D
;  Loop{
;    GetKeyState, state, c, P
;    If state = U 
;      break
;    Sleep 50
;  }
;  return

;c up::
;  Sleep 100
;  Click 1050, 600, U
;  return

#IfWinActive
