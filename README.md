#Change Keyboard setting on your Windows.
レジストリを書き換えて日本語/英語キーボードの切り替えをするPowerShellスクリプトです。  

##Usage | 使い方
PowerShellを管理者権限で立ち上げた上で実行してください。  
スクリプトを実行後、Windowsを再起動すると指定したモードに切り替わります。  

- ./chgkbd.ps1 jp ... 日本語キーボード設定に切り替える時  
- ./chgkbd.ps1 en ... 英語キーボード設定に切り替える時  

オプションなしを含め上記以外の指定をすると、現在のレジストリの内容を表示して終了します。  

レジストリをいじっているのに特にエラー処理など入れていません。
何かあっても責任は取れませんので、それでもよければ使ってみてください。  

##作った背景
会社支給のWindowsノートブックが日本語106キー配列なんですが、自宅で使用しているMacは英語101キー配列なので**特にVimを使う時**非常に混乱します。
なので、コマンド一発でレジストリを書き換えて、日本語キーボードなのに英語キーボード配列にしてしまう（逆に何かあった時にはコマンド一発で元に戻す）ことができると幸せです。
というしょうもない理由で作りました。  

##License
This script has released under the MIT license.  
[http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT)
