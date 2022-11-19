##
 # killed_by_player.mcfunction
 #
 # Created by Galdeveer.
##

advancement revoke @s only veer:fsh/obsidian_watcher/hurt_by_player

# run at the snowball entity that remains (uncertain if entity is technically still loaded for a moment and can be accessed via @e).
#? Potentially change in the future so more than just the killer gets the sound
# Distance also checked for in advancement to improve performance. Ensure both places have a matching max distance.
# Rather than detect which one died, it just picks the first one it detects that's close enough.
# Limit is used to ensure the sound only plays once. It is necessary since its imprecise

# TODO: Change to make more intuitive for death players.
execute at @e[type=ender_pearl, tag=veer.fsh.obsidian_watcher, distance=..15, limit=1] run playsound minecraft:block.deepslate.hit hostile @s ~ ~ ~ 0.5 1.6