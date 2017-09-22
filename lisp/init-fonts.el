;; 初始化字体

(require 'cl)
(defun font-candidate (&rest fonts)
  "Return existing font which first match."
  (find-if (lambda (f) (find-font (font-spec :name f))) fonts))

(let ((en-font (font-candidate "Consolas-12"))
      (zh-font (font-candidate "华文行楷-12")))
  ;;set en-font
  ;;(setq default-frame-alist (list (cons 'font en-font)))
  (set-face-attribute 'default nil :font en-font)
  ;; set zh-font
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset zh-font)))

(provide 'init-fonts)
