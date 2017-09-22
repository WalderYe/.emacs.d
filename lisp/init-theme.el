;; 初始化外观

;; 80 字符换行
(setq-default default-fill-column 80)
;; 设置光标形状
(setq-default cursor-type 'bar)
;; 全局行号,列号
(global-linum-mode t)
(setq column-number-mode t)
(setq line-number-mode t)
;; 工具栏
(tool-bar-mode 0)
;; 滚动条
(scroll-bar-mode 0)
;; 菜单栏
(menu-bar-mode 0)
;; 标题栏
(setq frame-title-format "%f")
;; 颜色
(set-foreground-color "grey")
(set-background-color "black")
(set-cursor-color "grey")
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")
;; 时间
;;(display-time-mode t)
;;(setq display-time-24hr-format t)
;;(setq display-time-day-and-date t)
;;(setq display-time-interval 10)
;; 启动页面
;;(setq inhibit-startup-message t)
;;(setq gnus-inhibit-startup-message t)

(provide 'init-theme)
