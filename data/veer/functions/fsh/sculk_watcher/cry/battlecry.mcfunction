##
 # detect.mcfunction
 # 
 # Created by Galdeveer.
##

#>Ray trace for player
# Returns seesEntity
execute at @s positioned ~ ~ ~ run function veer:fsh/sculk_watcher/cry/look_for_entity 

# Increment ending at 7
execute if score @s veer.fsh.sculk_watcher.cry.battlecry matches ..6 run scoreboard players add @s veer.fsh.sculk_watcher.cry.battlecry 1
# If cooldown..max then tears = 0
execute if score @s veer.fsh.sculk_watcher.cry.battlecry matches 2..6 if score $seesEntity veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set @s veer.fsh.sculk_watcher.cry.battlecry 0
# If after max then tears = -2
# Particles file changes -3 to -2
execute if score @s veer.fsh.sculk_watcher.cry.battlecry matches 7.. if score $seesEntity veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set @s veer.fsh.sculk_watcher.cry.battlecry -3
# If cry = -1 unless seesEntity then tears = an out of bounds number
execute if score @s veer.fsh.sculk_watcher.cry.battlecry matches -1 unless score $seesEntity veer.fsh.sculk_watcher.cry matches 1 run scoreboard players add @s veer.fsh.sculk_watcher.cry.battlecry 7
# if tears = -1 then tears = 0
execute if score @s veer.fsh.sculk_watcher.cry.battlecry matches -1 if score $seesEntity veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set @s veer.fsh.sculk_watcher.cry.battlecry 0

# If tears 0
# then summon_battlecryer!!!!
execute if score @s veer.fsh.sculk_watcher.cry.battlecry matches 0 run function veer:fsh/silverfish/battlecryer/summon