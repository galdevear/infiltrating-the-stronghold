##
 # Date: 12/20/22
 # Created by Galdeveer.
##

#> New Entity Detection
#declare tag veer.its.entity.new
#declare tag veer.its.entity

tag @s[tag=veer.its.entity.new] remove veer.its.entity.new
tag @s[tag=!veer.its.entity,tag=!global.ignore,tag=!global.ignore.pos] add veer.its.entity.new
tag @s[tag=!veer.its.entity,tag=!global.ignore,tag=!global.ignore.pos] add veer.its.entity

#> Silverfish
# Also includes silverfish queen endermite spawning. (any silverfish in stronghold)
execute if entity @s[type=silverfish, tag=veer.its.entity.new] run function veer:its/silverfish/init

#> Watcher Spawning
# Swap some new spawns with a pair of watchers
execute if entity @s[type=#veer:its/watcher_pair/spawn_targets,tag=veer.its.entity.new] run function veer:its/watcher_pair/detect_replaceable

#> Stealth Mechanics
execute if entity @s[type=snowball,tag=veer.its.sculk_watcher.cry] run function veer:its/sculk_watcher/cry/battlecry

#> Potion effect tears
# Obsidian Watcher
execute if entity @s[type=ender_pearl,tag=veer.its.obsidian_watcher] run function veer:its/obsidian_watcher/attack
# End Watcher
execute if entity @s[type=ender_pearl,tag=veer.its.end_watcher] run function veer:its/end_watcher/attack

#> Removing glowing from 2dproj
execute if entity @s[type=#veer:its/fix_glowing/passengers, tag=veer.its.fix_glowing.passenger] run function veer:its/fix_glowing/decrement

#TODO: Change mostly to bind vex
#> Init sculk watcher
execute if entity @s[type=snowball,tag=veer.its.sculk_watcher.new] run function veer:its/sculk_watcher/init

#> Bind tagged vexes to their location
execute if entity @s[type=vex,tag=veer.its.util.bind_vex] run function veer:its/util/bind_vex