##
 # schedule_10t.mcfunction
 # 
 #
 # Created by Galdeveer.
##

schedule function veer:fsh/schedule_10t 10t

# Sculk eye alarm sound
execute as @e[type=snowball,tag=veer.fsh.sculk_watcher,tag=!veer.fsh.sculk_watcher.new] run function veer:fsh/sculk_watcher/sound
