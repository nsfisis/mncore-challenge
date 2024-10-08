# 得点効率表

| 問題            | 自得点 | 差 |
|-----------------|--------|----|
| Mul 7           |     70 | 30 |
| Abs             |     80 | 20 |
| FAM 8           |     85 | 15 |
| FMul 2          |    100 |  0 |
| Lesseq          |    100 |  0 |
| Transpose       |     67 | 33 |
| Gather          |    100 |  0 |
| Square Sum      |    100 |  0 |
| Convert Endian  |    100 |  0 |
| Mod 3           |     48 | 52 |
| Matrix Square   |    100 |  0 |
| Contains        |     28 | 72 |
| Count Up        |     69 | 31 |
| Transpose MAB   |     47 | 53 |
| Inversion Small |     42 | 58 |
| Inversion       |     38 | 62 |

# 短縮テクニックメモ

* `imm` を使わない
* `nop` を使わない
* なるべく重ねる
    * 特に、ALU と MAU を同時に動かす
* 許される限り精度を落とす
* flat アドレス指定を使う
    * データ競合回避のためにアクセスを遅らせる (`$lr[128,128,128,0]` のようなパターン。必要なのは `$lr0` だけ)
* PE に broadcast されている場合
    * `j` 指定を使う
* `$t` を間接参照以外にも使う
* 2倍は `packbit`
* 入力と出力のスループットは絶対
* MAB/PE 等の出し分けに `$t` を使わずマスクを使う
* 2長語のフォワーディングの MSB 側だけを使う
