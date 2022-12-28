# Reset scores
scoreboard players set $upOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $downOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $leftDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $leftUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $rightDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $rightUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0

# Get scores
# get Up
execute unless block ^ ^0.707106781187 ^0.5 #veer:fsh/seethrough run scoreboard players set $upOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
execute unless block ^ ^-0.707106781187 ^0.5 #veer:fsh/seethrough run scoreboard players set $upOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
