##
 # schedule_10t.mcfunction
 # 
 #
 # Created by Galdeveer.
##

schedule function veer:its/schedule_10t 10t

# Sculk eye alarm sound
execute as @e[type=snowball,tag=veer.its.sculk_watcher,tag=!veer.its.sculk_watcher.new] run function veer:its/sculk_watcher/sound
