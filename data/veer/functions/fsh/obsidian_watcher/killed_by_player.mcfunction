##
 # killed_by_player.mcfunction
 #
 # Created by Galdeveer.
##

advancement revoke @s only veer:fsh/obsidian_watcher/killed_by_player

execute at @e[type=ender_pearl, tag=veer.fsh.obsidian_watcher, distance=..15, limit=1] run playsound minecraft:block.deepslate.break hostile @s ~ ~ ~ 0.5