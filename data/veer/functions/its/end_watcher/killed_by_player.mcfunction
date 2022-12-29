##
 # killed_by_player.mcfunction
 #
 # Created by Galdeveer.
##

advancement revoke @s only veer:its/end_watcher/killed_by_player

#TODO: Make it so more than the killer gets the sound

execute at @e[type=ender_pearl, tag=veer.its.end_watcher, distance=..15, limit=1] run playsound minecraft:block.honey_block.break hostile @s ~ ~ ~ 0.5 1.6