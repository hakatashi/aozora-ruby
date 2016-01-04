module.exports =

  basic:

    area-detection:

      * title: 'Basic one-by-one ruby'
        plain: '河童《かっぱ》'
        encoded: '''
          ruby
            rb 河童
            rp （
            rtc
              rt かっぱ
            rp ）
        '''

      * title: 'Auto-detection of rb text (Kanji)'
        plain: '風の聖痕《スティグマ》'
        encoded: '''
          | 風の
          ruby
            rb 聖痕
            rp （
            rtc
              rt スティグマ
            rp ）
        '''

      * title: 'Auto-detection of rb text (Kanji with LF)'
        plain: '贖罪《しょくざい》の街\n断罪《だんざい》のマリア'
        encoded: '''
          ruby
            rb 贖罪
            rp （
            rtc
              rt しょくざい
            rp ）
          | の街
          = '\n'
          ruby
            rb 断罪
            rp （
            rtc
              rt だんざい
            rp ）
          | のマリア
        '''

      * title: 'Auto-detection of rb text (Kanji with CRLF)'
        plain: '贖罪《しょくざい》の街\r\n断罪《だんざい》のマリア'
        encoded: '''
          ruby
            rb 贖罪
            rp （
            rtc
              rt しょくざい
            rp ）
          | の街
          = '\r\n'
          ruby
            rb 断罪
            rp （
            rtc
              rt だんざい
            rp ）
          | のマリア
        '''

      * title: 'Auto-detection of rb text (Katakana)'
        plain: '絶品モンブラン《もんぶらん》'
        encoded: '''
          | 絶品
          ruby
            rb モンブラン
            rp （
            rtc
              rt もんぶらん
            rp ）
        '''

      * title: 'Auto-detection of rb text (Hiragana)'
        plain: '絶品なめろう《ナメロー》'
        encoded: '''
          | 絶品
          ruby
            rb なめろう
            rp （
            rtc
              rt ナメロー
            rp ）
        '''

      * title: 'Auto-detection of rb text (Katakana with long vowel)'
        plain: '絶品チョコレート《ちょこれえと》とクッキー《くっきい》'
        encoded: '''
          | 絶品
          ruby
            rb チョコレート
            rp （
            rtc
              rt ちょこれえと
            rp ）
          | と
          ruby
            rb クッキー
            rp （
            rtc
              rt くっきい
            rp ）
        '''

      * title: 'Auto-detection of rb text (Katakana with long vowel)'
        plain: 'ピュアピュアはーと《ハート》のドッキリみすてりー《ミステリー》'
        encoded: '''
          | 絶品
          ruby
            rb チョコレート
            rp （
            rtc
              rt ちょこれえと
            rp ）
          | と
          ruby
            rb クッキー
            rp （
            rtc
              rt くっきい
            rp ）
        '''

      * title: 'Auto-detection of rb text (Greek)'
        plain: 'コノ世界ニ平等ナドナイノダトΘ《カレ》以外'
        encoded: '''
          | コノ世界ニ平等ナドナイノダト
          ruby
            rb Θ
            rp （
            rtc
              rt カレ
            rp ）
          | 以外
        '''

      * title: 'Auto-detection of ruby text (Kanji with punctuation)'
        plain: '「不幸《ハードラック》」'
        encoded: '''
          | 「
          ruby
            rb 不幸
            rp （
            rtc
              rt ハードラック
            rp ）
          | 」
        '''

      * title: 'Auto-detection of ruby text (Kanji with separated character)'
        plain: '世界《インダー》　内《ヴェルト》　存在《ザイン》'
        encoded: '''
          ruby
            rb 世界
            rp （
            rtc
              rt インダー
            rp ）
          = '　'
          ruby
            rb 内
            rp （
            rtc
              rt ヴェルト
            rp ）
          = '　'
          ruby
            rb 存在
            rp （
            rtc
              rt ザイン
            rp ）
        '''

      * title: 'Diacritics'
        plain: '抑えきれないリビドー《りびどお》'
        encoded: '''
          | 抑えきれない
          ruby
            rb リビドー
            rp （
            rtc
              rt りびどお
            rp ）
        '''

      * title: 'Surrogate pairs'
        plain: '牛丼の𠮷野家《よしのや》'
        encoded: '''
          | 牛丼の
          ruby
            rb 𠮷野家
            rp （
            rtc
              rt よしのや
            rp ）
        '''

      * title: 'Multiple rubies'
        plain: '不幸《ハードラック》と踊《ダンス》っちまったんだよ……'
        encoded: '''
          ruby
            rb 不幸
            rp （
            rtc
              rt ハードラック
            rp ）
          | と
          ruby
            rb 踊
            rp （
            rtc
              rt ダンス
            rp ）
          | っちまったんだよ……
        '''
