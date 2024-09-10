# 得点効率表

```
m = min{上位5名の点}
M = 自分の点
```

| 問題            | m   | M   | m-M |
|-----------------|-----|-----|-----|
| Mul 7           |  80 |  80 |   0 |
| Abs             |  94 |  68 |  26 |
| FAM 8           |  90 |  90 |   0 |
| FMul 2          | 100 |  85 |  15 |
| Lesseq          | 100 | 100 |   0 |
| Transpose       |  85 |  67 |  18 |
| Gather          | 100 | 100 |   0 |
| Square Sum      | 100 |  93 |   7 |
| Convert Endian  | 100 | 100 |   0 |
| Mod 3           |  70 |  48 |  22 |
| Matrix Square   | 100 |  92 |   8 |
| Contains        |  25 |  17 |   8 |
| Count Up        |  64 |  33 |  31 |
| Transpose MAB   |  69 |  51 |  18 |
| Inversion Small |  55 |  28 |  27 |
| Inversion       |  52 |  19 |  33 |

# 短縮テクニックメモ

* `imm` を使わない
* `nop` を使わない
* なるべく重ねる
    * 特に、ALU と MAU を同時に動かす
* 許される限り精度を落とす
* flat アドレス指定を使う
* PE に broadcast されている場合
    * `j` 指定を使う
* `$t` を間接参照以外にも使う
* 2倍は `packbit`
