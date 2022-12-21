##
 # Date: 12/19/22
 # Start raytracing algorithm.
 # Created by Galdeveer.
##

#declare objective veer.fsh.sculk_watcher.cry
#declare score_holder $i Loop counter.
#declare score_holder $seesEntity Whether or not an entity has been found

# Initialize scores
scoreboard players set $i veer.fsh.sculk_watcher.cry 0
scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 0

# If it is glowing, then return successful
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if predicate veer:fsh/is_glowing run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1

# If it is stealthily invisible return failure
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 as @s if predicate veer:fsh/sculk_watcher/is_stealthily_invisible run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

# Start sightline raytracing loop
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 run function veer:fsh/sculk_watcher/cry/trace_loop

# Returns 0 by default. Any other return value also ends execution.
execute unless score $seesEntity veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 0