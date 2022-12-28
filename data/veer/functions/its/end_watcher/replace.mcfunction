##
 # init_sculk_watcher_replaceable.mcfunction
 #
 # Created by Galdeveer.
##

# Offset upwards so it doesn't immediately fly down into the ground effecting pathfinding in the short-term.
# Summon end watcher
execute at @s positioned ~ ~1 ~ run function veer:its/end_watcher/summon

function veer:its/util/kill_in_void