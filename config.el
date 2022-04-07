;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Ivan Lopes"
      user-mail-address "ivanlopes@id.uff.br")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
(setq doom-font (font-spec :family "MesloLGLDZ Nerd Font Mono" :size 33)
      doom-big-font (font-spec :family "MesloLGLDZ Nerd Font Mono" :size 40)
      doom-variable-pitch-font (font-spec :family "OverpassMono Nerd Font Mono" :size 33)
      doom-serif-font (font-spec :family "IBM Plex Mono" :weight 'light))
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/.config/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(setq auto-save-default t
      make-backup-files t)

(setq confirm-kill-emacs nil)

(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)


(map! :leader
	  :desc "Convert to html"
	  :n
	  "a" #'org-html-export-as-html)

; comando: SPC h f
; escrevo: map!
; output:
;    Do
;      (map! :leader :desc "Description" :n "C-c" #'dosomething)
;    Don't
;      (map! :n :leader :desc "Description" "C-c" #'dosomething)
;      (map! :leader :n :desc "Description" "C-c" #'dosomething)
;
; (map! :leader :desc "salva buffer" :n "C-q" #'evil-quit-all)
; (map! :map magit-mode-map
;       :m  "C-r" 'do-something           ; C-r in motion state
;       :nv "q" 'magit-mode-quit-window   ; q in normal+visual states
;       "C-x C-r" 'a-global-keybind
;       :g "C-x C-r" 'another-global-keybind  ; same as above
;
;       (:when IS-MAC
;         :n "M-s" 'some-fn
;         :i "M-o" (cmd! (message "Hi"))))
;
; (map! (:when (featurep! :completion company) ; Conditional loading
;         :i "C-@" #'+company/complete
;         (:prefix "C-x"                       ; Use a prefix key
;           :i "C-l" #'+company/whole-lines)))
;
; (map! (:when (featurep! :lang latex)    ; local conditional
;         (:map LaTeX-mode-map
;           :localleader                  ; Use local leader
;           :desc "View" "v" #'TeX-view)) ; Add which-key description
;       :leader                           ; Use leader key from now on
;       :desc "Eval expression" ";" #'eval-expression)
; #+end_src

; (evil-define-key 'normal my-intercept-mode-map
;   (kbd "SPC W") 'save-buffer)

; editorconfig
; (setq editorconfig-trim-whitespaces-mode
;       'ws-butler-mode)
;(setq org-plantuml-jar-path (expand-file-name "/opt/plantuml/plantuml.jar"))
; (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
; (org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))

; (use-package! org-roam-bibtex
;   :after org-roam
;   :config
;   (require 'org-ref)) ; optional: if Org Ref is not loaded anywhere else, load it here


;; ===========================================================================


