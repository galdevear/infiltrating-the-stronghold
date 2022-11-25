##
 # init_sculk_watcher_replaceable.mcfunction
 # Version 1
 #alias entity arg @s[tag=!global.ignore.pos, tag=!global.ignore]
 # Created by Galdeveer.
##

# Offset upwards so it doesn't immediately go into the ground effecting pathfinding.
#alias vector spawnOffset ~ ~1 ~

# Summon end watcher
execute at @s positioned ~ ~1 ~ run function veer:fsh/obsidian_watcher/summon

function veer:fsh/util/kill_in_void