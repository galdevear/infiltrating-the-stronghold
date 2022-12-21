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
execute as @s[type=silverfish, tag=veer.fsh.new,tag=!global.ignore,tag=!global.ignore.pos] run function veer:fsh/silverfish/init

#> Watcher Spawning
# Swap some new spawns with a pair of watchers
execute as @s[type=#veer:fsh/watcher_pair/replaceable,tag=veer.fsh.new,tag=!global.ignore,tag=!global.ignore.pos,predicate=veer:fsh/in_stronghold] run function veer:fsh/watcher_pair/detect_replaceable

#> Stealth Mechanics
execute as @s[type=snowball,tag=veer.fsh.sculk_watcher] run function veer:fsh/sculk_watcher/cry/battlecry

#> Potion effect tears
#   Obsidian Watcher
execute as @s[type=ender_pearl,tag=veer.fsh.obsidian_watcher] run function veer:fsh/obsidian_watcher/attack
#   End Watcher
execute as @s[type=ender_pearl,tag=veer.fsh.end_watcher] run function veer:fsh/end_watcher/attack

#TODO: Change to fix_glowing
#> Removing glowing from 2dproj
execute as @s[type=snowball,tag=veer.fsh.sculk_watcher] run function veer:fsh/sculk_watcher/end_glowing
execute as @s[type=ender_pearl,tag=veer.fsh.end_watcher] run function veer:fsh/end_watcher/end_glowing
execute as @s[type=ender_pearl,tag=veer.fsh.obsidian_watcher] run function veer:fsh/obsidian_watcher/end_glowing

#TODO: Change mostly  to bind vex
#> Init new watchers
execute as @s[type=snowball,tag=veer.fsh.sculk_watcher.new] run function veer:fsh/sculk_watcher/init
execute as @s[type=vex,tag=veer.fsh.end_watcher.new] run function veer:fsh/end_watcher/init
execute as @s[type=vex,tag=veer.fsh.obsidian_watcher.new] run function veer:fsh/obsidian_watcher/init
