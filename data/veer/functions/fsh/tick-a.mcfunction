##
 # tick-1.mcfunction
 # 
 # Created by Galdeveer.
##

#declare tag veer.fsh.passenger.hasBobber

execute as @s[type=bat,tag=veer.fsh.sculk_watcher,predicate=veer:fsh/is_glowing] run function veer:fsh/sculk_watcher/fix_glowing
execute as @s[type=vex,tag=veer.fsh.end_watcher,predicate=veer:fsh/is_glowing] run function veer:fsh/end_watcher/fix_glowing
