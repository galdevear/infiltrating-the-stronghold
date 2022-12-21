##
 # Date: 12/20/22
 # Created by Galdeveer.
##

#> New Entity Detection
#declare tag veer.fsh.new
#declare tag veer.fsh

tag @s remove veer.fsh.new
tag @s[tag=!veer.fsh] add veer.fsh.new
tag @s[tag=!veer.fsh] add veer.fsh

#> Silverfish
# Also includes silverfish queen endermite spawning. (any silverfish in stronghold)
execute if entity @s[type=silverfish, tag=veer.fsh.new,tag=!global.ignore,tag=!global.ignore.pos] run function veer:fsh/silverfish/init

#> Watcher Spawning
# Swap some new spawns with a pair of watchers
execute if entity @s[type=#veer:fsh/watcher_pair/replaceable,tag=veer.fsh.new,tag=!global.ignore,tag=!global.ignore.pos,predicate=veer:fsh/in_stronghold] run function veer:fsh/watcher_pair/detect_replaceable

#> Stealth Mechanics
execute if entity @s[type=snowball,tag=veer.fsh.sculk_watcher] run function veer:fsh/sculk_watcher/cry/battlecry

#> Potion effect tears
# Obsidian Watcher
execute if entity @s[type=ender_pearl,tag=veer.fsh.obsidian_watcher] run function veer:fsh/obsidian_watcher/attack
# End Watcher
execute if entity @s[type=ender_pearl,tag=veer.fsh.end_watcher] run function veer:fsh/end_watcher/attack

#> Removing glowing from 2dproj
execute if entity @s[type=#veer:fsh/fix_glowing/passengers, tag=veer.fsh.fix_glowing.passenger] if score @s veer.fsh.glowTimer matches 0.. run function veer:fsh/fix_glowing/decrement


#TODO: Change mostly  to bind vex
#> Init new watchers
execute if entity @s[type=snowball,tag=veer.fsh.sculk_watcher.new] run function veer:fsh/sculk_watcher/init
execute if entity @s[type=vex,tag=veer.fsh.end_watcher.new] run function veer:fsh/end_watcher/init
execute if entity @s[type=vex,tag=veer.fsh.obsidian_watcher.new] run function veer:fsh/obsidian_watcher/init
