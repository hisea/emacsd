;;Git-Gutter-Fringe Plus
(fringe-mode)
(require 'git-gutter-fringe)
(set-face-foreground 'git-gutter-fr:modified "cyan3")
(set-face-foreground 'git-gutter-fr:added    "SeaGreen3")
(set-face-foreground 'git-gutter-fr:deleted  "orchid3")
(global-git-gutter-mode t)
