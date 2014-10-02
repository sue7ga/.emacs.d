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

;; マウスポインタの色を設定します。
(add-to-list 'default-frame-alist '(mouse-color . "green"))

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
;;(set-frame-parameter nil 'fullscreen 'fullboth)
(setq initial-frame-alist
   (append (list
     '(width . 600)
     '(height . 300)
     )
     initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

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

;;補完
(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories
    "~/.emacs.d/elisp/ac-dict")
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  (ac-config-default)
  (setq ac-use-menu-map t)
)

;;検索moccur
(when (require 'color-moccur nil t)
  (define-key global-map (kbd "M-o") 'occur-by-moccur)
  (setq moccur-split-word t) 
  (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
  (add-to-list 'dmoccur-exclusion-mask "^#.+#$")
  (when (and (executable-find "cmigemo") 
             (require 'migemo nil t))
  (setq moccur-use-migemo t)))

;;moccurの編集
(require 'moccur-edit nil t)

;;moccur-edit-finish-editと同時にファイルを保存
(defadvice moccur-edit-change-file
  (after save-after-moccur-edit-buffer activate)
  (save-buffer))

;;undohist
(when (require 'undohist nil t)
    (undohist-initialize))
;;undo-tree
(when (require 'undo-tree nil t)
   (global-undo-tree-mode))


;;perl-modeをcperl-modeのエイリアスにする
(defalias 'perl-mode 'cperl-mode)

;;perl-completionの設定
(defun perl-completion-hook ()
  (when (require 'perl-completion nil t)
    (perl-completion-mode t)
    (when (require 'auto-complete nil t)
      (auto-complete-mod t)
      (make-variable-buffer-lacal 'ac-sources))
      (setq ac-sources
             '(ac-source-perl-completion))))
(add-hook 'cperl-mode-hook 'perl-completion-hook)

;;括弧の自動挿入
(require 'ruby-electric nil t)
(when (require 'ruby-block nil t)
   (setq ruby-block-highlight-toggle t))
(autoload 'run-ruby "inf-ruby"
   "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
   "Set local key defs for inf-ruby in ruby-mode")

;;ruby-mode-hook用の関数を定義

(defun ruby-mode-hooks ()
   (inf-ruby-keys)
   (ruby-electric-mode t)
   (ruby-block-mode t))
;;ruby-mode-hookに追加
(add-hook 'ruby-mode-hook 'ruby-mode-hooks)

;;js-mode
(defun js-indent-hook ()
  (setq js-indent-level 2
        js-expr-indent-offset 2
        indent-tabs-mode nil)
    ;;switch文のcaseラベルをインデントする関数を定義する
    (defun my-js-indent-lines()
      (interactive)
      (let* ((parse-status (save-excursion (syntax-ppss (point-at-bol))))
             (offset (- (current-column) (current-indentation)))
             (indentation (js--proper-indentation parse-status)))
         (back-to-indentation)
         (if (looking-at "case\\s-")
             (indent-line-to (+ indentation 2))
          (js-indent-line))
         (when (> offset 0) (forward-char offset))))
  ;;caseラベルのインデント処理をセットする
   (set (make-local-variable 'indent-line-function) 'my-js-indent-line)
;;ここまでcaseラベルを調整する設定
)

;;js-modeの起動時にhookを追加
(add-hook 'js-mode-hook 'js-indent-hook)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


;;cssm-mode

(defun css-mode-hooks ()
  "css-mode hooks"
  (setq cssm-indent-function #'cssm-c-style-indenter)
  (setq cssm-indent-level 2)
  (setq-default indent-tabs-mode nil)
  (setq cssm-newline-before-closing-bracket t))

(add-hook 'css-mode-hook 'css-mode-hooks)


;;HTML5

(eval-after-load "rng-loc"
  '(add-to-list 'rng-schema-locating-files
               "~/.emacs.d/public_repos/html5-el/schemas.xml"))

(setq nxml-slash-auto-complete-flag t)
(setq nxml-bind-meta-tab-to-complete-falg t)
(add-to-list 'ac-modes 'nxml-mode)


;;wl
(load "mime-setup")
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-draft "wl-draft" "Write draft width Wanderlust." t)

;;Elscreen
;;gist
(put 'dired-find-alternate-file 'disabled nil)




