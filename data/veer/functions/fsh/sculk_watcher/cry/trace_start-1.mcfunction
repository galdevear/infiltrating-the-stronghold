##
 # Date: 12/19/22
 # Start raytracing algorithm.
 # Created by Galdeveer.
##

#declare objective veer.fsh.sculk_watcher.cry
#declare score_holder $steps Loop counter.
#declare score_holder $seesEntity Whether or not an entity has been found

#declare score_holder $lxPos
#declare score_holder $lxPosOld
#declare score_holder $lxNeg
#declare score_holder $lxNegOld
#declare score_holder $lyPos
#declare score_holder $lyPosOld
#declare score_holder $lyNeg
#declare score_holder $lyNegOld

# Initialize scores
scoreboard players set $steps veer.fsh.sculk_watcher.cry 0
scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 0
# scoreboard players set $lxPosOld veer.fsh.sculk_watcher.cry 0
# scoreboard players set $lxNegOld veer.fsh.sculk_watcher.cry 0
# scoreboard players set $lxPosOld veer.fsh.sculk_watcher.cry 0
# scoreboard players set $lyNegOld veer.fsh.sculk_watcher.cry 0

# If it is glowing, then return successful
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 if predicate veer:fsh/is_glowing run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 1

# If it is stealthily invisible return failure
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 as @s if predicate veer:fsh/sculk_watcher/is_stealthily_invisible run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry -1

# Start sightline raytracing loop
execute if score $seesEntity veer.fsh.sculk_watcher.cry matches 0 run function veer:fsh/sculk_watcher/cry/trace_loop

# Returns 0 by default. Any other return value also ends execution.
execute unless score $seesEntity veer.fsh.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.fsh.sculk_watcher.cry 0