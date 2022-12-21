##
 # Date:12/20/22
 # 
 # Created by Galdeveer.
##

execute at @s run particle minecraft:falling_honey ~ ~-0.05 ~ 0 0 0 1 1
execute at @s run playsound minecraft:block.pointed_dripstone.drip_lava hostile @e[type=player,distance=..15] ~ ~ ~ 0.8 0.1
execute at @s positioned ~ ~-1 ~ as @e[distance=..1.7] run function veer:fsh/end_watcher/attack-2