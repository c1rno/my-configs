;; Use https://github.com/syl20bnr/spacemacs instead of cfg below
;; In Debian based install emacs and emacs-goodies-el;
;; In windows maybe good idea add HOME variable to user environment
(progn
  (unless (fboundp 'helm-mode)
    (ido-mode t)
    (setq ido-enable-flex-matching t))

  (menu-bar-mode -1)
  (when (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))
  (when (fboundp 'scroll-bar-mode)
    (scroll-bar-mode -1))
  (when (fboundp 'horizontal-scroll-bar-mode)
    (horizontal-scroll-bar-mode -1))
  (when (version<= "26.0.50" emacs-version)
    (global-display-line-numbers-mode))

  (autoload 'zap-up-to-char "misc"
    "Kill up to, but not including ARGth occurrence of CHAR." t)

  (require 'uniquify)
  (setq uniquify-buffer-name-style 'forward)

  (require 'saveplace)
  (setq-default save-place t)

  (global-set-key (kbd "M-/") 'hippie-expand)
  (global-set-key (kbd "C-x C-b") 'ibuffer)
  (global-set-key (kbd "M-z") 'zap-up-to-char)

  (global-set-key (kbd "C-s") 'isearch-forward-regexp)
  (global-set-key (kbd "C-r") 'isearch-backward-regexp)
  (global-set-key (kbd "C-M-s") 'isearch-forward)
  (global-set-key (kbd "C-M-r") 'isearch-backward)

  (show-paren-mode 1)
  (setq-default indent-tabs-mode nil
                message-log-max nil
                truncate-lines t)
  (setq save-interprogram-paste-before-kill t
        apropos-do-all t
        mouse-yank-at-point t
        require-final-newline t
        load-prefer-newer t
        inhibit-startup-screen t
        visible-bell nil
        make-backup-files nil
        auto-save-default nil
        create-lockfiles nil
        initial-scratch-message ""
        ediff-window-setup-function 'ediff-setup-windows-plain))
; https://raw.githubusercontent.com/technomancy/better-defaults/master/better-defaults.el ends here

(custom-set-faces
 '(default ((t (:inherit nil
                :stipple nil
                :background "SystemWindow"
                :foreground "SystemWindowText"
                :inverse-video nil
                :box nil
                :strike-through nil
                :overline nil
                :underline nil
                :slant normal
                :weight normal
                :height 102
                :width normal
                :foundry "outline"
                :family "Iosevka")))))

(custom-set-variables
 '(fset 'yes-or-no-p 'y-or-n-p)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(custom-enabled-themes (quote (adwaita))))

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
