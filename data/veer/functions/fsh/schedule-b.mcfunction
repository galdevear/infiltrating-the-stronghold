##
 # schedule-b.mcfunction
 # version 1
 #
 # Created by Galdeveer.
##

#> Init new watchers
execute as @s[type=snowball,tag=veer.fsh.sculk_watcher.new] run function veer:fsh/sculk_watcher/init
execute as @s[type=vex,tag=veer.fsh.end_watcher.new] run function veer:fsh/end_watcher/init
execute as @s[type=vex,tag=veer.fsh.obsidian_watcher.new] run function veer:fsh/obsidian_watcher/init