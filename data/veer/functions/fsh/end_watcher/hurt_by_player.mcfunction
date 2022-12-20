##
 # killed_by_player.mcfunction
 #
 # Created by Galdeveer.
##

advancement revoke @s only veer:fsh/end_watcher/hurt_by_player

# run at the snowball entity that remains (uncertain if entity is technically still loaded for a moment and can be accessed via @e).
#? Change so more than just the killer gets the sound
# Distance also checked for in advancement to improve performance. Ensure both places have a matching max distance.

execute at @e[type=ender_pearl, tag=veer.fsh.end_watcher, distance=..15, limit=1] run playsound minecraft:block.sculk.hit hostile @s ~ ~ ~ 0.5 1.6