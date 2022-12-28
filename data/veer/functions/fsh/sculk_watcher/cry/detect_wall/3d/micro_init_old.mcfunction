# Reset scores
scoreboard players set $upOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $downOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $leftDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $leftUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $rightDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0
scoreboard players set $rightUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro 0

function veer:fsh/sculk_watcher/cry/detect_wall/3d/debug
# Get scores (half scale)
# get Up
execute unless block ^ ^0.353553390593 ^0.0 #veer:fsh/seethrough run scoreboard players set $upOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
# get down
execute unless block ^ ^-0.353553390593 ^0.0 #veer:fsh/seethrough run scoreboard players set $downOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
# get leftDown
execute unless block ^0.306186217848 ^-0.176776695297 ^0.0 #veer:fsh/seethrough run scoreboard players set $leftDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
# get rightDown
execute unless block ^-0.306186217848 ^-0.176776695297 ^0.0 #veer:fsh/seethrough run scoreboard players set $rightDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
# get leftUp
execute unless block ^0.306186217848 ^0.176776695297 ^0.0 #veer:fsh/seethrough run scoreboard players set $leftUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
# Get rightUp
execute unless block ^-0.306186217848 ^0.176776695297 ^0.0 #veer:fsh/seethrough run scoreboard players set $rightUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1