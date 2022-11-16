##
 # battlecry.mcfunction
 # 
 # Created by Galdeveer.
##

# Calls ray trace for player start on all nearby players (with short circuiting) and returns true if atleast one succeeds

# Sets retVal to false to ensure the condition always passes the first time
# Note: Doing this in multiple layers of nesting is not redundant.
scoreboard players set $retVal veer.fsh.swc -1

# The retval check after the as clause is going to ensure that if even one entity is discovered, the rest will be ignored.
# TODO: Move failure cases out of line and on to their own line. Maybe start reseting a generic tag for generic flow of control.
# TODO: Move $retVal check to the front of the line when I have time to deal with bugs.
execute as @e[type=#veer:fsh/sculk_watcher/targetable,distance=..20] unless entity @s[type=player,gamemode=spectator] unless entity @s[type=#veer:fsh/in_block_projectiles, scores={veerFsh.ibpTimer=4..}] if score $retVal veer.fsh.swc matches -1 facing entity @s eyes run function veer:fsh/sculk_watcher/cry/trace_start