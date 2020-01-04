# README

## Monthly Money Manager
---

## 概要

サプブスクリプションサービスの登録等による月額課金を管理、通知するアプリケーション。

---
## コンセプト


利用し続けていないサブスクリプションサービスを管理、備忘通知する

---
## バージョン

rails 5.2.3  
ruby 2.6.3

---
## 機能一覧

- ログイン機能
    - 管理者のみが使える機能表示有無

- ユーザ登録機能
    - ユーザ登録機能
    - 管理者権限の有無（フラグ管理）

- サービスの登録・一覧・削除
    - 既存サービスの登録
    - 既存サービスの削除
    - 既存サービスの一覧

- ユーザ自身が加入している既存サービスの管理機能
    - 登録
    - 削除
    - 一覧
    - 合計金額の毎月通知する機能(メール)
    - 解約日に設定した日に通知する機能(メール)

- 既存サービスの表示機能(管理者のみ)
    - 登録
    - 一覧
    - 削除

---
## カタログ設計
https://drive.google.com/file/d/1CA08OXv5K5PLQnhgqLR7oJDhD5F_rdfs/view?usp=sharing

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
* Fog
* mini_magic
* nokogiri
* aws-ses
* devise
* aws-ses

---