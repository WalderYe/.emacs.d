;; Init.el

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; 将打开init.el绑定到F2上
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)
;; 将笔记本绑定到F4上

;; 把目录lisp/添加到搜索路径中
(add-to-list
 'load-path
 (expand-file-name
  "lisp"
  user-emacs-directory))

;; 每个require的feature对应一个lisp/下的一个elisp文件

;; 字体
(require 'init-fonts)

;; 外观
(require 'init-theme)
