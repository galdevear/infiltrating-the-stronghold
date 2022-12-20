##
 # Date: 12/19/22
 # Start raytracing algorithm.
 # Created by Galdeveer.
##

#>@private
#declare objective veer.fsh.swc
#declare score_holder $i Loop counter.
#declare score_holder $seesEntity Whether or not an entity has been found

# Initialize scores
scoreboard players set $i veer.fsh.swc 0
scoreboard players set $seesEntity veer.fsh.swc 0

# If it is glowing, then return successful
execute if score $seesEntity veer.fsh.swc matches 0 if predicate veer:fsh/is_glowing run scoreboard players set $seesEntity veer.fsh.swc 1

# If it is stealthily invisible return failure
execute if score $seesEntity veer.fsh.swc matches 0 as @s[type=player] if predicate veer:fsh/sculk_watcher/is_stealthily_invisible_player run scoreboard players set $seesEntity veer.fsh.swc -1
execute if score $seesEntity veer.fsh.swc matches 0 as @s[type=!player] if predicate veer:fsh/sculk_watcher/is_stealthily_invisible_nonplayer run scoreboard players set $seesEntity veer.fsh.swc -1

# Start sightline raytracing loop
execute if score $seesEntity veer.fsh.swc matches 0 run function veer:fsh/sculk_watcher/cry/trace_loop

# Returns 0 by default. Any other return value also ends execution.
execute unless score $seesEntity veer.fsh.swc matches 1 run scoreboard players set $seesEntity veer.fsh.swc 0