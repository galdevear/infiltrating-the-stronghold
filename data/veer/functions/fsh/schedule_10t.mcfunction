##
 # schedule_10t.mcfunction
 # 
 #
 # Created by Galdeveer.
##

schedule function veer:fsh/schedule_10t 10t

# Sculk eye weeping in fear
# @e[type=snowball,tag=veer.fsh.sculk_watcher]
execute as @e[type=snowball,tag=veer.fsh.sculk_watcher,tag=!veer.fsh.sculk_watcher.new] run function veer:fsh/sculk_watcher/cry/sound
