##
 # attack.mcfunction
 # 
 #
 # Created by Galdeveer.
##

# TODO: Change drip to occur constantly since it reveals location while in ceiling.
execute at @s run particle minecraft:falling_obsidian_tear ~ ~-0.05 ~ 0 0 0 1 1
# Might of caused more lag if placed in the function since it would run a seperate commmand for each player. Not entirely sure how that works.
execute at @s run playsound minecraft:block.pointed_dripstone.drip_water hostile @e[type=player,distance=..15] ~ ~ ~ 0.8 0.1
#TODO: Consider removing minimum volume and using that more instead of distance.

#TODO: Adjust attack range
execute at @s positioned ~ ~-1 ~ as @e[distance=..1.7] run function veer:fsh/obsidian_watcher/attack-a