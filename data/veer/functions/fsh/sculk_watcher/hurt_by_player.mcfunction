##
 # killed_by_player.mcfunction
 #
 # Created by Galdeveer.
##

advancement revoke @s only veer:fsh/sculk_watcher/hurt_by_player

execute at @e[type=ender_pearl, tag=veer.fsh.sculk_watcher, distance=..15, limit=1] run playsound minecraft:block.honey_block.hit hostile @s ~ ~ ~ 0.5 1.6