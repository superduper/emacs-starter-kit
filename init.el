;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;

(setq dotfiles-dir (file-name-directory (or load-file-name (buffer-file-name))))

;; Org-mode bug on Ubuntu: Cannot exit from Emacs with msg
;; move-file-to-trash: Non-regular file: Is a directory, /tmp/babel-XXXXXXX
(custom-set-variables '(temporary-file-directory (concat dotfiles-dir "tmp")))
(unless (file-exists-p temporary-file-directory)
  (make-directory temporary-file-directory))

(add-to-list 'load-path (expand-file-name
                         "lisp" (expand-file-name
                                 "org" (expand-file-name
                                        "src" dotfiles-dir))))
;; Load up Org Mode and Babel
(require 'org-install)

;; load up the main file
(org-babel-load-file (expand-file-name "starter-kit.org" dotfiles-dir))

;;; init.el ends here
