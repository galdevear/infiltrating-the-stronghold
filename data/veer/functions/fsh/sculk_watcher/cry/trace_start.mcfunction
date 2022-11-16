##
 # ray_trace_for_player.mcfunction
 # Version 1
 # Start raytracing algorithm. 
 #declare score_holder $retVal Value to return to caller
 # Created by Galdeveer.
##

#>@private
#declare objective veer.fsh.swc
#declare score_holder $i Loop counter. 0 to 10.
#declare score_holder $continue 1 = continue. 0 = finish. -1 = fail & finish 
#declare tag veer.fsh.sculk_watcher.cry.trace_start.autoDetect

# Initialize/reset values
scoreboard players set $i veer.fsh.swc 0
scoreboard players set $retVal veer.fsh.swc 0
scoreboard players set $continue veer.fsh.swc 1

# Reset tags
tag @s remove veer.fsh.sculk_watcher.cry.trace_start.autoDetect

# Check if you can be seen through walls
execute if predicate veer:fsh/is_glowing run tag @s add veer.fsh.sculk_watcher.cry.trace_start.autoDetect
# Auto success
execute if entity @s[tag=veer.fsh.sculk_watcher.cry.trace_start.autoDetect] run scoreboard players set $continue veer.fsh.swc 0

# Start looping
execute if entity @s[tag=!veer.fsh.sculk_watcher.cry.trace_start.autoDetect] run function veer:fsh/sculk_watcher/cry/trace_loop

# Return continue via retVal
scoreboard players operation $retVal veer.fsh.swc = $continue veer.fsh.swc