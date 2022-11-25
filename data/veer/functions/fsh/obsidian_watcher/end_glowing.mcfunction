##
 # fix_glowing.mcfunction
 # Version 1
 #
 # Created by Galdeveer.
##

execute if score @s veerFsh.gloTimer matches -1 run data modify entity @s Glowing set value 0b
scoreboard players remove @s veerFsh.gloTimer 1