##
 # Date: 12/19/22
 # Start raytracing algorithm.
 # Created by Galdeveer.
##

#declare objective veer.its.sculk_watcher.cry
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
#declare score_holder $upOld
#declare score_holder $downOld
#declare score_holder $leftDownOld
#declare score_holder $rightDownOld
#declare score_holder $leftUpOld
#declare score_holder $rightUpOld

# Initialize scores
scoreboard players set $steps veer.its.sculk_watcher.cry 0
scoreboard players set $seesEntity veer.its.sculk_watcher.cry 0
scoreboard players set $lxPosOld veer.its.sculk_watcher.cry 0
scoreboard players set $lxNegOld veer.its.sculk_watcher.cry 0
scoreboard players set $lxPosOld veer.its.sculk_watcher.cry 0
scoreboard players set $lyNegOld veer.its.sculk_watcher.cry 0
scoreboard players set $upOld veer.its.sculk_watcher.cry 0
scoreboard players set $downOld veer.its.sculk_watcher.cry 0
scoreboard players set $leftDownOld veer.its.sculk_watcher.cry 0
scoreboard players set $leftUpOld veer.its.sculk_watcher.cry 0
scoreboard players set $rightDownOld veer.its.sculk_watcher.cry 0
scoreboard players set $rightUpOld veer.its.sculk_watcher.cry 0

# If it is glowing, then return successful
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 if predicate veer:its/is_glowing run scoreboard players set $seesEntity veer.its.sculk_watcher.cry 1

# If it is stealthily invisible return failure
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 as @s if predicate veer:its/sculk_watcher/is_stealthily_invisible run scoreboard players set $seesEntity veer.its.sculk_watcher.cry -1

# Start sightline raytracing loop
execute if score $seesEntity veer.its.sculk_watcher.cry matches 0 run function veer:its/sculk_watcher/cry/trace_loop

# Returns 0 by default. Any other return value also ends execution.
execute unless score $seesEntity veer.its.sculk_watcher.cry matches 1 run scoreboard players set $seesEntity veer.its.sculk_watcher.cry 0