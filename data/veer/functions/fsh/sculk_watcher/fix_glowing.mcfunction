##
 # fix_glowing.mcfunction
 # Version 1
 #
 # Created by Galdeveer.
##

effect clear @s glowing
execute at @s as @e[type=snowball, tag=veer.fsh.sculk_watcher, distance=..1, limit=1] run data modify entity @s Glowing set value 1b
execute at @s as @e[type=snowball, tag=veer.fsh.sculk_watcher, distance=..1, limit=1] run scoreboard players set @s veerFsh.gloTimer 9
# TODO: Check duration