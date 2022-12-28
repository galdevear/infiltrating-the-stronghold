scoreboard players set $up veer.fsh.sculk_watcher.cry 0
scoreboard players set $down veer.fsh.sculk_watcher.cry 0
scoreboard players set $leftDown veer.fsh.sculk_watcher.cry 0
scoreboard players set $leftUp veer.fsh.sculk_watcher.cry 0
scoreboard players set $rightDown veer.fsh.sculk_watcher.cry 0
scoreboard players set $rightUp veer.fsh.sculk_watcher.cry 0

function veer:fsh/sculk_watcher/cry/detect_wall/3d/debug
# Checks at half scale

# get up
# positioned ^ ^1/(2*sqrt(2)) ^0.25
# positioned ^ ^0.353553390593 ^0.25
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^ ^0.353553390593 ^0.0 #veer:fsh/seethrough run scoreboard players set $up veer.fsh.sculk_watcher.cry 1 
# get left down
# positioned ^sqrt(3)/(4*sqrt(2)) ^-1/(4*sqrt(2)) ^0.25
# positioned ^0.306186217848 ^-0.176776695297 ^0.25
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^0.306186217848 ^-0.176776695297 ^0.0 #veer:fsh/seethrough run scoreboard players set $leftDown veer.fsh.sculk_watcher.cry 1
# get right down
# positioned ^-sqrt(3)/(4*sqrt(2)) ^-1/(4*sqrt(2)) ^0.25
# positioned ^-0.306186217848 ^-0.176776695297 ^0.25
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^-0.306186217848 ^-0.176776695297 ^0.0 #veer:fsh/seethrough run scoreboard players set $rightDown veer.fsh.sculk_watcher.cry 1

# Check tripod #1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $up veer.fsh.sculk_watcher.cry matches 1 if score $leftDown veer.fsh.sculk_watcher.cry matches 1 if score $rightDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2

# Old tripod #1 checks
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $upOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $leftDown veer.fsh.sculk_watcher.cry matches 1 if score $rightDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $up veer.fsh.sculk_watcher.cry matches 1 if score $leftDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $rightDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $up veer.fsh.sculk_watcher.cry matches 1 if score $leftDown veer.fsh.sculk_watcher.cry matches 1 if score $rightDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2

execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $upOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $leftDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $rightDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $upOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $leftDown veer.fsh.sculk_watcher.cry matches 1 if score $rightDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $up veer.fsh.sculk_watcher.cry matches 1 if score $leftDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $rightDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2

# get down
# positioned ^ ^-1/(2*sqrt(2)) ^0.5
# positioned ^ ^-0.353553390593 ^0.25
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^ ^-0.353553390593 ^0.0 #veer:fsh/seethrough run scoreboard players set $down veer.fsh.sculk_watcher.cry 1 
# get left up
# positioned ^sqrt(3)/(4*sqrt(2)) ^1/(4*sqrt(2)) ^0.25
# positioned ^0.306186217848 ^0.176776695297 ^0.25
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^0.306186217848 ^0.176776695297 ^0.0 #veer:fsh/seethrough run scoreboard players set $leftUp veer.fsh.sculk_watcher.cry 1
# get right up
# positioned ^-sqrt(3)/(4*sqrt(2)) ^1/(4*sqrt(2)) ^0.25
# positioned ^-0.306186217848 ^0.176776695297 ^0.25
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 unless block ^-0.306186217848 ^0.176776695297 ^0.0 #veer:fsh/seethrough run scoreboard players set $rightUp veer.fsh.sculk_watcher.cry 1

# Check tripod #2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $down veer.fsh.sculk_watcher.cry matches 1 if score $leftUp veer.fsh.sculk_watcher.cry matches 1 if score $rightUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2

# Old tripod #2 checks
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $downOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $leftUp veer.fsh.sculk_watcher.cry matches 1 if score $rightUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $down veer.fsh.sculk_watcher.cry matches 1 if score $leftUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $rightUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $down veer.fsh.sculk_watcher.cry matches 1 if score $leftUp veer.fsh.sculk_watcher.cry matches 1 if score $rightUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2

execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $downOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $leftUp veer.fsh.sculk_watcher.cry matches 1 if score $rightUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $downOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $leftUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $rightUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches -1 if score $down veer.fsh.sculk_watcher.cry matches 1 if score $leftUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 if score $rightUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -2

# set olds
execute if score $up veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $upOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
execute if score $leftDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $leftDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
execute if score $rightDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $rightDownOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
execute if score $down veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $downOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
execute if score $leftUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $leftUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1
execute if score $rightUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $rightUpOld veer.fsh.sculk_watcher.cry.detect_wall.micro 1