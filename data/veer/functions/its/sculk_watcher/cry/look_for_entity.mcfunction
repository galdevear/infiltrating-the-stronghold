##
 # Date: 11/29/22
 # 
 # Created by Galdeveer.
##

# Calls ray trace for player start on all nearby players and returns true if atleast one succeeds

# Init scores
scoreboard players set $seesEntity veer.its.sculk_watcher.cry 0

# Stops if an entity has been seen
execute at @s as @e[type=#veer:its/sculk_watcher/cry/targetable/all,tag=!global.ignore,tag=!global.ignore.pos,distance=..20] unless entity @s[type=player,gamemode=spectator] facing entity @s eyes run function veer:its/sculk_watcher/cry/trace_start