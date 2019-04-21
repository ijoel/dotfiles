
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'org)
(org-babel-load-file
 (expand-file-name "config.org"
                   user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(byte-compile-delete-errors t)
 '(git-gutter:added-sign "▐")
 '(git-gutter:deleted-sign "▐")
 '(git-gutter:modified-sign "▐")
 '(grep-highlight-matches nil)
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t)
     ("T1" "fontenc" t)
     ("" "fixltx2e" nil)
     ("" "graphicx" t)
     ("" "longtable" nil)
     ("" "float" nil)
     ("" "wrapfig" nil)
     ("" "rotating" nil)
     ("normalem" "ulem" t)
     ("" "amsmath" t)
     ("" "textcomp" t)
     ("" "marvosym" t)
     ("" "wasysym" t)
     ("" "amssymb" t)
     ("colorlinks=true,linkcolor=blue,urlcolor=blue" "hyperref" t)
     ("" "" nil))))
 '(org-tags-column -50)
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "ONDECK(o)" "WAITING(w)" "SOMEDAY(s)" "CURRENT(c)" "|" "DONE(d)"))))
 '(package-selected-packages
   (quote
    (doom-modeline 0blayout plan9-theme nofrils-acme-theme diminish base16-theme avk-emacs-themes hexrgb ipython elpy package-build ggtags helm-gtags company-dict company-emacs-eclim company company-go company-web helm-company go-mode git-gutter leuven-theme spacemacs-theme gruvbox-theme fm anaphora python-mode eldoc-eval doom-themes hl-line+ pydoc all-the-icons neotree evil-multiedit evil-anzu iedit anzu fountain-mode rainbow-mode coffee-mode yasnippet yaml-mode web-mode use-package unicode-fonts unbound smooth-scrolling robe rainbow-delimiters powerline-evil org-grep org-bullets markdown-mode key-chord helm-projectile flymake-ruby flycheck fill-column-indicator evil-visual-mark-mode evil-surround evil-snipe evil-mu4e evil-magit evil-leader evil-commentary engine-mode auto-complete)))
 '(python-shell-completion-native-disabled-interpreters (quote ("pypy" "python3")))
 '(safe-local-variable-values
   (quote
    ((eval when
           (fboundp
            (quote rainbow-mode))
           (rainbow-mode 1))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(git-gutter:added ((t (:foreground "#48d245"))))
 '(git-gutter:deleted ((t (:foreground "#d27490"))))
 '(git-gutter:modified ((t (:foreground "#eedd82")))))
