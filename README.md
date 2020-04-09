# README

## Monthly Money Manager


## <img width=20px src="https://user-images.githubusercontent.com/50147122/78499649-eb98ae00-778c-11ea-8979-b2ab6c326959.gif">  アプリ URL

### **https://m3.belldra.com**  
　
---

## 概要

サプブスクリプションサービスの登録等による月額課金を管理、通知するアプリケーション。
<p align="center">
<img width="300px" alt="top画面" src="https://user-images.githubusercontent.com/50147122/78499817-d708e580-778d-11ea-8807-808b79f77986.png">
</p>

---
## コンセプト


加入しているサブスクリプションサービスを管理する。<br>解約予定のサブスクリプションを指定の日にお知らせしてくれる。


---
## バージョン

rails 5.2.3
ruby 2.6.3

---
## デプロイ使用技術

<img width="100px" alt="top画面" src="https://user-images.githubusercontent.com/50147122/78500069-6662c880-778f-11ea-8fcc-ee603c75123d.png">
<img width="93px" alt="top画面" src="https://user-images.githubusercontent.com/50147122/78500509-d07c6d00-7791-11ea-8473-17728f203e83.png">

<img width="100px" alt="top画面" src="https://user-images.githubusercontent.com/50147122/78500067-64006e80-778f-11ea-84e3-bcf347a68f3d.png">
<img width="123px" alt="top画面" src="https://user-images.githubusercontent.com/50147122/78500299-8ba40680-7790-11ea-84b3-42677133d78e.jpeg">
<img width="52px" alt="top画面" src="https://user-images.githubusercontent.com/50147122/78500296-8777e900-7790-11ea-9c7d-2e8708244383.jpeg">
<img width="45px" alt="top画面" src="https://user-images.githubusercontent.com/50147122/78500298-8941ac80-7790-11ea-8a03-4f954fd0af24.jpeg">
<img width="88px" alt="top画面" src="https://user-images.githubusercontent.com/50147122/78500508-cf4b4000-7791-11ea-889a-37ccd4d3e2a4.png">

詳細
- docker-compose
- AWS
    - EC2
    - SES
    - S3
    - RDS(MySQL)
    - ALB
    - Route53
- Nginx
- unicorn
- Ruby on Rails
- Google App Script(Webアクセス監視)

## 構成図

### **https://drive.google.com/file/d/1rf5cIJCWFJ_sxorOlh8hzTe0oDUUT2Bp/view?usp=sharing**


<details><summary>課題選択内容履歴</summary>

「就業Termから少なくとも2つ」
- AWS
- コメント機能（編集や削除もできること。投稿失敗時にエラーメッセージをAjaxで出力すること）

「カリキュラム外から１つ以上」
- Docker
</details>
<br>

---
## 機能一覧

- ログイン機能
    - 管理者のみが使える機能表示有無

- ユーザ登録機能
    - ユーザ登録機能
    - 管理者権限の有無（フラグ管理）

- サービスの登録・一覧・削除（管理者のみ）
    - 既存サービスの登録
    - 既存サービスの削除
    - 既存サービスの一覧

- ユーザ自身が加入している既存サービスの管理機能
    - 登録
    - 削除
    - 一覧
    - 合計金額の毎月通知する機能(メール)
    - 解約日に設定した日に通知する機能(メール)

- 既存サービスのレビュー機能
    - コメント機能

- 既存サービスの管理機能(管理者のみ)
    - 登録



---
## カタログ設計
https://drive.google.com/file/d/1CA08OXv5K5PLQnhgqLR7oJDhD5F_rdfs/view?usp=sharing

※優先度が”高”と”中”のもを必須作成とする。

---
## テーブル定義
https://drive.google.com/file/d/1pCJ4EFAm0Wxm3dF2tJ7R21vuXuXQQ4O1/view?usp=sharing

---
## ER図
https://drive.google.com/file/d/1tOBbbvKleGozrqhPgc4Ik0XcWqsnPmGN/view?usp=sharing

---
## 画面遷移
https://drive.google.com/file/d/1tepioZkE0keT-_7GRA397l8s26mTA-Pf/view?usp=sharing

---
## 画面ワイヤーフレーム
https://drive.google.com/file/d/1gl1r52egU9YmNqiH4yYOe9rV9cpgScHE/view?usp=sharing

---
## 使用予定Gem
* carrierwave
* fog-aws
* mini_magic
* nokogiri
* aws-ses

---