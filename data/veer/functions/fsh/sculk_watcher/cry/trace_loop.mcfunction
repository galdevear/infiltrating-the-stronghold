##
 # ray_trace_for_player.mcfunction
 # Recursive loop that checks for a ray along the vector
 #
 # Created by Galdeveer.
##

# TODO: Check if the player is crouching
# TODO: Check if the player is crawling?

#alias vector eyeToFeetAvgOffset ~ ~-0.8 ~

#> Increment loop counter
# Due to immediate increment, starting value is changed to 1 instead of 0.
# Increment 1 every loop
scoreboard players add $i veer.fsh.swc 1
# Continue if you have not passed ten or the block is still see through
#> Cases
# Success Case
execute positioned ~ ~-0.8 ~ if entity @s[distance=..1] run scoreboard players set $continue veer.fsh.swc 0
execute if score $continue veer.fsh.swc matches 0 unless block ^-1 ^ ^ #veer:fsh/seethrough unless block ^1 ^ ^ #veer:fsh/seethrough run scoreboard players set $continue veer.fsh.swc 1
# Base case
execute if score $i veer.fsh.swc matches 21.. run scoreboard players set $continue veer.fsh.swc -1
execute if score $i veer.fsh.swc matches 9.. positioned ~ ~-0.8 ~ as @s[predicate=veer:fsh/is_stealthy] run scoreboard players set $continue veer.fsh.swc -1
execute unless block ~ ~ ~ #veer:fsh/seethrough run scoreboard players set $continue veer.fsh.swc -1
execute if score $continue veer.fsh.swc matches 1 positioned ^ ^ ^1 run function veer:fsh/sculk_watcher/cry/trace_loop
#> Exit.
# Successful if continue = 0
# Fail if continue = -1
# Success means the player is visible. 

# Ray tracing debug line
# particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 1 0 normal