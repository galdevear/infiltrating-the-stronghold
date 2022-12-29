# Reset Scores
scoreboard players set $lxPosOld veer.its.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $lxNegOld veer.its.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $lyPosOld veer.its.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $lyNegOld veer.its.sculk_watcher.cry.detect_wall.micro 0

execute unless block ^0.353553390593 ^ ^ #veer:its/seethrough run scoreboard players set $lxPosOld veer.its.sculk_watcher.cry.detect_wall.micro 1
execute unless block ^-0.353553390593 ^ ^ #veer:its/seethrough run scoreboard players set $lxNegOld veer.its.sculk_watcher.cry.detect_wall.micro 1
execute unless block ^ ^0.353553390593 ^ #veer:its/seethrough run scoreboard players set $lyPosOld veer.its.sculk_watcher.cry.detect_wall.micro 1
execute unless block ^ ^-0.353553390593 ^ #veer:its/seethrough run scoreboard players set $lyNegOld veer.its.sculk_watcher.cry.detect_wall.micro 1