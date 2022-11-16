##
 # schedule-b.mcfunction
 # version 1
 #
 # Created by Galdeveer.
##

#> Init new watchers
execute as @s[type=snowball,tag=veer.fsh.sculk_watcher.new] run function veer:fsh/sculk_watcher/init
execute as @s[type=vex,tag=veer.fsh.end_watcher.new] run function veer:fsh/end_watcher/init

#> Init battlecryer
# actually can't do that since I need it to spawn at a y level different than I need to store in it