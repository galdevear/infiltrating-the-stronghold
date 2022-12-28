# Reset Scores
scoreboard players set $lxPosOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $lxNegOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $lyPosOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $lyNegOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0

execute unless block ^0.353553390593 ^ ^ #veer:fsh/seethrough run scoreboard players set $lxPosOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
execute unless block ^-0.353553390593 ^ ^ #veer:fsh/seethrough run scoreboard players set $lxNegOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
execute unless block ^ ^0.353553390593 ^ #veer:fsh/seethrough run scoreboard players set $lyPosOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
execute unless block ^ ^-0.353553390593 ^ #veer:fsh/seethrough run scoreboard players set $lyNegOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1