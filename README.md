# angle_distance_Ruby
2つ点の距離と角度を求めるPointクラスです。

Rubyを題材にオブジェクト指向を習う職業訓練中に
2点の距離を求めるプログラムを作る実習がありました。

それを発展させまして、角度を求めるプログラムを作成しました。
プログラム以上に数学の知識の分野で苦戦しました・・・。
アークタンジェントという単語を聞いたのは
中学生以来かも知れません。

ただ、こういった未知の領域に向かっていくのは、
分野を問わず楽しいです。
思い通りに動いた一瞬が楽しくて、日々試行錯誤しています。

方法は以下の通りです。

※距離の場合
・座標1と2を斜辺として直角三角形を作った場合の、
斜辺以外の2辺の長さを求める。
　①座標1と2の、x,yの値の差をそれぞれ計算する。（自作のminusメソッド）
　マイナスになる場合も考え、absメソッドで絶対値に書き換える。
　②三平方の定理（斜辺の2乗は，他の辺２つをそれぞれ2乗した数の和に等しい）に従い、
べき乗（**メソッド）、平方根（Math.sqrtメソッド）を入れてメソッドを完成させる。

※角度の場合
・座標1と2を斜辺として直角三角形を作った場合の、
斜辺以外の2辺の長さを求める。
①長辺、短辺を区別する必要があるので、
長辺が第1引数、短辺が第2引数になるように順番を変える。（自作のminusメソッド）
②「アークタンジェント*長辺/短辺=ラジアル値」の公式に従い、
Math.atanメソッドに①で計算した値を渡す。
③更に、②の値を円周率（定数Math::PI）で割り、角度を求める。

※自分なりに調べましたが、細かいニュアンスは異なるかも知れません。
ご了承ください。

