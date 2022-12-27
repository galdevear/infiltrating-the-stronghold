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

scoreboard players set $up veer.fsh.sculk_watcher.cry 0
scoreboard players set $down veer.fsh.sculk_watcher.cry 0
scoreboard players set $leftDown veer.fsh.sculk_watcher.cry 0
scoreboard players set $leftUp veer.fsh.sculk_watcher.cry 0
scoreboard players set $rightDown veer.fsh.sculk_watcher.cry 0
scoreboard players set $rightUp veer.fsh.sculk_watcher.cry 0

# get up
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^ ^0.847863483616 ^0.176429910023 #veer:fsh/seethrough run scoreboard players set $up veer.fsh.sculk_watcher.cry 1 
# get left down
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^0.128041421067 ^-0.415041223795 ^0.176429910023 #veer:fsh/seethrough run scoreboard players set $leftDown veer.fsh.sculk_watcher.cry 1
# get right down
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^-0.128041421067 ^-0.415041223795 ^0.176429910023 #veer:fsh/seethrough run scoreboard players set $rightDown veer.fsh.sculk_watcher.cry 1
# Check tripod #1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $up veer.fsh.sculk_watcher.cry matches 1 if score $leftDown veer.fsh.sculk_watcher.cry matches 1 if score $rightDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

# get down
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^ ^-0.847863483616 ^0.176429910023 #veer:fsh/seethrough run scoreboard players set $down veer.fsh.sculk_watcher.cry 1 
# get left up
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^0.128041421067 ^0.415041223795 ^0.176429910023 #veer:fsh/seethrough run scoreboard players set $leftUp veer.fsh.sculk_watcher.cry 1
# get right up
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 unless block ^-0.128041421067 ^0.415041223795 ^0.176429910023 #veer:fsh/seethrough run scoreboard players set $rightUp veer.fsh.sculk_watcher.cry 1
# Check tripod #2
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $down veer.fsh.sculk_watcher.cry matches 1 if score $leftUp veer.fsh.sculk_watcher.cry matches 1 if score $rightUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

# Old tripod #1 checks
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $upOld veer.fsh.sculk_watcher.cry matches 1 if score $leftDown veer.fsh.sculk_watcher.cry matches 1 if score $rightDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $up veer.fsh.sculk_watcher.cry matches 1 if score $leftDownOld veer.fsh.sculk_watcher.cry matches 1 if score $rightDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $up veer.fsh.sculk_watcher.cry matches 1 if score $leftDown veer.fsh.sculk_watcher.cry matches 1 if score $rightDownOld veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $upOld veer.fsh.sculk_watcher.cry matches 1 if score $leftDownOld veer.fsh.sculk_watcher.cry matches 1 if score $rightDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $upOld veer.fsh.sculk_watcher.cry matches 1 if score $leftDown veer.fsh.sculk_watcher.cry matches 1 if score $rightDownOld veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $up veer.fsh.sculk_watcher.cry matches 1 if score $leftDownOld veer.fsh.sculk_watcher.cry matches 1 if score $rightDownOld veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

# Old tripod #2 checks
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $downOld veer.fsh.sculk_watcher.cry matches 1 if score $leftUp veer.fsh.sculk_watcher.cry matches 1 if score $rightUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $down veer.fsh.sculk_watcher.cry matches 1 if score $leftUpOld veer.fsh.sculk_watcher.cry matches 1 if score $rightUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $down veer.fsh.sculk_watcher.cry matches 1 if score $leftUp veer.fsh.sculk_watcher.cry matches 1 if score $rightUpOld veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $downOld veer.fsh.sculk_watcher.cry matches 1 if score $leftUp veer.fsh.sculk_watcher.cry matches 1 if score $rightUpOld veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $downOld veer.fsh.sculk_watcher.cry matches 1 if score $leftUpOld veer.fsh.sculk_watcher.cry matches 1 if score $rightUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if score $down veer.fsh.sculk_watcher.cry matches 1 if score $leftUpOld veer.fsh.sculk_watcher.cry matches 1 if score $rightUpOld veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

# set olds
execute if score $up veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $upOld veer.fsh.sculk_watcher.cry 1
execute if score $leftDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $leftDownOld veer.fsh.sculk_watcher.cry 1
execute if score $rightDown veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $rightDownOld veer.fsh.sculk_watcher.cry 1
execute if score $down veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $downOld veer.fsh.sculk_watcher.cry 1
execute if score $leftUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $leftUpOld veer.fsh.sculk_watcher.cry 1
execute if score $rightUp veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $rightUpOld veer.fsh.sculk_watcher.cry 1