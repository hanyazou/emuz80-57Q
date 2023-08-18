アクセスいただきましてありがとうございます。

電脳伝説さん作 EMUZ80
奥江さん作 MEZ80RAM のアイデアをいただき
48PINのPIC18F57Q43を使って機能拡張した基板と
ファームウエアです

Z80のソフトは電脳伝説さん作 Grantz BASIC for 8080を
そのまま流用させていただいています。
そのためオリジナルemuz80に対して
シリアルポートのステータス（IOアドレス01）ビット0と1が
反転しています点ご留意ください。

上記実装によりSBC8080データパックのソフトがそのまま動作します。

変更履歴
2023 Apr. 16 初期バージョン
2023 Apr. 27 ver.0416 基板上に発振回路追加

配布ファイル
emuz80_57Q_0416.X.zip MPLabXプロジェクトファイル
　Z80クロックは6MHｚをPIC供給としてビルドしています
57Q-0416.zip 基板設計ガーバーデータ
　私がJLCPCBへの発注に使ったデータそのものです、

emuz80_57Q_0416_sch.pdf 基板設計に用いた回路図です
正しいお作法を知らず素人仕事です、種々不行き届きご容赦ください

ver. 0416変更・修正点
・発振回路追加
・未使用のZ80NMIプルアップ追加
・DCジャック位置変更
・ファームウエアのIO処理をアセンブラで書き直し（効果は測定限界以下でした・・）

既知の要改善点
・クロック線プルアップ無し
 プルアップ無しでも19.66MHzは正常動作しましたが
 20MHzでは不安定でした。
 試しに330Ωでプルアップしたところ安定しました。

製作にあたり、以下サイトの情報を引用・参考にさせていただいています

電脳伝説さん作 EMUZ80 GrantzBASIC for SBC8080
https://github.com/vintagechips/emuz80
http://www.amy.hi-ho.ne.jp/officetetsu/storage/sbc8080_datapack.zip

奥江さん作 MEZ80RAM(拡張基板設計) SuperMEZ80(ファームウエア) EMUZ80-8085(割り込み手法)
https://github.com/satoshiokue/MEZ80RAM
https://github.com/satoshiokue/SuperMEZ80
https://github.com/satoshiokue/EMUZ80-8085

本ソースとHEXはGPLに基づきご自由に配布、改変、再配布いただいて構いません。
引用元のファイルに関してはそれぞれの作者の宣言に従ってください。
