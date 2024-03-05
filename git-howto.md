## githubからリポジトリをダウンロード(クローン)
```git clone URL```

## 自分の作業の状態を確認
```git status```

## 作業の履歴を確認
```git log```

## github上のリポジトリの状態を確認
```git pull```


## ファイルの追加・変更
### githubにあげるファイルを選択
```git add ファイル名```

(全てのファイルをあげる時は . を使う)

### あげる時のコメント・メッセージを書く(コミット)
```git commit -m "メッセージ"```

### githubにあげる(プッシュ)
```git push origin ブランチ名```


## ブランチを作成
```git branch ブランチ名```

## ブランチに移動
```git checkout ブランチ名```

## (ブランチ作成・移動を同時に行う)
```git checkout -b ブランチ名```

## ブランチを作成した後にすること(作成した人)
`git commit --allow-empty -m メッセージ`

`git push origin ブランチ名`

## 作成されたブランチをコンピュータ内のファイルに反映する(作成した人以外)
`git fetch`

`git checkout ブランチ名`