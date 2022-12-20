##
 # killed_by_player.mcfunction
 #
 # Created by Galdeveer.
##

advancement revoke @s only veer:fsh/end_watcher/killed_by_player

#TODO: Make it so more than the killer gets the sound

execute at @e[type=ender_pearl, tag=veer.fsh.end_watcher, distance=..15, limit=1] run playsound block.sculk.break hostile @s ~ ~ ~ 0.5