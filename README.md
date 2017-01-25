# aozora-ruby

[![Greenkeeper badge](https://badges.greenkeeper.io/hakatashi/aozora-ruby.svg)](https://greenkeeper.io/)

:stuck_out_tongue:青空記法のルビ(を拡張したもの)を他形式に変換する:stuck_out_tongue:

## フォーマット

### 青空記法

[青空文庫工作員作業マニュアル](http://www.aozora.gr.jp/annotation/etc.html#ruby)に詳しく載っています。

#### 基本

ルビを振りたい文字のあとに、`《》`で囲んだルビ文字を置いて、ルビを表現します。

直前のテキストの文字種から自動的にルビをふる範囲を識別します。

```
風の聖痕《スティグマ》
不幸《ハードラック》と踊《ダンス》っちまったんだよ……
```

```html
風の<ruby><rb>聖痕</rb><rp>（</rp><rtc><rt>スティグマ</rt></rtc><rp>）</rp></ruby>
<ruby><rb>不幸</rb><rp>（</rp><rtc><rt>ハードラック</rt></rtc><rp>）</rp></ruby>と<ruby><rb>踊</rb><rp>（</rp><rtc><rt>ダンス</rt></rtc><rp>）</rp></ruby>っちまったんだよ……
```

#### 明示的な範囲指定

ルビを振りたい文字を明示的に指定したい場合は、`｜`を使用します。

```
放課後｜四重奏《カルテット》
｜千の魔剣《サウザンド》と｜盾の乙女《イージス》
```

```html
放課後<ruby><rb>四重奏</rb><rp>（</rp><rtc><rt>カルテット</rt></rtc><rp>）</rp></ruby>
<ruby><rb>千の魔剣</rb><rp>（</rp><rtc><rt>サウザンド</rt></rtc><rp>）</rp></ruby>と<ruby><rb>盾の乙女</rb><rp>（</rp><rtc><rt>イージス</rt></rtc><rp>）</rp></ruby>
```

### 拡張記法

#### ASCII代替文字

`｜` の代わりに `|` を使用することができます。

```
閃烈の|神なる御手《ヘカトンケイル》
```

```html
閃烈の<ruby><rb>神なる御手</rb><rp>（</rp><rtc><rt>ヘカトンケイル</rt></rtc><rp>）</rp></ruby>
```

#### 文字種判別

ルビ範囲が明示的に指定されなかった場合、[UAX24 Unicode Script Property](http://unicode.org/reports/tr24/) で指定された文字種に従ってルビ範囲が判定されます。

そのため、一部の文字は青空記法とルビ範囲の判定が異なります。例えば、 `〆` (U+3006) は青空記法では漢字に分類されますが、拡張記法ではCommon(一般記号)に分類されます。

※ちなみにUnicodeには、記号ではなく漢字として扱われる `乄` (U+4E44) も収録されています。

#### エスケープ

`｜|《》\` の5字は特殊文字とし、テキスト中で使用する場合は `\` でエスケープします。

```
|\《名称未設定\》《ネイムレス・ニュービー》
```

```html
<ruby><rb>《名称未設定》</rb><rp>（</rp><rtc><rt>ネイムレス・ニュービー</rt></rtc><rp>）</rp></ruby>
```

#### モノルビ

ルビ文字を `｜` で区切ることによってモノルビを表現することができます。この場合、ルビを振りたい文字の範囲を明示的に指定する必要はありません。

```
空戦魔導士《ま|どう|し》候補生の教官
```

```html
空戦<ruby><rb>魔</rb><rb>導</rb><rb>士</rb><rp>（</rp><rtc><rt>ま</rt><rt>どう</rt><rt>し</rt></rtc><rp>）</rp></ruby>
```

#### 分割ルビ

モノルビでない分割ルビを記述する場合は、ルビを振りたい文字を `|` で区切ります。

```
|とある|魔術|の|禁書目録《とある|まじゅつ|の|インデックス》
```

```html
<ruby><rb>とある</rb><rb>魔術</rb><rb>の</rb><rb>禁書目録</rb><rp>（</rp><rtc><rt>とある</rt><rt>まじゅつ</rt><rt>の</rt><rt>インデックス</rt></rtc><rp>）</rp></ruby>
```

#### 複数のルビ文字

複数のルビ文字を使用したい場合は、 `《》` を複数回使用します。

```
|とある|科学|の|超電磁砲《とある|かがく|の|レールガン》《A Certain Scientific Railgun》
```

```html
<ruby><rb>とある</rb><rb>科学</rb><rb>の</rb><rb>超電磁砲</rb><rp>（</rp><rtc><rt>とある</rt><rt>かがく</rt><rt>の</rt><rt>レールガン</rt></rtc><rp>、</rp><rtc><rt>A Certain Scientific Railgun</rt></rtc><rp>）</rp></ruby>
```
