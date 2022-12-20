##
 # attack.mcfunction
 # 
 # Created by Galdeveer.
##

execute at @s run particle minecraft:falling_obsidian_tear ~ ~-0.05 ~ 0 0 0 1 1
execute at @s run playsound minecraft:block.pointed_dripstone.drip_water hostile @e[type=player,distance=..15] ~ ~ ~ 0.8 0.1
#TODO: Adjust attack range
execute at @s positioned ~ ~-1 ~ as @e[distance=..1.7] run function veer:fsh/obsidian_watcher/attack-a