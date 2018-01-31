;; Init.el
(package-initialize)
(toggle-truncate-lines t)
;; 将打开init.el绑定到F2上
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

;; 把目录lisp/添加到搜索路径中
(add-to-list
 'load-path
 (expand-file-name
  "lisp"
  user-emacs-directory))

;; 保存会话(退出时的状态)
(desktop-save-mode "~/.emacs.d")


;; 设置初始查找目录
(setq command-line-default-directory "~/Desktop/")
;; 每个require的feature对应一个lisp/下的一个elisp文件

;; 字体
(require 'init-fonts)

;; 外观
(require 'init-theme)
