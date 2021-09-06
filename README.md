# AsaMatrix
ArmorstandAnimator用の回転行列計算ライブラリ になる予定

## 機能

赤石愛様の AiMath（
https://github.com/Ai-Akaishi/AiMath
）が必要です．

ArmorstandAnimator（現在開発中）で使われるMinecraft用の回転行列計算ライブラリです．

#asa_matrix:matrix ... 防具立てのPose.Headを用いて回転行列を求めます．

#asa_matrix:rotate ... 親のWorldPos，子のLocalPosと，#asa_matrix:matrixで求めた回転行列を使って子のWorldPosを計算します．

## 使い方

ArmorstandAnimatorで勝手に使用しますが，手動で使う場合は以下の手順で大丈夫だと思います．scoreboardのobjectはすべて AsaMatrix です．

1. 親オブジェクトのWorldPosをそれぞれ #asa_parent_pos_x, #asa_parent_pos_y, #asa_parent_pos_z に代入します．
2. 子オブジェクトのLocalPos（親オブジェクトからの相対的位置）をそれぞれ #asa_child_pos_x, #asa_child_pos_y, #asa_child_pos_z に代入します．
3. execute as 親オブジェクト にて function #asa_matrix:matrix を実行します．
4. function #asa_matrix:rotate を実行します．
5. 子オブジェクトのPosに，#asa_child_pos_x, #asa_child_pos_y, #asa_child_pos_z を代入します．
