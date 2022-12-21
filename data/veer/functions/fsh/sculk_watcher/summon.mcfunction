## 
 # summon_ender_watcher.mcfunction
 # Version 2
 # Summons the ender watcher mob
 # Created by Galdeveer.
## 
#TODO: Give sounds
#declare tag veer.fsh.sculk_watcher
#declare objective veer.fsh.sculk_watcher.summon.yOffset
#@internal
#declare score_holder $yty

# $y -> ~ ~$y ~ for summoning the mob
scoreboard players set $y veer.fsh.sculk_watcher.summon.yOffset 0

# If the ceiling is not directly above, y = 1
execute if block ~ ~1 ~ #veer:fsh/air run scoreboard players add $y veer.fsh.sculk_watcher.summon.yOffset 1
# and if the ceiling is not directly above, y = 2
execute if score $y veer.fsh.sculk_watcher.summon.yOffset matches 1 if block ~ ~2 ~ #veer:fsh/air run scoreboard players add $y veer.fsh.sculk_watcher.summon.yOffset 1
# and if the ceiling is not directly above, y = 3
execute if score $y veer.fsh.sculk_watcher.summon.yOffset matches 2 if block ~ ~3 ~ #veer:fsh/air run scoreboard players add $y veer.fsh.sculk_watcher.summon.yOffset 1
# and if the ceiling is not directly above, y = 4
execute if score $y veer.fsh.sculk_watcher.summon.yOffset matches 3 if block ~ ~4 ~ #veer:fsh/air run scoreboard players add $y veer.fsh.sculk_watcher.summon.yOffset 1
# and if the ceiling is not directly above, y = 5
execute if score $y veer.fsh.sculk_watcher.summon.yOffset matches 4 if block ~ ~5 ~ #veer:fsh/air run scoreboard players add $y veer.fsh.sculk_watcher.summon.yOffset 1

# Summon sculk watcher at ~ ~y ~
# Only one command will run
execute if score $y veer.fsh.sculk_watcher.summon.yOffset matches ..0 positioned ~ ~ ~ run function veer:fsh/sculk_watcher/summon-1
execute if score $y veer.fsh.sculk_watcher.summon.yOffset matches 1 positioned ~ ~1 ~ run function veer:fsh/sculk_watcher/summon-1
execute if score $y veer.fsh.sculk_watcher.summon.yOffset matches 2 positioned ~ ~2 ~ run function veer:fsh/sculk_watcher/summon-1
execute if score $y veer.fsh.sculk_watcher.summon.yOffset matches 3 positioned ~ ~3 ~ run function veer:fsh/sculk_watcher/summon-1
execute if score $y veer.fsh.sculk_watcher.summon.yOffset matches 4 positioned ~ ~4 ~ run function veer:fsh/sculk_watcher/summon-1
execute if score $y veer.fsh.sculk_watcher.summon.yOffset matches 5.. positioned ~ ~5 ~ run function veer:fsh/sculk_watcher/summon-1

# initialization of the summoned entity is done one second later in the schedule file
# This function tags it as new 