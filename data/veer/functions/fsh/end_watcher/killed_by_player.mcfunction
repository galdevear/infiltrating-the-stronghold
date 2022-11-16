##
 # killed_by_player.mcfunction
 #
 # Created by Galdeveer.
##

advancement revoke @s only veer:fsh/end_watcher/killed_by_player

# run at the snowball entity that remains (uncertain if entity is technically still loaded for a moment and can be accessed via @e).
#? Potentially change in the future so more than just the killer gets the sound
# Distance also checked for in advancement to improve performance. Ensure both places have a matching max distance.
# Rather than detect which one died, it just picks the first one it detects that's close enough.
# Limit is used to ensure the sound only plays once. It is necessary since its imprecise

execute at @e[type=ender_pearl, tag=veer.fsh.end_watcher, distance=..15, limit=1] run playsound entity.ender_eye.death hostile @s ~ ~ ~ 0.5