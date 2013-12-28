;;Japanese mozc
(require 'mozc)
(set-language-environment 'Japanese)
(set mozc-candidate-style 'echo-area)
(prefer-coding-system 'utf-8)
(setq default-input-method "japanese-mozc")

;;load-pathを追加する関数を定義
(defun add-to-load-path (&rest paths)
  (let (path)
   (dolist (path paths paths)
     (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;;elispとconfディレクトリをサブディレクトリごとload-pathに追加
(add-to-load-path "elisp" "conf")

(when (require 'auto-install nil t)
   (setq auto-install-directory "~/.emacs.d/elisp/")
   (auto-install-update-emacswiki-package-name t)
   (auto-install-compatibility-setup))

(when (require 'redo+ nil t)
  ;;global-map
  (global-set-key (kbd "C-'") 'redo))
;; マウスポインタの色を設定します。
(add-to-list 'default-frame-alist '(mouse-color . "green"))
;; バックアップファイルを作らないようにする
(setq make-backup-files nil)
;; 背景を透過さるせる
(set-frame-parameter nil 'alpha 100)
;; 括弧の対応関係をハイライト表示
(show-paren-mode nil)
;; ツールバーを表示しないようにする（Official Emacs の場合は 0）
(tool-bar-mode 0)
;; スクロールバーを表示しないようにする。
(scroll-bar-mode 0)
;;メニューバー非表示
(menu-bar-mode 0)
;; スタートアップ画面を表示しないようにする
(setq inhibit-startup-message t)
;; フルスクリーンにする。
(set-frame-parameter nil 'fullscreen 'fullboth)
;; 行数を表示する
(global-linum-mode t)
;; カーソルの色を設定します。
(add-to-list 'default-frame-alist '(cursor-color . "blue"))

;; 選択中のリージョンの色を設定します。
(set-face-background 'region "magenta")

;;カラーテーマ選択-CALM FOREST選択中
(when (require 'color-theme nil t)
  (color-theme-initialize)
  (color-theme-calm-forest))

;;RICTY フォント設定
(add-to-list 'default-frame-alist '(font . "ricty-13.5"))

;;カーソル行をハイライト
(global-hl-line-mode t)
