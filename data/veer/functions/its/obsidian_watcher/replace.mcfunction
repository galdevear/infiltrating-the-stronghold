##
 # init_sculk_watcher_replaceable.mcfunction
 #
 # Created by Galdeveer.
##

# Offset upwards so it doesn't immediately go into the ground effecting pathfinding.
# Summon end watcher
execute at @s positioned ~ ~1 ~ run function veer:its/obsidian_watcher/summon

function veer:its/util/kill_in_void