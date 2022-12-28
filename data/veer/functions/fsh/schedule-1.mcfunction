##
 # Date: 12/20/22
 # Created by Galdeveer.
##

#> New Entity Detection
#declare tag veer.fsh.entity.new
#declare tag veer.fsh.entity

tag @s[tag=veer.fsh.entity.new] remove veer.fsh.entity.new
tag @s[tag=!veer.fsh.entity,tag=!global.ignore,tag=!global.ignore.pos] add veer.fsh.entity.new
tag @s[tag=!veer.fsh.entity,tag=!global.ignore,tag=!global.ignore.pos] add veer.fsh.entity

#> Silverfish
# Also includes silverfish queen endermite spawning. (any silverfish in stronghold)
execute if entity @s[type=silverfish, tag=veer.fsh.entity.new] run function veer:fsh/silverfish/init

#> Watcher Spawning
# Swap some new spawns with a pair of watchers
execute if entity @s[type=#veer:fsh/watcher_pair/replaceable,tag=veer.fsh.entity.new] run function veer:fsh/watcher_pair/detect_replaceable

#> Stealth Mechanics
execute if entity @s[type=snowball,tag=veer.fsh.sculk_watcher.cry] run function veer:fsh/sculk_watcher/cry/battlecry

#> Potion effect tears
# Obsidian Watcher
execute if entity @s[type=ender_pearl,tag=veer.fsh.obsidian_watcher] run function veer:fsh/obsidian_watcher/attack
# End Watcher
execute if entity @s[type=ender_pearl,tag=veer.fsh.end_watcher] run function veer:fsh/end_watcher/attack

#> Removing glowing from 2dproj
execute if entity @s[type=#veer:fsh/fix_glowing/passengers, tag=veer.fsh.fix_glowing.passenger] run function veer:fsh/fix_glowing/decrement

#TODO: Change mostly to bind vex
#> Init sculk watcher
execute if entity @s[type=snowball,tag=veer.fsh.sculk_watcher.new] run function veer:fsh/sculk_watcher/init

#> Bind tagged vexes to their location
execute if entity @s[type=vex,tag=veer.its.util.bind_vex] run function veer:fsh/util/bind_vex