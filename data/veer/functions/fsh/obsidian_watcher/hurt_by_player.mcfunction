##
 # killed_by_player.mcfunction
 #
 # Created by Galdeveer.
##

advancement revoke @s only veer:its/obsidian_watcher/hurt_by_player

execute at @e[type=ender_pearl, tag=veer.its.obsidian_watcher, distance=..15, limit=1] run playsound minecraft:block.deepslate.hit hostile @s ~ ~ ~ 0.5 1.6