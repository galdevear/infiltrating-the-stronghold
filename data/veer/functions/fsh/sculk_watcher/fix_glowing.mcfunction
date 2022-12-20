##
 # Date: 12/20/22
 #
 # Created by Galdeveer.
##

effect clear @s glowing
execute at @s as @e[type=snowball, tag=veer.fsh.sculk_watcher, distance=..1, limit=1] run data modify entity @s Glowing set value 1b
execute at @s as @e[type=snowball, tag=veer.fsh.sculk_watcher, distance=..1, limit=1] run scoreboard players set @s veer.fsh.gloTimer 9
# TODO: Check duration