#declare score_holder $up
#declare score_holder $down
#declare score_holder $leftDown
#declare score_holder $leftUp
#declare score_holder $rightDown
#declare score_holder $rightUp
#declare score_holder $upOld
#declare score_holder $downOld
#declare score_holder $leftDownOld
#declare score_holder $leftUpOld
#declare score_holder $rightDownOld
#declare score_holder $rightUpOld

scoreboard players set $up veer.its.sculk_watcher.cry 0
scoreboard players set $down veer.its.sculk_watcher.cry 0
scoreboard players set $leftDown veer.its.sculk_watcher.cry 0
scoreboard players set $leftUp veer.its.sculk_watcher.cry 0
scoreboard players set $rightDown veer.its.sculk_watcher.cry 0
scoreboard players set $rightUp veer.its.sculk_watcher.cry 0

# get up
# positioned ^ ^1/sqrt(2) ^0.5
# positioned ^ ^0.707106781187 ^0.5
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 unless block ^ ^0.707106781187 ^0.0 #veer:its/seethrough run scoreboard players set $up veer.its.sculk_watcher.cry 1 
# get left down
# positioned ^sqrt(3)/(2*sqrt(2)) ^-1/(2*sqrt(2)) ^0.5
# positioned ^0.612372435696 ^-0.353553390593 ^0.5
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 unless block ^0.612372435696 ^-0.353553390593 ^0.0 #veer:its/seethrough run scoreboard players set $leftDown veer.its.sculk_watcher.cry 1
# get right down
# positioned ^-sqrt(3)/(2*sqrt(2)) ^-1/(2*sqrt(2)) ^0.5
# positioned ^-0.612372435696 ^-0.353553390593 ^0.5
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 unless block ^-0.612372435696 ^-0.353553390593 ^0.0 #veer:its/seethrough run scoreboard players set $rightDown veer.its.sculk_watcher.cry 1

# Check tripod #1
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $up veer.its.sculk_watcher.cry matches 1 if score $leftDown veer.its.sculk_watcher.cry matches 1 if score $rightDown veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1

# Old tripod #1 checks
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $upOld veer.its.sculk_watcher.cry matches 1 if score $leftDown veer.its.sculk_watcher.cry matches 1 if score $rightDown veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $up veer.its.sculk_watcher.cry matches 1 if score $leftDownOld veer.its.sculk_watcher.cry matches 1 if score $rightDown veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $up veer.its.sculk_watcher.cry matches 1 if score $leftDown veer.its.sculk_watcher.cry matches 1 if score $rightDownOld veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1

execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $upOld veer.its.sculk_watcher.cry matches 1 if score $leftDownOld veer.its.sculk_watcher.cry matches 1 if score $rightDown veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $upOld veer.its.sculk_watcher.cry matches 1 if score $leftDown veer.its.sculk_watcher.cry matches 1 if score $rightDownOld veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $up veer.its.sculk_watcher.cry matches 1 if score $leftDownOld veer.its.sculk_watcher.cry matches 1 if score $rightDownOld veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1

# get down
# positioned ^ ^-1/sqrt(2) ^0.5
# positioned ^ ^-0.707106781187 ^0.5
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 unless block ^ ^-0.707106781187 ^0.0 #veer:its/seethrough run scoreboard players set $down veer.its.sculk_watcher.cry 1 
# get left up
# positioned ^sqrt(3)/(2*sqrt(2)) ^1/(2*sqrt(2)) ^0.5
# positioned ^0.612372435696 ^0.353553390593 ^0.5
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 unless block ^0.612372435696 ^0.353553390593 ^0.0 #veer:its/seethrough run scoreboard players set $leftUp veer.its.sculk_watcher.cry 1
# get right up
# positioned ^-sqrt(3)/(2*sqrt(2)) ^1/(2*sqrt(2)) ^0.5
# positioned ^-0.612372435696 ^0.353553390593 ^0.5
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 unless block ^-0.612372435696 ^0.353553390593 ^0.0 #veer:its/seethrough run scoreboard players set $rightUp veer.its.sculk_watcher.cry 1

# Check tripod #2
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $down veer.its.sculk_watcher.cry matches 1 if score $leftUp veer.its.sculk_watcher.cry matches 1 if score $rightUp veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1

# Old tripod #2 checks
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $downOld veer.its.sculk_watcher.cry matches 1 if score $leftUp veer.its.sculk_watcher.cry matches 1 if score $rightUp veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $down veer.its.sculk_watcher.cry matches 1 if score $leftUpOld veer.its.sculk_watcher.cry matches 1 if score $rightUp veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $down veer.its.sculk_watcher.cry matches 1 if score $leftUp veer.its.sculk_watcher.cry matches 1 if score $rightUpOld veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1

execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $downOld veer.its.sculk_watcher.cry matches 1 if score $leftUp veer.its.sculk_watcher.cry matches 1 if score $rightUpOld veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $downOld veer.its.sculk_watcher.cry matches 1 if score $leftUpOld veer.its.sculk_watcher.cry matches 1 if score $rightUp veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if score $down veer.its.sculk_watcher.cry matches 1 if score $leftUpOld veer.its.sculk_watcher.cry matches 1 if score $rightUpOld veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1

# set olds
execute if score $up veer.its.sculk_watcher.cry matches 1 run scoreboard players set $upOld veer.its.sculk_watcher.cry 1
execute if score $leftDown veer.its.sculk_watcher.cry matches 1 run scoreboard players set $leftDownOld veer.its.sculk_watcher.cry 1
execute if score $rightDown veer.its.sculk_watcher.cry matches 1 run scoreboard players set $rightDownOld veer.its.sculk_watcher.cry 1
execute if score $down veer.its.sculk_watcher.cry matches 1 run scoreboard players set $downOld veer.its.sculk_watcher.cry 1
execute if score $leftUp veer.its.sculk_watcher.cry matches 1 run scoreboard players set $leftUpOld veer.its.sculk_watcher.cry 1
execute if score $rightUp veer.its.sculk_watcher.cry matches 1 run scoreboard players set $rightUpOld veer.its.sculk_watcher.cry 1