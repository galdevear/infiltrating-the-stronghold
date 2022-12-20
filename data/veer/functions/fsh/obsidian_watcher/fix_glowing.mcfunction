##
 # fix_glowing.mcfunction
 # Version 1
 #
 # Created by Galdeveer.
##

effect clear @s glowing
execute at @s as @e[type=ender_pearl, distance=..1, tag=veer.fsh.obsidian_watcher, limit=1] run data modify entity @s Glowing set value 1b
execute at @s as @e[type=ender_pearl, distance=..1, tag=veer.fsh.obsidian_watcher, limit=1] run scoreboard players set @s veer.fsh.gloTimer 9